const std = @import("std");
const Build = std.Build;
const zignite_pkg = @import("zignite");

pub fn build(b: *Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const zignite_dep = b.dependency("zignite", .{
        .target = target,
        .optimize = optimize,
        .with_imgui = true,
        .with_implot = true,
        .use_glfw = true,
        .use_webgpu = true,
        .use_filesystem = true,
        .use_websockets = true,
    });

    const zignite_lib = zignite_dep.artifact("zignite");

    const example_names = .{
        "simple_imgui",
        "simple_implot",
        "simple_webworker",
        "simple_webworker_websocket",
    };

    inline for (example_names) |example_name| {
        const example_mod = b.addModule(example_name, .{
            .target = target,
            .optimize = optimize,
            .root_source_file = b.path(example_name ++ ".zig"),
        });

        const example = b.addStaticLibrary(.{
            .name = example_name,
            .root_module = example_mod,
        });

        example.linkLibrary(zignite_lib);
        example.linkLibC();
        example.root_module.addImport("zignite", zignite_dep.module("zignite"));

        _ = zignite_pkg.emRunStep(b, .{
            .name = example_name,
            .zignite_dep = zignite_dep,
            .lib_main = example,
        });
    }
}
