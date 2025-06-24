const std = @import("std");
const builtin = @import("builtin");
const common = @import("webgpu_common.zig");

pub usingnamespace @import("webgpu_common.zig");

const web_webgpu = if (builtin.target.os.tag == .emscripten) @import("webgpu_web.zig") else struct {};
const native_webgpu = if (builtin.target.os.tag != .emscripten) @import("webgpu_native.zig") else struct {};

pub const Context = struct {
    impl: ContextImpl,

    const ContextImpl = if (builtin.target.os.tag == .emscripten)
        *web_webgpu.WebContext
    else
        *native_webgpu.NativeContext;

    const Self = @This();

    pub inline fn init(allocator: std.mem.Allocator, framebuffer_size: [2]u32, window: ?*anyopaque) !*Self {
        const self = try allocator.create(Self);

        if (builtin.target.os.tag == .emscripten) {
            self.impl = try web_webgpu.WebContext.init(allocator, framebuffer_size, window);
        } else {
            self.impl = try native_webgpu.NativeContext.init(allocator, framebuffer_size, window);
        }

        return self;
    }

    pub inline fn getCurrentTextureView(self: *Self) !common.WGPUTextureView {
        return self.impl.getCurrentTextureView();
    }

    pub inline fn present(self: *Self) void {
        self.impl.present();
    }

    pub inline fn resize(self: *Self, new_size: [2]u32) void {
        self.impl.resize(new_size);
    }

    pub inline fn deinit(self: *Self, allocator: std.mem.Allocator) void {
        self.impl.deinit(allocator);
        allocator.destroy(self);
    }

    pub inline fn getInstance(self: *Self) common.WGPUInstance {
        return self.impl.instance;
    }

    pub inline fn getDevice(self: *Self) common.WGPUDevice {
        return self.impl.device;
    }

    pub inline fn getQueue(self: *Self) common.WGPUQueue {
        return self.impl.queue;
    }

    pub inline fn getSurface(self: *Self) common.WGPUSurface {
        return self.impl.surface;
    }

    pub inline fn getSwapchainDescriptor(self: *Self) *const common.WGPUSwapChainDescriptor {
        return &self.impl.swapchain_descriptor;
    }

    pub inline fn getSwapchain(self: *Self) ?common.WGPUSwapChain {
        if (builtin.target.os.tag == .emscripten) {
            return self.impl.swapchain;
        } else {
            return null;
        }
    }
};

pub inline fn beginRenderPassSimple(
    encoder: common.WGPUCommandEncoder,
    load_op: u32,
    color_texv: common.WGPUTextureView,
    clear_color: ?common.WGPUColor,
    depth_texv: ?common.WGPUTextureView,
    clear_depth: ?f32,
) common.WGPURenderPassEncoder {
    if (builtin.target.os.tag == .emscripten) {
        return web_webgpu.beginRenderPassSimple(encoder, load_op, color_texv, clear_color, depth_texv, clear_depth);
    } else {
        return native_webgpu.beginRenderPassSimple(encoder, load_op, color_texv, clear_color, depth_texv, clear_depth);
    }
}
