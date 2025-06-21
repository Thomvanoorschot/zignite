const std = @import("std");
const builtin = @import("builtin");

// WebGPU opaque types
pub const WGPUInstance = ?*opaque {};
pub const WGPUDevice = ?*opaque {};
pub const WGPUQueue = ?*opaque {};
pub const WGPUSurface = ?*opaque {};
pub const WGPUAdapter = ?*opaque {};
pub const WGPUBuffer = ?*opaque {};
pub const WGPUTexture = ?*opaque {};
pub const WGPUTextureView = ?*opaque {};
pub const WGPUCommandEncoder = ?*opaque {};
pub const WGPUCommandBuffer = ?*opaque {};
pub const WGPURenderPassEncoder = ?*opaque {};
pub const WGPUQuerySet = ?*opaque {};

// WebGPU enums and constants
pub const WGPUTextureUsage_RenderAttachment: u32 = 0x00000010;
pub const WGPUTextureFormat_BGRA8Unorm: u32 = 23;
pub const WGPUTextureFormat_RGBA8Unorm: u32 = 18;
pub const WGPUTextureFormat_Undefined: u32 = 0;
pub const WGPUPresentMode_Fifo: u32 = 1;
pub const WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector: u32 = 4;
pub const WGPULoadOp_Clear: u32 = 0;
pub const WGPULoadOp_Load: u32 = 1;
pub const WGPUStoreOp_Store: u32 = 1;
pub const WGPU_DEPTH_SLICE_UNDEFINED: u32 = 0xFFFFFFFF;

// New surface API constants
pub const WGPUCompositeAlphaMode_Auto: u32 = 0;
pub const WGPUCompositeAlphaMode_Opaque: u32 = 1;
pub const WGPUCompositeAlphaMode_Premultiplied: u32 = 2;
pub const WGPUCompositeAlphaMode_Unpremultiplied: u32 = 3;
pub const WGPUCompositeAlphaMode_Inherit: u32 = 4;

pub const WGPUSurfaceGetCurrentTextureStatus_Success: u32 = 0;
pub const WGPUSurfaceGetCurrentTextureStatus_Timeout: u32 = 1;
pub const WGPUSurfaceGetCurrentTextureStatus_Outdated: u32 = 2;
pub const WGPUSurfaceGetCurrentTextureStatus_Lost: u32 = 3;

pub const WGPUTextureViewDimension_Undefined: u32 = 0;
pub const WGPUTextureViewDimension_1D: u32 = 1;
pub const WGPUTextureViewDimension_2D: u32 = 2;
pub const WGPUTextureViewDimension_2DArray: u32 = 3;
pub const WGPUTextureViewDimension_Cube: u32 = 4;
pub const WGPUTextureViewDimension_CubeArray: u32 = 5;
pub const WGPUTextureViewDimension_3D: u32 = 6;

pub const WGPUTextureAspect_All: u32 = 0;
pub const WGPUTextureAspect_StencilOnly: u32 = 1;
pub const WGPUTextureAspect_DepthOnly: u32 = 2;

pub const WGPU_MIP_LEVEL_COUNT_UNDEFINED: u32 = 0xFFFFFFFF;
pub const WGPU_ARRAY_LAYER_COUNT_UNDEFINED: u32 = 0xFFFFFFFF;

// WebGPU structs
pub const WGPUChainedStruct = extern struct {
    next: ?*const WGPUChainedStruct,
    sType: u32,
};

pub const WGPUInstanceDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
};

pub const WGPURequestAdapterOptions = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    compatibleSurface: WGPUSurface,
    powerPreference: u32,
    backendType: u32,
    forceFallbackAdapter: u32, // WGPUBool
};

pub const WGPUDeviceDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
    requiredFeatureCount: usize,
    requiredFeatures: ?[*]const u32,
    requiredLimits: ?*const anyopaque, // WGPURequiredLimits
    defaultQueue: WGPUQueueDescriptor,
    deviceLostCallback: ?*const fn (reason: u32, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void,
    deviceLostUserdata: ?*anyopaque,
};

pub const WGPUQueueDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
};

pub const WGPUSurfaceDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
};

pub const WGPUSurfaceDescriptorFromCanvasHTMLSelector = extern struct {
    chain: WGPUChainedStruct,
    selector: [*:0]const u8,
};

// New surface configuration struct
pub const WGPUSurfaceConfiguration = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    device: WGPUDevice,
    format: u32, // WGPUTextureFormat
    usage: u32, // WGPUTextureUsage
    viewFormatCount: usize,
    viewFormats: ?[*]const u32, // WGPUTextureFormat array
    alphaMode: u32, // WGPUCompositeAlphaMode
    width: u32,
    height: u32,
    presentMode: u32, // WGPUPresentMode
};

