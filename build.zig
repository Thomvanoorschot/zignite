const std = @import("std");
const Build = std.Build;

const cflags = &.{
    "-fno-sanitize=undefined",
    "-Wno-elaborated-enum-base",
    "-Wno-error=date-time",
};

pub const IMGUI_C_DEFINES: []const [2][]const u8 = &.{
    .{ "IMGUI_IMPL_API", "extern \"C\"" },
};

pub var defaultWithImgui: bool = true;
pub var defaultWithImplot: bool = true;
pub var defaultUseGLFW: bool = true;
pub var defaultUseWebGPU: bool = true;
pub var defaultUseFilesystem: bool = true;
pub var defaultTarget: Build.ResolvedTarget = undefined;
pub var defaultBrowser: []const u8 = "chrome";
pub var defaultCpuArg: std.Target.Cpu.Arch = .wasm64;
pub var defaultOptimize: std.builtin.OptimizeMode = .ReleaseSmall;
pub var defaultReleaseUseLTO: bool = true;
pub var defaultReleaseUseClosure: bool = true;
pub var defaultUseWebsockets: bool = false;

pub fn build(b: *Build) !void {
    var target_query = b.standardTargetOptionsQueryOnly(.{});
    if (target_query.os_tag == .emscripten) {
        target_query.cpu_features_add = std.Target.wasm.featureSet(&.{
            .atomics,
            .bulk_memory,
        });
    } else {
        // TODO I ran into the issue where ZLS would crash if the downstream project had not set emscripten as the default target.
        // Probably want to do this in some other way to prevent this.
        return error.UnsupportedOS;
    }
    const target = b.resolveTargetQuery(target_query);
    const optimize = b.standardOptimizeOption(.{});

    const with_imgui: bool =
        b.option(bool, "with_imgui", "Enable ImGui support") orelse true;
    const with_implot: bool =
        b.option(bool, "with_implot", "Enable ImPlot support") orelse true;

    const use_glfw: bool =
        b.option(bool, "use_glfw", "Enable GLFW in Emscripten") orelse false;
    const use_webgpu: bool =
        b.option(bool, "use_webgpu", "Enable WebGPU in Emscripten") orelse true;
    const use_filesystem: bool =
        b.option(bool, "use_filesystem", "Enable file system support in Emscripten") orelse true;
    const browser: []const u8 =
        b.option([]const u8, "browser", "Browser to use for emrun") orelse "chrome";
    const release_use_lto: bool =
        b.option(bool, "release_use_lto", "Enable LTO in release builds") orelse true;
    const release_use_closure: bool =
        b.option(bool, "release_use_closure", "Enable Closure compiler in release builds") orelse true;
    const use_websockets: bool =
        b.option(bool, "use_websockets", "Enable websockets support in Emscripten") orelse false;

    defaultWithImgui = with_imgui;
    defaultWithImplot = with_implot;
    defaultUseGLFW = use_glfw;
    defaultUseWebGPU = use_webgpu;
    defaultUseFilesystem = use_filesystem;
    defaultBrowser = browser;
    defaultOptimize = optimize;
    defaultTarget = target;
    defaultReleaseUseLTO = release_use_lto;
    defaultReleaseUseClosure = release_use_closure;
    defaultUseWebsockets = use_websockets;

    if (target_query.cpu_arch != null) {
        defaultCpuArg = target_query.cpu_arch.?;
    }
    const zignite_mod = b.addModule("zignite", .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });
    const zignite = b.addLibrary(.{
        .name = "zignite",
        .root_module = zignite_mod,
        .linkage = .static,
    });

    zignite.linkLibCpp();
    zignite.linkLibC();

    const emsdk = b.dependency("emsdk", .{});
    if (emSdkSetupStep(b, emsdk)) |activateStep| {
        zignite.step.dependOn(&activateStep.step);
        const embuilder_path = emSdkLazyPath(b, emsdk, &.{ "upstream", "emscripten", "embuilder" }).getPath(b);
        const embuilder = b.addSystemCommand(&.{embuilder_path});
        embuilder.step.dependOn(&activateStep.step);

        const emsdk_root = emsdk.path(".").getPath(b);
        embuilder.setEnvironmentVariable("EMSDK", emsdk_root);
        embuilder.setEnvironmentVariable("EMSCRIPTEN", b.pathJoin(&.{ emsdk_root, "upstream", "emscripten" }));
        embuilder.setEnvironmentVariable("EM_CONFIG", b.pathJoin(&.{ emsdk_root, ".emscripten" }));
        embuilder.setEnvironmentVariable("EM_CACHE", b.pathJoin(&.{ emsdk_root, "upstream", "emscripten", "cache" }));
        embuilder.addArgs(&.{ "build", "contrib.glfw3" });
        zignite.step.dependOn(&embuilder.step);
    }
    const emsdk_include_path = emsdk.path(b.pathJoin(&.{ "upstream", "emscripten", "cache", "sysroot", "include" }));
    zignite.addSystemIncludePath(emsdk_include_path);

    if (with_imgui) {
        zignite.addIncludePath(b.path("libs/imgui"));
        zignite.addIncludePath(b.path("libs/imgui/backends"));
        for (IMGUI_C_DEFINES) |c_define| {
            zignite.root_module.addCMacro(c_define[0], c_define[1]);
        }
        zignite.addCSourceFiles(.{
            .files = &.{
                "libs/cimgui.cpp",
                "libs/cimgui_impl.cpp",
                "libs/imgui/imgui.cpp",
                "libs/imgui/imgui_widgets.cpp",
                "libs/imgui/imgui_tables.cpp",
                "libs/imgui/imgui_draw.cpp",
                "libs/imgui/imgui_demo.cpp",
            },
            .flags = cflags,
        });
        zignite.addCSourceFile(.{
            .file = b.path("libs/imgui/backends/imgui_impl_glfw.cpp"),
            .flags = cflags,
        });
        zignite.addCSourceFile(.{
            .file = b.path("libs/imgui/backends/imgui_impl_wgpu.cpp"),
            .flags = cflags,
        });
    }

    if (with_implot) {
        zignite.addIncludePath(b.path("libs/implot"));
        zignite.addCSourceFiles(.{
            .files = &.{
                "libs/cimplot.cpp",
                "libs/implot/implot_demo.cpp",
                "libs/implot/implot.cpp",
                "libs/implot/implot_items.cpp",
            },
            .flags = cflags,
        });
    }

    b.installArtifact(zignite);
}

