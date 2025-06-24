const std = @import("std");
const common = @import("webgpu_common.zig");
const em_html = @import("emscripten_html5.zig");

// Moved from emscripten_webgpu.zig
pub extern fn emscripten_webgpu_get_device() common.WGPUDevice;
pub extern fn wgpuCommandEncoderBeginRenderPass(encoder: common.WGPUCommandEncoder, descriptor: *const WGPURenderPassDescriptor) common.WGPURenderPassEncoder;


pub const WGPURenderPassColorAttachment = extern struct {
    nextInChain: ?*const common.WGPUChainedStruct = @import("std").mem.zeroes(?*const common.WGPUChainedStruct),
    view: common.WGPUTextureView = @import("std").mem.zeroes(common.WGPUTextureView),
    depthSlice: u32 = @import("std").mem.zeroes(u32),
    resolveTarget: common.WGPUTextureView = @import("std").mem.zeroes(common.WGPUTextureView),
    loadOp: u32 = @import("std").mem.zeroes(u32),
    storeOp: u32 = @import("std").mem.zeroes(u32),
    clearValue: common.WGPUColor = @import("std").mem.zeroes(common.WGPUColor),
};

pub const WGPURenderPassDepthStencilAttachment = extern struct {
    view: common.WGPUTextureView = @import("std").mem.zeroes(common.WGPUTextureView),
    depthLoadOp: u32 = @import("std").mem.zeroes(u32),
    depthStoreOp: u32 = @import("std").mem.zeroes(u32),
    depthClearValue: f32 = @import("std").mem.zeroes(f32),
    depthReadOnly: u32 = @import("std").mem.zeroes(u32),
    stencilLoadOp: u32 = @import("std").mem.zeroes(u32),
    stencilStoreOp: u32 = @import("std").mem.zeroes(u32),
    stencilClearValue: u32 = @import("std").mem.zeroes(u32),
    stencilReadOnly: u32 = @import("std").mem.zeroes(u32),
};


pub const WGPURenderPassDescriptor = extern struct {
    nextInChain: ?*const common.WGPUChainedStruct = @import("std").mem.zeroes(?*const common.WGPUChainedStruct),
    label: ?[*:0]const u8 = @import("std").mem.zeroes(?[*:0]const u8),
    colorAttachmentCount: usize = @import("std").mem.zeroes(usize),
    colorAttachments: [*]const WGPURenderPassColorAttachment,
    depthStencilAttachment: ?*const WGPURenderPassDepthStencilAttachment = @import("std").mem.zeroes(?*const WGPURenderPassDepthStencilAttachment),
    occlusionQuerySet: common.WGPUQuerySet = @import("std").mem.zeroes(common.WGPUQuerySet),
    timestampWrites: ?*const anyopaque = @import("std").mem.zeroes(?*const anyopaque),
};