pub const WGPUSurfaceTexture = extern struct {
    texture: WGPUTexture,
    suboptimal: u32, // WGPUBool
    status: u32, // WGPUSurfaceGetCurrentTextureStatus
};

pub const WGPUTextureViewDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
    format: u32, // WGPUTextureFormat
    dimension: u32, // WGPUTextureViewDimension
    baseMipLevel: u32,
    mipLevelCount: u32,
    baseArrayLayer: u32,
    arrayLayerCount: u32,
    aspect: u32, // WGPUTextureAspect
};

pub const WGPUCommandEncoderDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
};

pub const WGPUCommandBufferDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
};

pub const WGPUColor = extern struct {
    r: f64,
    g: f64,
    b: f64,
    a: f64,
};

pub const WGPURenderPassColorAttachment = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    view: WGPUTextureView,
    depthSlice: u32,
    resolveTarget: WGPUTextureView,
    loadOp: u32,
    storeOp: u32,
    clearValue: WGPUColor,
};

pub const WGPURenderPassDepthStencilAttachment = extern struct {
    view: WGPUTextureView,
    depthLoadOp: u32,
    depthStoreOp: u32,
    depthClearValue: f32,
    depthReadOnly: u32, // WGPUBool
    stencilLoadOp: u32,
    stencilStoreOp: u32,
    stencilClearValue: u32,
    stencilReadOnly: u32, // WGPUBool
};

pub const WGPURenderPassDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
    colorAttachmentCount: usize,
    colorAttachments: [*]const WGPURenderPassColorAttachment,
    depthStencilAttachment: ?*const WGPURenderPassDepthStencilAttachment,
    occlusionQuerySet: WGPUQuerySet,
    timestampWrites: ?*const anyopaque, // WGPURenderPassTimestampWrites
};

// Function pointer types
pub const WGPUProcTable = extern struct {
    createInstance: ?*const fn (?*const WGPUInstanceDescriptor) callconv(.C) WGPUInstance,
    // ... add other function pointers as needed
};

// WebGPU function declarations - NEW SURFACE API
pub extern fn wgpuCreateInstance(descriptor: ?*const WGPUInstanceDescriptor) WGPUInstance;
pub extern fn wgpuInstanceCreateSurface(instance: WGPUInstance, descriptor: *const WGPUSurfaceDescriptor) WGPUSurface;
pub extern fn wgpuDeviceGetQueue(device: WGPUDevice) WGPUQueue;

// New surface configuration functions
pub extern fn wgpuSurfaceConfigure(surface: WGPUSurface, config: *const WGPUSurfaceConfiguration) void;
pub extern fn wgpuSurfaceGetCurrentTexture(surface: WGPUSurface, surfaceTexture: *WGPUSurfaceTexture) void;
pub extern fn wgpuSurfacePresent(surface: WGPUSurface) void;
pub extern fn wgpuSurfaceUnconfigure(surface: WGPUSurface) void;

// Texture and command functions
pub extern fn wgpuTextureCreateView(texture: WGPUTexture, descriptor: ?*const WGPUTextureViewDescriptor) WGPUTextureView;
pub extern fn wgpuDeviceCreateCommandEncoder(device: WGPUDevice, descriptor: ?*const WGPUCommandEncoderDescriptor) WGPUCommandEncoder;
pub extern fn wgpuCommandEncoderBeginRenderPass(encoder: WGPUCommandEncoder, descriptor: *const WGPURenderPassDescriptor) WGPURenderPassEncoder;
pub extern fn wgpuCommandEncoderFinish(encoder: WGPUCommandEncoder, descriptor: ?*const WGPUCommandBufferDescriptor) WGPUCommandBuffer;
pub extern fn wgpuQueueSubmit(queue: WGPUQueue, commandCount: usize, commands: [*]const WGPUCommandBuffer) void;
pub extern fn wgpuRenderPassEncoderEnd(renderPassEncoder: WGPURenderPassEncoder) void;

