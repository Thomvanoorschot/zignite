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

    const module = b.addModule("imgui", .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    const options = Options{
        .backend = b.option(Backend, "backend", "Backend to build (default: no_backend)") orelse .no_backend,
    };

    module.addIncludePath(.{ .cwd_relative = "libs/imgui" });
    module.addCSourceFile(.{ .file = b.path("libs/imgui/imgui.cpp"), .flags = &.{""} });
    module.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_widgets.cpp"), .flags = &.{""} });
    module.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_tables.cpp"), .flags = &.{""} });
    module.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_draw.cpp"), .flags = &.{""} });
    module.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_demo.cpp"), .flags = &.{""} });
    module.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui.cpp"), .flags = &.{""} });
    module.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui_internal.cpp"), .flags = &.{""} });

    addBackend(b, module, options, target);
}

fn addBackend(
    b: *Build,
    module: *Build.Module,
    options: Options,
    target: Build.ResolvedTarget,
) void {
    switch (options.backend) {
        .glfw_wgpu => {
            const zglfw_dep = b.dependency("zglfw", .{});
            module.addIncludePath(zglfw_dep.path("libs/glfw/include"));

            const zgpu_dep = b.dependency("zgpu", .{
                .target = target,
            });
            module.addIncludePath(zgpu_dep.path("libs/dawn/include"));

            module.addCSourceFile(.{ .file = b.path("common/imgui/backends/dcimgui_impl_glfw.cpp"), .flags = &.{""} });
            module.addCSourceFile(.{ .file = b.path("common/imgui/backends/dcimgui_impl_wgpu.cpp"), .flags = &.{""} });
        },
        else => unreachable,
    }
}
