const std = @import("std");
const common = @import("webgpu_common.zig");

pub extern fn dawnNativeGetProcs() *const common.DawnProcTable;
pub extern fn dawnProcSetProcs(procs: *const anyopaque) void;
pub extern fn dawnNativeInitializeComplete(window: ?*anyopaque, width: u32, height: u32) bool;
pub extern fn dawnNativeGetInstance() common.WGPUInstance;
pub extern fn dawnNativeGetAdapter() common.WGPUAdapter;
pub extern fn dawnNativeGetDevice() common.WGPUDevice;
pub extern fn dawnNativeGetSurface() common.WGPUSurface;
pub extern fn dawnNativeGetQueue() common.WGPUQueue;
pub extern fn dawnNativeInstanceDestroy(handle: ?*anyopaque) void;
pub extern fn wgpuGlfwCreateSurfaceForWindow(instance: common.WGPUInstance, window: ?*anyopaque) common.WGPUSurface;
pub extern fn wgpuCommandEncoderBeginRenderPass(encoder: common.WGPUCommandEncoder, descriptor: *const WGPURenderPassDescriptor) common.WGPURenderPassEncoder;

pub extern fn simpleDawnCreateInstance() common.WGPUInstance;
pub extern fn simpleDawnGetFirstAdapterSync() common.WGPUAdapter;
pub extern fn simpleDawnCleanup() void;
pub extern fn dawnGetProcs() *const common.DawnProcTable;
pub extern fn simpleDawnCreateDevice() common.WGPUDevice;
pub extern fn simpleDawnGetSurfaceCapabilities(surface: common.WGPUSurface, adapter: common.WGPUAdapter) void;
pub extern fn wgpuSurfaceGetCapabilities(surface: common.WGPUSurface, adapter: common.WGPUAdapter, capabilities: *anyopaque) void;
pub extern fn simpleDawnCreateSurface(window: ?*anyopaque) common.WGPUSurface;
pub extern fn simpleDawnWaitForWindow() void;
pub extern fn simpleDawnGetSurfaceTextureViewDirect() common.WGPUTextureView;
pub extern fn simpleDawnTestCreateRenderPass(encoder: common.WGPUCommandEncoder, textureView: common.WGPUTextureView) common.WGPURenderPassEncoder;
pub extern fn simpleDawnValidateTextureView(textureView: common.WGPUTextureView) bool;
pub extern fn dawnNativeTestSurfaceTexture() void;
pub extern fn dawnNativeDebugSurfaceTextureStruct() void;


pub const WGPURenderPassColorAttachment = extern struct {
    nextInChain: ?*const common.WGPUChainedStruct,
    view: common.WGPUTextureView,
    depthSlice: u32,
    resolveTarget: common.WGPUTextureView,
    loadOp: u32,
    storeOp: u32,
    clearValue: common.WGPUColor,
};

pub const WGPURenderPassDepthStencilAttachment = extern struct {
    nextInChain: ?*const common.WGPUChainedStruct = null,
    view: common.WGPUTextureView,
    depthLoadOp: u32 = common.WGPULoadOp_Undefined,
    depthStoreOp: u32 = common.WGPUStoreOp_Undefined,
    depthClearValue: f32 = 0.0,
    depthReadOnly: bool = false,
    stencilLoadOp: u32 = common.WGPULoadOp_Undefined,
    stencilStoreOp: u32 = common.WGPUStoreOp_Undefined,
    stencilClearValue: u32 = 0,
    stencilReadOnly: bool = false,
};

pub const WGPURenderPassDescriptor = extern struct {
    nextInChain: ?*const common.WGPUChainedStruct = null,
    label: common.WGPUStringView = .{ .data = null, .length = 0 },
    colorAttachmentCount: usize,
    colorAttachments: ?[*]const WGPURenderPassColorAttachment,
    depthStencilAttachment: ?*const WGPURenderPassDepthStencilAttachment = null,
    occlusionQuerySet: common.WGPUQuerySet = null,
    timestampWrites: ?*const anyopaque = null,
};