pub const WebContext = struct {
    instance: common.WGPUInstance,
    device: common.WGPUDevice,
    queue: common.WGPUQueue,
    surface: common.WGPUSurface,
    swapchain: common.WGPUSwapChain,
    swapchain_descriptor: common.WGPUSwapChainDescriptor,

    const Self = @This();

    pub fn init(allocator: std.mem.Allocator, framebuffer_size: [2]u32, window: ?*anyopaque) !*Self {
        _ = window;
        const self = try allocator.create(Self);

        const instance = common.wgpuCreateInstance(null);
        const device = emscripten_webgpu_get_device();
        const queue = common.wgpuDeviceGetQueue(@ptrCast(device));

        const surface = common.wgpuInstanceCreateSurface(instance, &common.WGPUSurfaceDescriptor{
            .nextInChain = @ptrCast(&common.WGPUSurfaceDescriptorFromCanvasHTMLSelector{
                .chain = .{ .next = null, .sType = common.WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector },
                .selector = "#canvas",
            }),
            .label = null,
        });

        const swapchain_descriptor = common.WGPUSwapChainDescriptor{
            .nextInChain = null,
            .label = null,
            .usage = common.WGPUTextureUsage_RenderAttachment,
            .format = common.WGPUTextureFormat_BGRA8Unorm,
            .width = @intCast(framebuffer_size[0]),
            .height = @intCast(framebuffer_size[1]),
            .presentMode = common.WGPUPresentMode_Fifo,
        };

        const swapchain = common.wgpuDeviceCreateSwapChain(
            @ptrCast(device),
            surface,
            &swapchain_descriptor,
        );

        const canvas_name: []const u8 = "canvas";
        _ = em_html.emscripten_set_canvas_element_size(canvas_name.ptr, @intCast(framebuffer_size[0]), @intCast(framebuffer_size[1]));

        self.* = .{
            .instance = instance,
            .device = @ptrCast(device),
            .queue = queue,
            .surface = surface,
            .swapchain = swapchain,
            .swapchain_descriptor = swapchain_descriptor,
        };

        return self;
    }

    pub fn getCurrentTextureView(self: *Self) !common.WGPUTextureView {
        return common.wgpuSwapChainGetCurrentTextureView(self.swapchain);
    }

    pub fn present(self: *Self) void {
        common.wgpuSwapChainPresent(self.swapchain);
    }

    pub fn resize(self: *Self, new_size: [2]u32) void {
        self.swapchain_descriptor.width = @intCast(new_size[0]);
        self.swapchain_descriptor.height = @intCast(new_size[1]);

        common.wgpuSwapChainRelease(self.swapchain);
        self.swapchain = common.wgpuDeviceCreateSwapChain(self.device, self.surface, &self.swapchain_descriptor);

        const canvas_name: []const u8 = "canvas";
        _ = em_html.emscripten_set_canvas_element_size(canvas_name.ptr, @intCast(new_size[0]), @intCast(new_size[1]));
    }

    pub fn deinit(self: *Self, allocator: std.mem.Allocator) void {
        common.wgpuSwapChainRelease(self.swapchain);
        common.wgpuSurfaceRelease(self.surface);
        common.wgpuQueueRelease(self.queue);
        common.wgpuDeviceRelease(self.device);
        common.wgpuInstanceRelease(self.instance);
        allocator.destroy(self);
    }
};

pub fn beginRenderPassSimple(
    encoder: common.WGPUCommandEncoder,
    load_op: u32,
    color_texv: common.WGPUTextureView,
    clear_color: ?common.WGPUColor,
    depth_texv: ?common.WGPUTextureView,
    clear_depth: ?f32,
) common.WGPURenderPassEncoder {
    const clear_color_value: common.WGPUColor = if (clear_color) |cv| .{
        .r = cv.r,
        .g = cv.g,
        .b = cv.b,
        .a = cv.a,
    } else .{ .r = 0, .g = 0, .b = 0, .a = 0 };

    const color_attachments = [_]WGPURenderPassColorAttachment{.{
        .nextInChain = null,
        .view = @ptrCast(color_texv),
        .depthSlice = common.WGPU_DEPTH_SLICE_UNDEFINED,
        .resolveTarget = null,
        .loadOp = load_op,
        .storeOp = common.WGPUStoreOp_Store,
        .clearValue = clear_color_value,
    }};

    if (depth_texv) |dtexv| {
        const depth_attachment = WGPURenderPassDepthStencilAttachment{
            .view = @ptrCast(dtexv),
            .depthLoadOp = load_op,
            .depthStoreOp = common.WGPUStoreOp_Store,
            .depthClearValue = if (clear_depth) |cd| cd else 0.0,
            .depthReadOnly = 0,
            .stencilLoadOp = common.WGPULoadOp_Undefined,
            .stencilStoreOp = common.WGPUStoreOp_Store,
            .stencilClearValue = 0,
            .stencilReadOnly = 0,
        };

        const render_pass_descriptor = WGPURenderPassDescriptor{
            .nextInChain = null,
            .label = null,
            .colorAttachmentCount = color_attachments.len,
            .colorAttachments = &color_attachments,
            .depthStencilAttachment = &depth_attachment,
            .occlusionQuerySet = null,
            .timestampWrites = null,
        };
        return wgpuCommandEncoderBeginRenderPass(encoder, @ptrCast(&render_pass_descriptor));
    } else {
        const render_pass_descriptor = WGPURenderPassDescriptor{
            .nextInChain = null,
            .label = null,
            .colorAttachmentCount = color_attachments.len,
            .colorAttachments = &color_attachments,
            .depthStencilAttachment = null,
            .occlusionQuerySet = null,
            .timestampWrites = null,
        };
        return wgpuCommandEncoderBeginRenderPass(encoder, @ptrCast(&render_pass_descriptor));
    }
}
