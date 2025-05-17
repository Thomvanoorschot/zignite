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

// const IMGUI_C_DEFINES: []const [2][]const u8 = &.{
//     .{ "IMGUI_IMPL_API", "extern \"C\"" },
//     .{ "IMGUI_IMPL_WEBGPU_BACKEND_WGPU", "1" },
// };

const Options = struct {
    backend: Backend,
};

pub fn build(
    b: *Build,
) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const emsdk = b.dependency("emsdk", .{});

    const zimgui_mod = b.addModule("zimgui", .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    const zimgui = b.addLibrary(.{
        .name = "zimgui",
        .root_module = zimgui_mod,
        .linkage = .static,
    });
    zimgui.linkLibCpp();
    zimgui.linkLibC();

    b.installArtifact(zimgui);

    const options = Options{
        .backend = b.option(Backend, "backend", "") orelse .no_backend,
    };

    zimgui.addIncludePath(.{ .cwd_relative = "libs/imgui" });
    zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/imgui.cpp"), .flags = &.{""} });
    zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_widgets.cpp"), .flags = &.{""} });
    zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_tables.cpp"), .flags = &.{""} });
    zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_draw.cpp"), .flags = &.{""} });
    zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_demo.cpp"), .flags = &.{""} });
    zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui.cpp"), .flags = &.{""} });
    zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui_internal.cpp"), .flags = &.{""} });

    const emscripten = target.result.os.tag == .emscripten;

    if (emscripten) {
        zimgui.addSystemIncludePath(emsdk.path(b.pathJoin(&.{ "upstream", "emscripten", "cache", "sysroot", "include" })));
        if (try emSdkSetupStep(b, emsdk)) |emsdk_setup| {
            zimgui.step.dependOn(&emsdk_setup.step);
        }
    }

    switch (options.backend) {
        .glfw_wgpu => {
            zimgui.addIncludePath(.{ .cwd_relative = "libs/wgpu" });

            zimgui.addCSourceFile(.{ .file = b.path("libs/wgpu/lib_webgpu_cpp20.cpp"), .flags = &.{""} });
            zimgui.addCSourceFile(.{ .file = b.path("libs/wgpu/lib_webgpu.cpp"), .flags = &.{""} });

            zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_impl_glfw.cpp"), .flags = &.{""} });
            zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/imgui_impl_wgpu.cpp"), .flags = &.{""} });
            zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui_impl_glfw.cpp"), .flags = &.{""} });
            zimgui.addCSourceFile(.{ .file = b.path("libs/imgui/dcimgui_impl_wgpu.cpp"), .flags = &.{""} });
        },
        else => unreachable,
    }
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