// WebGPU release/cleanup functions
pub extern fn wgpuInstanceRelease(instance: WGPUInstance) void;
pub extern fn wgpuDeviceRelease(device: WGPUDevice) void;
pub extern fn wgpuQueueRelease(queue: WGPUQueue) void;
pub extern fn wgpuSurfaceRelease(surface: WGPUSurface) void;
pub extern fn wgpuCommandEncoderRelease(encoder: WGPUCommandEncoder) void;
pub extern fn wgpuCommandBufferRelease(commandBuffer: WGPUCommandBuffer) void;
pub extern fn wgpuRenderPassEncoderRelease(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuTextureViewRelease(textureView: WGPUTextureView) void;
pub extern fn wgpuTextureRelease(texture: WGPUTexture) void;
pub extern fn wgpuBufferRelease(buffer: WGPUBuffer) void;

// Platform-specific extern functions for Dawn Native (only available on native platforms)
pub extern fn dawnNativeGetProcs() *const WGPUProcTable;
pub extern fn wgpuDeviceSetProcTable(procs: *const WGPUProcTable) void;

// Conditional imports
const em_webgpu = if (builtin.target.os.tag == .emscripten) @import("emscripten_webgpu.zig") else struct {};
const em_html = if (builtin.target.os.tag == .emscripten) @import("emscripten_html5.zig") else struct {};

pub const Context = struct {
    instance: WGPUInstance,
    device: WGPUDevice,
    queue: WGPUQueue,
    surface: WGPUSurface,
    swapchain: WGPUSwapChain,
    swapchain_descriptor: WGPUSwapChainDescriptor,

    const Self = @This();

    pub fn init(allocator: std.mem.Allocator, framebuffer_size: [2]u32) !*Self {
        const self = try allocator.create(Self);

        if (builtin.target.os.tag == .emscripten) {
            // Emscripten path using swapchain API
            const instance = wgpuCreateInstance(null);
            const device = em_webgpu.emscripten_webgpu_get_device();
            const queue = wgpuDeviceGetQueue(@ptrCast(device));

            // const canvas_selector = "canvas";
            const surface = wgpuInstanceCreateSurface(instance, &WGPUSurfaceDescriptor{
                .nextInChain = @ptrCast(&WGPUSurfaceDescriptorFromCanvasHTMLSelector{
                    .chain = .{ .next = null, .sType = WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector },
                    // .selector = canvas_selector.ptr,
                    .selector = "#canvas",
                }),
                .label = null,
            });

            const swapchain_descriptor = WGPUSwapChainDescriptor{
                .nextInChain = null,
                .label = null,
                .usage = WGPUTextureUsage_RenderAttachment,
                .format = WGPUTextureFormat_BGRA8Unorm,
                .width = @intCast(framebuffer_size[0]),
                .height = @intCast(framebuffer_size[1]),
                .presentMode = WGPUPresentMode_Fifo,
            };

            const swapchain = wgpuDeviceCreateSwapChain(
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
        } else {
            // Native path - simplified for now
            // Set up Dawn proc table first
            const procs = dawnNativeGetProcs();
            wgpuDeviceSetProcTable(procs);

            // Create instance
            _ = wgpuCreateInstance(null);

            // For now, return an error until we implement adapter enumeration
            return error.NativeWebGPUNotImplementedYet;
        }

        return self;
    }

    pub fn getCurrentTextureView(self: *Self) !WGPUTextureView {
        if (builtin.target.os.tag == .emscripten) {
            // Use swapchain for Emscripten
            return wgpuSwapChainGetCurrentTextureView(self.swapchain);
        } else {
            // Use surface texture for native
            var surface_texture: WGPUSurfaceTexture = undefined;
            wgpuSurfaceGetCurrentTexture(self.surface, &surface_texture);

            if (surface_texture.status != WGPUSurfaceGetCurrentTextureStatus_Success) {
                return error.FailedToGetSurfaceTexture;
            }

            return wgpuTextureCreateView(surface_texture.texture, &WGPUTextureViewDescriptor{
                .nextInChain = null,
                .label = null,
                .format = self.swapchain_descriptor.format,
                .dimension = WGPUTextureViewDimension_2D,
                .baseMipLevel = 0,
                .mipLevelCount = WGPU_MIP_LEVEL_COUNT_UNDEFINED,
                .baseArrayLayer = 0,
                .arrayLayerCount = WGPU_ARRAY_LAYER_COUNT_UNDEFINED,
                .aspect = WGPUTextureAspect_All,
            });
        }
    }

    pub fn present(self: *Self) void {
        if (builtin.target.os.tag == .emscripten) {
            wgpuSwapChainPresent(self.swapchain);
        } else {
            wgpuSurfacePresent(self.surface);
        }
    }

    pub fn resize(self: *Self, new_size: [2]u32) void {
        if (builtin.target.os.tag == .emscripten) {
            // Update swapchain descriptor for new size
            self.swapchain_descriptor.width = @intCast(new_size[0]);
            self.swapchain_descriptor.height = @intCast(new_size[1]);

            // Release old swapchain and create new one
            wgpuSwapChainRelease(self.swapchain);
            self.swapchain = wgpuDeviceCreateSwapChain(self.device, self.surface, &self.swapchain_descriptor);

            const canvas_name: []const u8 = "canvas";
            _ = em_html.emscripten_set_canvas_element_size(canvas_name.ptr, @intCast(new_size[0]), @intCast(new_size[1]));
        } else {
            // Update surface configuration for new size (native path)
            // TODO: Implement native resize
        }
    }

    pub fn deinit(self: *Self, allocator: std.mem.Allocator) void {
        if (builtin.target.os.tag == .emscripten) {
            wgpuSwapChainRelease(self.swapchain);
        } else {
            wgpuSurfaceUnconfigure(self.surface);
        }
        wgpuSurfaceRelease(self.surface);
        wgpuQueueRelease(self.queue);
        wgpuDeviceRelease(self.device);
        wgpuInstanceRelease(self.instance);
        allocator.destroy(self);
    }
};

// Helper functions
pub fn beginRenderPassSimple(
    encoder: WGPUCommandEncoder,
    load_op: u32,
    color_texv: WGPUTextureView,
    clear_color: ?WGPUColor,
    depth_texv: ?WGPUTextureView,
    clear_depth: ?f32,
) WGPURenderPassEncoder {
    const color_attachments = [_]WGPURenderPassColorAttachment{.{
        .nextInChain = null,
        .depthSlice = WGPU_DEPTH_SLICE_UNDEFINED,
        .view = color_texv,
        .resolveTarget = null,
        .loadOp = load_op,
        .storeOp = WGPUStoreOp_Store,
        .clearValue = if (clear_color) |cv| cv else .{ .r = 0, .g = 0, .b = 0, .a = 0 },
    }};

    if (depth_texv) |dtexv| {
        const depth_attachment = WGPURenderPassDepthStencilAttachment{
            .view = dtexv,
            .depthLoadOp = load_op,
            .depthStoreOp = WGPUStoreOp_Store,
            .depthClearValue = if (clear_depth) |cd| cd else 0.0,
            .depthReadOnly = 0,
            .stencilLoadOp = load_op,
            .stencilStoreOp = WGPUStoreOp_Store,
            .stencilClearValue = 0,
            .stencilReadOnly = 0,
        };
        return wgpuCommandEncoderBeginRenderPass(encoder, &WGPURenderPassDescriptor{
            .nextInChain = null,
            .label = null,
            .colorAttachmentCount = color_attachments.len,
            .colorAttachments = &color_attachments,
            .depthStencilAttachment = &depth_attachment,
            .occlusionQuerySet = null,
            .timestampWrites = null,
        });
    }

    return wgpuCommandEncoderBeginRenderPass(encoder, &WGPURenderPassDescriptor{
        .nextInChain = null,
        .label = null,
        .colorAttachmentCount = color_attachments.len,
        .colorAttachments = &color_attachments,
        .depthStencilAttachment = null,
        .occlusionQuerySet = null,
        .timestampWrites = null,
    });
}

// WebGPU error types
pub const WGPUErrorType_NoError: u32 = 0;
pub const WGPUErrorType_Validation: u32 = 1;
pub const WGPUErrorType_OutOfMemory: u32 = 2;
pub const WGPUErrorType_Internal: u32 = 3;
pub const WGPUErrorType_Unknown: u32 = 4;
pub const WGPUErrorType_DeviceLost: u32 = 5;
pub const WGPUErrorType = u32;

// Error callback function type
pub const WGPUErrorCallback = *const fn (type_: WGPUErrorType, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;

// Device error callback function
pub extern fn wgpuDeviceSetUncapturedErrorCallback(device: WGPUDevice, callback: WGPUErrorCallback, userdata: ?*anyopaque) void;

// WebGPU swapchain types and constants (older API)
pub const WGPUSwapChain = ?*opaque {};
pub const WGPUSwapChainDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
    usage: u32, // WGPUTextureUsage
    format: u32, // WGPUTextureFormat
    width: u32,
    height: u32,
    presentMode: u32, // WGPUPresentMode
};

// Swapchain functions
pub extern fn wgpuDeviceCreateSwapChain(device: WGPUDevice, surface: WGPUSurface, descriptor: *const WGPUSwapChainDescriptor) WGPUSwapChain;
pub extern fn wgpuSwapChainGetCurrentTextureView(swapChain: WGPUSwapChain) WGPUTextureView;
pub extern fn wgpuSwapChainPresent(swapChain: WGPUSwapChain) void;
pub extern fn wgpuSwapChainRelease(swapChain: WGPUSwapChain) void;
