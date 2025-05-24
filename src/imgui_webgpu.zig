const std = @import("std");
const imgui_glfw = @import("imgui_glfw.zig");
const imgui = @import("imgui.zig");
const zglfw = @import("imgui_glfw.zig");
pub fn init(
    window: *zglfw.GLFWwindow, 
    wgpu_device: *const anyopaque,
    wgpu_swap_chain_format: u32,
    wgpu_depth_format: u32,
) void {
    _ = imgui_glfw.ImGui_ImplGlfw_InitForOther(window, true);

    var info = ImGui_ImplWGPU_InitInfo{
        .device = @ptrCast(@constCast(wgpu_device)),
        .num_frames_in_flight = 1,
        .rt_format = wgpu_swap_chain_format,
        .depth_format = wgpu_depth_format,
        .pipeline_multisample_state = .{
            .count = 1,
            .mask = 0xFFFFFFFF,
            .alpha_to_coverage_enabled = false,
        },
    };

    if (!ImGui_ImplWGPU_Init(&info)) {
        unreachable;
    }
}

pub fn deinit() void {
    ImGui_ImplWGPU_Shutdown();
    imgui_glfw.deinit();
}

pub fn newFrame(fb_width: u32, fb_height: u32) void {
    const io = imgui.igGetIO_Nil();
    io.*.DisplaySize = .{ .x = @floatFromInt(fb_width), .y = @floatFromInt(fb_height) };
    io.*.DisplayFramebufferScale = .{ .x = 1.0, .y = 1.0 };
    ImGui_ImplWGPU_NewFrame();
    imgui_glfw.ImGui_ImplGlfw_NewFrame();
    // gui.io.setDisplayFramebufferScale(1.0, 1.0);

    imgui.igNewFrame();
}

pub fn draw(wgpu_render_pass: *const anyopaque) void {
    imgui.igRender();

    ImGui_ImplWGPU_RenderDrawData(@ptrCast(imgui.igGetDrawData()), wgpu_render_pass);
}

pub const ImGui_ImplWGPU_InitInfo = extern struct {
    device: *const anyopaque,
    num_frames_in_flight: u32 = 1,
    rt_format: u32,
    depth_format: u32,

    pipeline_multisample_state: extern struct {
        next_in_chain: ?*const anyopaque = null,
        count: u32 = 1,
        mask: u32 = @bitCast(@as(i32, -1)),
        alpha_to_coverage_enabled: bool = false,
    },
};

extern fn ImGui_ImplWGPU_Init(init_info: *ImGui_ImplWGPU_InitInfo) bool;
extern fn ImGui_ImplWGPU_NewFrame() void;
extern fn ImGui_ImplWGPU_RenderDrawData(draw_data: *const anyopaque, pass_encoder: *const anyopaque) void;
extern fn ImGui_ImplWGPU_Shutdown() void;
