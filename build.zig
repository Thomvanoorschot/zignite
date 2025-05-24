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

const Options = struct {
    backend: Backend,
};

pub fn build(
    b: *Build,
) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const emsdk = b.dependency("emsdk", .{});

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

    const options = Options{
        .backend = b.option(Backend, "backend", "") orelse .glfw_wgpu,
    };

    zignite.addIncludePath(b.path("libs/imgui"));
    zignite.addCSourceFile(.{ .file = b.path("libs/imgui/imgui.cpp"), .flags = &.{"-fno-sanitize=undefined"} });
    zignite.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_widgets.cpp"), .flags = &.{"-fno-sanitize=undefined"} });
    zignite.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_tables.cpp"), .flags = &.{"-fno-sanitize=undefined"} });
    zignite.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_draw.cpp"), .flags = &.{"-fno-sanitize=undefined"} });
    zignite.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_demo.cpp"), .flags = &.{"-fno-sanitize=undefined"} });
    zignite.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui.cpp"), .flags = &.{"-fno-sanitize=undefined"} });
    zignite.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui_internal.cpp"), .flags = &.{"-fno-sanitize=undefined"} });

    const emscripten = target.result.os.tag == .emscripten;

    if (emscripten) {
        const emsdk_include_path = emsdk.path(b.pathJoin(&.{ "upstream", "emscripten", "cache", "sysroot", "include" }));

        zignite.addSystemIncludePath(emsdk_include_path);
        if (try emSdkSetupStep(b, emsdk)) |emsdk_setup| {
            zignite.step.dependOn(&emsdk_setup.step);
        }
    }

    switch (options.backend) {
        .glfw_wgpu => {
            if (!emscripten) {
                // zignite.addIncludePath(.{ .cwd_relative = "libs/wgpu" });

                // zignite.addCSourceFile(.{ .file = b.path("libs/wgpu/lib_webgpu_cpp20.cpp"), .flags = &.{""} });
                // zignite.addCSourceFile(.{ .file = b.path("libs/wgpu/lib_webgpu.cpp"), .flags = &.{""} });
            }

            zignite.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_impl_glfw.cpp"), .flags = &.{""} });
            zignite.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_impl_wgpu.cpp"), .flags = &.{""} });
            zignite.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui_impl_glfw.cpp"), .flags = &.{""} });
            zignite.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui_impl_wgpu.cpp"), .flags = &.{""} });
        },
        else => unreachable,
    }
    b.installArtifact(zignite);

    const examples = .{
        "simple_imgui",
    };

    inline for (examples) |example| {
        buildExample(b, example, .{
            .target = target,
            .optimize = optimize,
            .zignite_mod = zignite_mod,
        });
    }
}

const ExampleOptions = struct {
    target: std.Build.ResolvedTarget,
    optimize: std.builtin.Mode,
    zignite_mod: *std.Build.Module,
};

fn buildExample(b: *std.Build, comptime exampleName: []const u8, options: ExampleOptions) void {
    const example_mod = b.addModule(exampleName, .{
        .target = options.target,
        .optimize = options.optimize,
        .root_source_file = b.path("examples/" ++ exampleName ++ ".zig"),
    });
    example_mod.addImport("zignite", options.zignite_mod);

    const example = b.addStaticLibrary(.{
        .name = exampleName,
        .root_module = example_mod,
    });
    example.linkLibC();
    example.root_module.addImport("zignite", options.zignite_mod);

    const emsdk = b.dependency("emsdk", .{});
    const link_step = try emLinkStep(b, .{
        .lib_main = example,
        .target = options.target,
        .optimize = options.optimize,
        .emsdk = emsdk,
        .use_webgpu = true,
        .use_glfw = true,
        .shell_file_path = b.path("web/shell.html"),
        .extra_args = &.{"-fsanitize=undefined"},
    });

    b.getInstallStep().dependOn(&link_step.step);

    const run = emRunStep(b, .{ .name = exampleName, .emsdk = emsdk });
    run.step.dependOn(&link_step.step);
    b.step("run-" ++ exampleName, "Run example " ++ exampleName).dependOn(&run.step);
}