pub const NativeContext = struct {
    instance: common.WGPUInstance,
    device: common.WGPUDevice,
    queue: common.WGPUQueue,
    surface: common.WGPUSurface,
    swapchain_descriptor: common.WGPUSwapChainDescriptor,

    const Self = @This();

    pub fn init(allocator: std.mem.Allocator, framebuffer_size: [2]u32, window: ?*anyopaque) !*Self {
        const self = try allocator.create(Self);

        const procs = dawnNativeGetProcs();
        dawnProcSetProcs(@ptrCast(procs));

        const success = dawnNativeInitializeComplete(window, @intCast(framebuffer_size[0]), @intCast(framebuffer_size[1]));
        if (!success) {
            return error.FailedToInitializeDawn;
        }

        const instance = dawnNativeGetInstance();
        const device = dawnNativeGetDevice();
        const queue = dawnNativeGetQueue();
        const surface = dawnNativeGetSurface();

        if (instance == null or device == null or queue == null or surface == null) {
            return error.FailedToGetDawnObjects;
        }

        const surface_config = common.WGPUSurfaceConfiguration{
            .nextInChain = null,
            .device = device,
            .format = common.WGPUTextureFormat_BGRA8Unorm,
            .usage = common.WGPUTextureUsage_RenderAttachment,
            .viewFormatCount = 0,
            .viewFormats = null,
            .alphaMode = common.WGPUCompositeAlphaMode_Opaque,
            .width = @intCast(framebuffer_size[0]),
            .height = @intCast(framebuffer_size[1]),
            .presentMode = common.WGPUPresentMode_Mailbox,
        };
        common.wgpuSurfaceConfigure(surface, &surface_config);

        const swapchain_descriptor = common.WGPUSwapChainDescriptor{
            .nextInChain = null,
            .label = null,
            .usage = common.WGPUTextureUsage_RenderAttachment,
            .format = common.WGPUTextureFormat_BGRA8Unorm,
            .width = @intCast(framebuffer_size[0]),
            .height = @intCast(framebuffer_size[1]),
            .presentMode = common.WGPUPresentMode_Mailbox,
        };

        self.* = .{
            .instance = instance,
            .device = device,
            .queue = queue,
            .surface = surface,
            .swapchain_descriptor = swapchain_descriptor,
        };

        return self;
    }

    pub fn getCurrentTextureView(self: *Self) !common.WGPUTextureView {
        var surface_texture: common.WGPUSurfaceTexture = undefined;
        common.wgpuSurfaceGetCurrentTexture(self.surface, &surface_texture);

        if (surface_texture.texture == null) {
            return error.FailedToGetSurfaceTexture;
        }

        if (surface_texture.status == common.WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal or
            surface_texture.status == common.WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal or
            surface_texture.status == common.WGPUSurfaceGetCurrentTextureStatus_Timeout)
        {
            const texture_view = common.wgpuTextureCreateView(surface_texture.texture, null);
            if (texture_view == null) {
                return error.FailedToCreateTextureView;
            }
            return texture_view;
        } else {
            return error.InvalidSurfaceTextureStatus;
        }
    }

    pub fn present(self: *Self) void {
        common.wgpuSurfacePresent(self.surface);
    }

    pub fn resize(self: *Self, new_size: [2]u32) void {
        self.swapchain_descriptor.width = @intCast(new_size[0]);
        self.swapchain_descriptor.height = @intCast(new_size[1]);

        const surface_config = common.WGPUSurfaceConfiguration{
            .nextInChain = null,
            .device = self.device,
            .format = common.WGPUTextureFormat_BGRA8Unorm,
            .usage = common.WGPUTextureUsage_RenderAttachment,
            .viewFormatCount = 0,
            .viewFormats = null,
            .alphaMode = common.WGPUCompositeAlphaMode_Opaque,
            .width = @intCast(new_size[0]),
            .height = @intCast(new_size[1]),
            .presentMode = common.WGPUPresentMode_Mailbox,
        };

        common.wgpuSurfaceConfigure(self.surface, &surface_config);
    }

    pub fn deinit(self: *Self, allocator: std.mem.Allocator) void {
        common.wgpuSurfaceUnconfigure(self.surface);
        dawnNativeInstanceDestroy(null);
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
    const color_attachments = [_]WGPURenderPassColorAttachment{.{
        .nextInChain = null,
        .view = color_texv,
        .depthSlice = common.WGPU_DEPTH_SLICE_UNDEFINED,
        .resolveTarget = null,
        .loadOp = load_op,
        .storeOp = common.WGPUStoreOp_Store,
        .clearValue = if (clear_color) |cv| cv else .{ .r = 0, .g = 0, .b = 0, .a = 0 },
    }};

    if (depth_texv) |dtexv| {
        const depth_attachment = WGPURenderPassDepthStencilAttachment{
            .nextInChain = null,
            .view = dtexv,
            .depthLoadOp = load_op,
            .depthStoreOp = common.WGPUStoreOp_Store,
            .depthClearValue = if (clear_depth) |cd| cd else 0.0,
            .depthReadOnly = false,
            .stencilLoadOp = common.WGPULoadOp_Undefined,
            .stencilStoreOp = common.WGPUStoreOp_Store,
            .stencilClearValue = 0,
            .stencilReadOnly = false,
        };

        return wgpuCommandEncoderBeginRenderPass(encoder, &WGPURenderPassDescriptor{
            .nextInChain = null,
            .label = common.WGPUStringView{ .data = null, .length = 0 },
            .colorAttachmentCount = color_attachments.len,
            .colorAttachments = &color_attachments,
            .depthStencilAttachment = &depth_attachment,
            .occlusionQuerySet = null,
            .timestampWrites = null,
        });
    } else {
        return wgpuCommandEncoderBeginRenderPass(encoder, &WGPURenderPassDescriptor{
            .nextInChain = null,
            .label = common.WGPUStringView{ .data = null, .length = 0 },
            .colorAttachmentCount = color_attachments.len,
            .colorAttachments = &color_attachments,
            .depthStencilAttachment = null,
            .occlusionQuerySet = null,
            .timestampWrites = null,
        });
    }
}
