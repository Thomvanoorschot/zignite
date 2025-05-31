const std = @import("std");
const Build = std.Build;

pub const Backend = enum {
    no_backend,
    glfw_wgpu,
    glfw_opengl3,
    glfw_vulkan,
    glfw_dx12,
    win32_dx12,
    glfw,
    sdl2_opengl3,
    osx_metal,
    sdl2,
    sdl3,
    sdl3_gpu,
    sdl3_opengl3,
};

const cflags = &.{
    "-fno-sanitize=undefined",
    "-Wno-elaborated-enum-base",
    "-Wno-error=date-time",
};

pub const IMGUI_C_DEFINES: []const [2][]const u8 = &.{
    .{ "IMGUI_IMPL_API", "extern \"C\"" },
};

const Options = struct {
    backend: Backend,
    with_imgui: bool,
    with_implot: bool,
};

pub fn build(
    b: *Build,
) void {
    var target_query = b.standardTargetOptionsQueryOnly(.{});
    if (target_query.os_tag == .emscripten) {
        target_query.cpu_features_add = std.Target.wasm.featureSet(&.{
            .atomics,
            .bulk_memory,
        });
    }
    const target = b.resolveTargetQuery(target_query);

    const optimize = b.standardOptimizeOption(.{});

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

    const maybe_activate_emsdk = try ensureEmsdkInstalled(
        b,
        emsdk,
    );
    if (maybe_activate_emsdk) |activateStep| {
        zignite.step.dependOn(&activateStep.step);
        const embuilder_path = emSdkLazyPath(
            b,
            emsdk,
            &.{ "upstream", "emscripten", "embuilder" },
        ).getPath(b);

        const embuilder = b.addSystemCommand(&.{embuilder_path});
        embuilder.step.dependOn(&activateStep.step);
        embuilder.setCwd(emsdk.path("."));

        // Set all the necessary emsdk environment variables
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

    const options = Options{
        .backend = b.option(Backend, "backend", "") orelse .glfw_wgpu,
        .with_imgui = b.option(bool, "with_imgui", "") orelse true,
        .with_implot = b.option(bool, "with_implot", "") orelse true,
    };
    if (options.with_imgui) {
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
    }

    if (options.with_implot) {
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

    const isEmscripten = target.result.os.tag == .emscripten;
    switch (options.backend) {
        .glfw_wgpu => {
            if (!isEmscripten) {
                // zignite.addIncludePath(.{ .cwd_relative = "libs/wgpu" });

                // zignite.addCSourceFile(.{ .file = b.path("libs/wgpu/lib_webgpu_cpp20.cpp"), .flags = &.{""} });
                // zignite.addCSourceFile(.{ .file = b.path("libs/wgpu/lib_webgpu.cpp"), .flags = &.{""} });
            }

            if (options.with_imgui) {
                zignite.addCSourceFile(.{
                    .file = b.path("libs/imgui/backends/imgui_impl_glfw.cpp"),
                    .flags = cflags,
                });
                zignite.addCSourceFile(.{
                    .file = b.path("libs/imgui/backends/imgui_impl_wgpu.cpp"),
                    .flags = cflags,
                });
            }
        },
        else => unreachable,
    }
    b.installArtifact(zignite);
}

fn emSdkSetupStep(b: *Build, emsdk: *Build.Dependency) !?*Build.Step.Run {
    const emsdk_install = createEmsdkStep(b, emsdk);
    emsdk_install.addArgs(&.{ "install", "latest" });
    const emsdk_activate = createEmsdkStep(b, emsdk);
    emsdk_activate.addArgs(&.{ "activate", "latest" });
    emsdk_activate.step.dependOn(&emsdk_install.step);
    return emsdk_activate;
}

// -------------------------------------------------------------------
// (B) ‒ New public helper that just forwards to emSdkSetupStep.
//     Downstream projects will call this directly.
// -------------------------------------------------------------------
pub fn ensureEmsdkInstalled(
    b: *Build,
    emsdk: *Build.Dependency,
) !?*Build.Step.Run {
    return emSdkSetupStep(b, emsdk);
}

fn createEmsdkStep(b: *Build, emsdk: *Build.Dependency) *Build.Step.Run {
    const step = b.addSystemCommand(&.{"bash"});
    step.addArg(emSdkLazyPath(b, emsdk, &.{"emsdk"}).getPath(b));
    return step;
}

fn emSdkLazyPath(b: *Build, emsdk: *Build.Dependency, subPaths: []const []const u8) Build.LazyPath {
    return emsdk.path(b.pathJoin(subPaths));
}

pub const EmLinkOptions = struct {
    emsdk: *Build.Dependency,
    shell_file_path: ?Build.LazyPath,
    b_options: EmOptions,
};
pub fn emLinkStep(
    b: *Build,
    l_options: EmLinkOptions,
) !*Build.Step.InstallDir {
    const emcc_path = emSdkLazyPath(b, l_options.emsdk, &.{ "upstream", "emscripten", "emcc" }).getPath(b);
    const emcc = b.addSystemCommand(&.{emcc_path});
    emcc.setName("emcc"); // hide emcc path

    if (l_options.b_options.optimize == .Debug) {
        emcc.addArgs(&.{ "-Og", "-sSAFE_HEAP=1", "-sSTACK_OVERFLOW_CHECK=1", "-sASSERTIONS=1" });
    } else {
        emcc.addArg("-sASSERTIONS=0");
        if (l_options.b_options.optimize == .ReleaseSmall) {
            emcc.addArg("-Oz");
        } else {
            emcc.addArg("-O3");
        }
        if (l_options.b_options.release_use_lto) {
            emcc.addArg("-flto");
        }
        if (l_options.b_options.release_use_closure) {
            emcc.addArgs(&.{ "--closure", "1" });
        }
    }

    emcc.addArg("-pthread");
    emcc.addArg(b.fmt("-sPTHREAD_POOL_SIZE={d}", .{1}));

    emcc.addArg("-sERROR_ON_UNDEFINED_SYMBOLS=0");
    emcc.addArg("-sALLOW_MEMORY_GROWTH=1");
    emcc.addArg("-sASYNCIFY");
    emcc.addArg("-sMEMORY64=1");
    if (l_options.b_options.use_webgpu) {
        emcc.addArg("-sUSE_WEBGPU=1");
    }
    if (l_options.b_options.use_glfw) {
        emcc.addArg("--use-port=contrib.glfw3");
    }
    if (!l_options.b_options.use_filesystem) {
        emcc.addArg("-sNO_FILESYSTEM=1");
    }
    if (l_options.shell_file_path) |shell_file_path| {
        emcc.addPrefixedFileArg("--shell-file=", shell_file_path);
    }
    for (l_options.b_options.extra_args) |arg| {
        emcc.addArg(arg);
    }

    emcc.addArtifactArg(l_options.b_options.lib_main);
    for (l_options.b_options.lib_main.getCompileDependencies(false)) |item| {
        if (item.kind == .lib) {
            emcc.addArtifactArg(item);
        }
    }
    if (l_options.b_options.optimize == .Debug or l_options.b_options.optimize == .ReleaseSafe) {
        emcc.addArgs(&[_][]const u8{
            "-sUSE_OFFSET_CONVERTER",
            "-sASSERTIONS",
        });
    }

    emcc.addArg("-o");
    const out_file = emcc.addOutputFileArg(b.fmt("{s}.html", .{l_options.b_options.lib_main.name}));

    const install = b.addInstallDirectory(.{
        .source_dir = out_file.dirname(),
        .install_dir = .prefix,
        .install_subdir = "web",
    });
    install.step.dependOn(&emcc.step);
    return install;
}

pub const EmOptions = struct {
    target: Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    zignite_dep: *Build.Dependency,
    name: []const u8,
    browser: ?[]const u8 = "chrome",
    lib_main: *Build.Step.Compile,
    release_use_closure: bool = true,
    release_use_lto: bool = true,
    use_webgpu: bool = false,
    use_glfw: bool = false,
    use_filesystem: bool = true,
    extra_args: []const []const u8 = &.{},
};
pub fn emRunStep(b: *Build, options: EmOptions) !void {
    const emsdk = options.zignite_dep.builder.dependency("emsdk", .{});

    const link_step = try emLinkStep(b, .{
        .b_options = options,
        .emsdk = emsdk,
        .shell_file_path = options.zignite_dep.path("web/shell.html"),
    });

    b.getInstallStep().dependOn(&link_step.step);

    const emrun_path = b.findProgram(&.{"emrun"}, &.{}) catch emSdkLazyPath(
        b,
        emsdk,
        &.{ "upstream", "emscripten", "emrun" },
    ).getPath(b);

    const emrun = b.addSystemCommand(&.{emrun_path});

    if (options.browser) |browser| {
        emrun.addArgs(&.{ "--browser", browser });
    }

    emrun.addArg(b.fmt("{s}/web/{s}.html", .{ b.install_path, options.name }));
    emrun.step.dependOn(&link_step.step);

    b.step(options.name, "").dependOn(&emrun.step);
}