fn emSdkSetupStep(b: *Build, emsdk: *Build.Dependency) !?*Build.Step.Run {
    const dot_emsc_path = emSdkLazyPath(b, emsdk, &.{".emscripten"}).getPath(b);
    const dot_emsc_exists = !std.meta.isError(std.fs.accessAbsolute(dot_emsc_path, .{}));
    if (!dot_emsc_exists) {
        const emsdk_install = createEmsdkStep(b, emsdk);
        emsdk_install.addArgs(&.{ "install", "latest" });
        const emsdk_activate = createEmsdkStep(b, emsdk);
        emsdk_activate.addArgs(&.{ "activate", "latest" });
        emsdk_activate.step.dependOn(&emsdk_install.step);
        return emsdk_activate;
    } else {
        return null;
    }
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
    target: Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    lib_main: *Build.Step.Compile,
    emsdk: *Build.Dependency,
    release_use_closure: bool = true,
    release_use_lto: bool = true,
    use_webgpu: bool = false,
    use_glfw: bool = false,
    use_filesystem: bool = true,
    shell_file_path: ?Build.LazyPath,
    extra_args: []const []const u8 = &.{},
};
pub fn emLinkStep(b: *Build, options: EmLinkOptions) !*Build.Step.InstallDir {
    const emcc_path = emSdkLazyPath(b, options.emsdk, &.{ "upstream", "emscripten", "emcc" }).getPath(b);
    const emcc = b.addSystemCommand(&.{emcc_path});
    emcc.setName("emcc"); // hide emcc path

    if (options.optimize == .Debug) {
        emcc.addArgs(&.{ "-Og", "-sSAFE_HEAP=1", "-sSTACK_OVERFLOW_CHECK=1", "-sASSERTIONS=1" });
    } else {
        emcc.addArg("-sASSERTIONS=0");
        if (options.optimize == .ReleaseSmall) {
            emcc.addArg("-Oz");
        } else {
            emcc.addArg("-O3");
        }
        if (options.release_use_lto) {
            emcc.addArg("-flto");
        }
        if (options.release_use_closure) {
            emcc.addArgs(&.{ "--closure", "1" });
        }
    }
    emcc.addArg("-sALLOW_MEMORY_GROWTH=1");
    emcc.addArg("-sASYNCIFY");
    if (options.use_webgpu) {
        emcc.addArg("-sUSE_WEBGPU=1");
    }
    if (options.use_glfw) {
        emcc.addArg("--use-port=contrib.glfw3");
    }
    if (!options.use_filesystem) {
        emcc.addArg("-sNO_FILESYSTEM=1");
    }
    if (options.shell_file_path) |shell_file_path| {
        emcc.addPrefixedFileArg("--shell-file=", shell_file_path);
    }
    for (options.extra_args) |arg| {
        emcc.addArg(arg);
    }

    emcc.addArtifactArg(options.lib_main);
    for (options.lib_main.getCompileDependencies(false)) |item| {
        if (item.kind == .lib) {
            emcc.addArtifactArg(item);
        }
    }
    if (options.optimize == .Debug or options.optimize == .ReleaseSafe) {
        emcc.addArgs(&[_][]const u8{
            "-sUSE_OFFSET_CONVERTER",
            "-sASSERTIONS",
        });
    }

    emcc.addArg("-o");
    const out_file = emcc.addOutputFileArg(b.fmt("{s}.html", .{options.lib_main.name}));

    const install = b.addInstallDirectory(.{
        .source_dir = out_file.dirname(),
        .install_dir = .prefix,
        .install_subdir = "web",
    });
    install.step.dependOn(&emcc.step);
    return install;
}

pub const EmRunOptions = struct {
    name: []const u8,
    emsdk: *Build.Dependency,
    browser: ?[]const u8 = "chrome",
};
pub fn emRunStep(b: *Build, options: EmRunOptions) *Build.Step.Run {
    const emrun_path = b.findProgram(&.{"emrun"}, &.{}) catch emSdkLazyPath(
        b,
        options.emsdk,
        &.{ "upstream", "emscripten", "emrun" },
    ).getPath(b);

    const emrun = b.addSystemCommand(&.{emrun_path});

    if (options.browser) |browser| {
        emrun.addArgs(&.{ "--browser", browser });
    }

    emrun.addArg(b.fmt("{s}/web/{s}.html", .{ b.install_path, options.name }));

    return emrun;
}