fn emSdkSetupStep(b: *Build, emsdk: *Build.Dependency) ?*Build.Step.Run {
    const emsdk_install = createEmsdkStep(b, emsdk);
    emsdk_install.addArgs(&.{ "install", "latest" });
    const emsdk_activate = createEmsdkStep(b, emsdk);
    emsdk_activate.addArgs(&.{ "activate", "latest" });
    emsdk_activate.step.dependOn(&emsdk_install.step);
    return emsdk_activate;
}

fn createEmsdkStep(b: *Build, emsdk: *Build.Dependency) *Build.Step.Run {
    const step = b.addSystemCommand(&.{"bash"});
    step.addArg(emSdkLazyPath(b, emsdk, &.{"emsdk"}).getPath(b));
    return step;
}

fn emSdkLazyPath(b: *Build, emsdk: *Build.Dependency, subPaths: []const []const u8) Build.LazyPath {
    return emsdk.path(b.pathJoin(subPaths));
}

pub fn emRunStep(b: *Build, args: struct {
    name: []const u8,
    zignite_dep: *Build.Dependency,
    lib_main: *Build.Step.Compile,
}) void {
    const emsdk = args.zignite_dep.builder.dependency("emsdk", .{});
    const link_step = emLinkStep(b, args.zignite_dep, args.lib_main);

    b.getInstallStep().dependOn(&link_step.step);

    const emrun_path = b.findProgram(&.{"emrun"}, &.{}) catch emSdkLazyPath(
        b,
        emsdk,
        &.{ "upstream", "emscripten", "emrun" },
    ).getPath(b);

    const emrun = b.addSystemCommand(&.{emrun_path});
    emrun.addArgs(&.{ "--browser", defaultBrowser });
    // (Here you could also pull “defaultBrowser” from a b.option, if desired.)
    emrun.addArg(b.fmt("{s}/web/{s}.html", .{ b.install_path, args.name }));
    emrun.step.dependOn(&link_step.step);

    return b.step(args.name, "").dependOn(&emrun.step);
}

pub fn emLinkStep(b: *Build, zignite_dep: *Build.Dependency, lib_main: *Build.Step.Compile) *Build.Step.InstallDir {
    const emsdk = zignite_dep.builder.dependency("emsdk", .{});
    const emcc_path = emSdkLazyPath(b, emsdk, &.{ "upstream", "emscripten", "emcc" }).getPath(b);
    const emcc = b.addSystemCommand(&.{emcc_path});
    emcc.setName("emcc");

    if (defaultOptimize == .Debug) {
        emcc.addArgs(&.{ "-Og", "-sSAFE_HEAP=1", "-sSTACK_OVERFLOW_CHECK=1", "-sASSERTIONS=1" });
    } else {
        emcc.addArg("-sASSERTIONS=0");
        if (defaultOptimize == .ReleaseSmall) {
            emcc.addArg("-Oz");
        } else {
            emcc.addArg("-O3");
        }
        if (defaultReleaseUseLTO) {
            emcc.addArg("-flto");
        }
        if (defaultReleaseUseClosure) {
            emcc.addArgs(&.{ "--closure", "1" });
        }
    }

    emcc.addArg("-pthread");
    emcc.addArg(b.fmt("-sPTHREAD_POOL_SIZE={d}", .{1}));
    emcc.addArg("-sERROR_ON_UNDEFINED_SYMBOLS=0");
    emcc.addArg("-sALLOW_MEMORY_GROWTH=1");
    emcc.addArg("-sASYNCIFY");
    emcc.addArg("-sUSE_OFFSET_CONVERTER");

    if (defaultUseWebsockets) {
        emcc.addArgs(&.{"-lwebsocket.js"});
    }
    if (defaultCpuArg == .wasm64) {
        emcc.addArg("-sMEMORY64=1");
    }
    if (defaultUseWebGPU) {
        emcc.addArg("-sUSE_WEBGPU=1");
    }
    if (defaultUseGLFW) {
        emcc.addArg("--use-port=contrib.glfw3");
    }
    if (!defaultUseFilesystem) {
        emcc.addArg("-sNO_FILESYSTEM=1");
    }
    emcc.addPrefixedFileArg("--shell-file=", zignite_dep.path("web/shell.html"));
    emcc.addArg("-sASSERTIONS");
    emcc.addArtifactArg(lib_main);
    for (lib_main.getCompileDependencies(false)) |item| {
        if (item.kind == .lib) {
            emcc.addArtifactArg(item);
        }
    }

    emcc.addArg("-o");
    const out_file = emcc.addOutputFileArg(b.fmt("{s}.html", .{lib_main.name}));

    const install = b.addInstallDirectory(.{
        .source_dir = out_file.dirname(),
        .install_dir = .prefix,
        .install_subdir = "web",
    });
    install.step.dependOn(&emcc.step);
    return install;
}
