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
pub const WGPUPresentMode_Undefined: u32 = 0;
pub const WGPUPresentMode_Fifo: u32 = 1;
pub const WGPUPresentMode_FifoRelaxed: u32 = 2;
pub const WGPUPresentMode_Immediate: u32 = 3;
pub const WGPUPresentMode_Mailbox: u32 = 4;
pub const WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector: u32 = 4;
pub const WGPULoadOp_Undefined: u32 = 0;
pub const WGPULoadOp_Load: u32 = 1;
pub const WGPULoadOp_Clear: u32 = 2;
pub const WGPUStoreOp_Undefined: u32 = 0;
pub const WGPUStoreOp_Store: u32 = 1;
pub const WGPUStoreOp_Discard: u32 = 2;
pub const WGPU_DEPTH_SLICE_UNDEFINED: u32 = 0xFFFFFFFF;

// New surface API constants
pub const WGPUCompositeAlphaMode_Auto: u32 = 0;
pub const WGPUCompositeAlphaMode_Opaque: u32 = 1;
pub const WGPUCompositeAlphaMode_Premultiplied: u32 = 2;
pub const WGPUCompositeAlphaMode_Unpremultiplied: u32 = 3;
pub const WGPUCompositeAlphaMode_Inherit: u32 = 4;

pub const WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal: u32 = 0;
pub const WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal: u32 = 1;
pub const WGPUSurfaceGetCurrentTextureStatus_Timeout: u32 = 2;
pub const WGPUSurfaceGetCurrentTextureStatus_Outdated: u32 = 3;
pub const WGPUSurfaceGetCurrentTextureStatus_Lost: u32 = 4;
pub const WGPUSurfaceGetCurrentTextureStatus_Error: u32 = 5;

pub const WGPUTextureViewDimension_Undefined: u32 = 0;
pub const WGPUTextureViewDimension_1D: u32 = 1;
pub const WGPUTextureViewDimension_2D: u32 = 2;
pub const WGPUTextureViewDimension_2DArray: u32 = 3;
pub const WGPUTextureViewDimension_Cube: u32 = 4;
pub const WGPUTextureViewDimension_CubeArray: u32 = 5;
pub const WGPUTextureViewDimension_3D: u32 = 6;

pub const WGPUTextureAspect_All: u32 = 1;
pub const WGPUTextureAspect_StencilOnly: u32 = 2;
pub const WGPUTextureAspect_DepthOnly: u32 = 3;

pub const WGPU_MIP_LEVEL_COUNT_UNDEFINED: u32 = 0xFFFFFFFF;
pub const WGPU_ARRAY_LAYER_COUNT_UNDEFINED: u32 = 0xFFFFFFFF;

// Power preference constants
pub const WGPUPowerPreference_Undefined: u32 = 0;
pub const WGPUPowerPreference_LowPower: u32 = 1;
pub const WGPUPowerPreference_HighPerformance: u32 = 2;

// Backend type constants
pub const WGPUBackendType_Undefined: u32 = 0;
pub const WGPUBackendType_Null: u32 = 1;
pub const WGPUBackendType_WebGPU: u32 = 2;
pub const WGPUBackendType_D3D11: u32 = 3;
pub const WGPUBackendType_D3D12: u32 = 4;
pub const WGPUBackendType_Metal: u32 = 5;
pub const WGPUBackendType_Vulkan: u32 = 6;
pub const WGPUBackendType_OpenGL: u32 = 7;
pub const WGPUBackendType_OpenGLES: u32 = 8;

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
    forceFallbackAdapter: bool, // WGPUBool
};

pub const WGPUDeviceDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
    requiredFeatureCount: usize,
    requiredFeatures: ?[*]const u32,
    requiredLimits: ?*const anyopaque, // WGPURequiredLimits
    defaultQueue: WGPUQueueDescriptor,
    deviceLostCallback: ?*const fn (reason: u32, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void = null,
    deviceLostUserdata: ?*anyopaque = null,
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
    _unknown_field: u64, // 8-byte field at offset 0
    texture: WGPUTexture, // 8-byte field at offset 8
    status: u32, // 4-byte field at offset 16
    _padding: u32 = undefined, // 4-byte padding to reach 24 bytes
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

pub const WGPUStringView = extern struct {
    data: ?[*]const u8,
    length: usize,
};

pub const WGPURenderPassColorAttachment = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    view: WGPUTextureView,
    depthSlice: u32,
    resolveTarget: WGPUTextureView,
    loadOp: u32, // WGPULoadOp
    storeOp: u32, // WGPUStoreOp
    clearValue: WGPUColor,
};

pub const WGPURenderPassDepthStencilAttachment = extern struct {
    nextInChain: ?*const WGPUChainedStruct = null,
    view: WGPUTextureView,
    depthLoadOp: u32 = WGPULoadOp_Undefined,
    depthStoreOp: u32 = WGPUStoreOp_Undefined,
    depthClearValue: f32 = 0.0,
    depthReadOnly: bool = false, // WGPUBool
    stencilLoadOp: u32 = WGPULoadOp_Undefined,
    stencilStoreOp: u32 = WGPUStoreOp_Undefined,
    stencilClearValue: u32 = 0,
    stencilReadOnly: bool = false, // WGPUBool
};

pub const WGPURenderPassDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct = null,
    label: WGPUStringView = .{ .data = null, .length = 0 },
    colorAttachmentCount: usize,
    colorAttachments: ?[*]const WGPURenderPassColorAttachment,
    depthStencilAttachment: ?*const WGPURenderPassDepthStencilAttachment = null,
    occlusionQuerySet: WGPUQuerySet = null,
    timestampWrites: ?*const anyopaque = null,
};

// Dawn-specific proc table (opaque to Zig)
pub const DawnProcTable = opaque {};

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

// GLFW surface creation function
// pub extern fn wgpuGlfwCreateSurfaceForWindow(instance: WGPUInstance, window: ?*anyopaque) WGPUSurface;

// Add missing WebGPU adapter functions
// pub extern fn wgpuInstanceRequestAdapter(instance: WGPUInstance, options: ?*const WGPURequestAdapterOptions, callback: *const fn (WGPURequestAdapterStatus, WGPUAdapter, [*:0]const u8, ?*anyopaque) callconv(.C) void, userdata: ?*anyopaque) void;
// pub extern fn wgpuAdapterRequestDevice(adapter: WGPUAdapter, descriptor: ?*const WGPUDeviceDescriptor, callback: *const fn (WGPURequestDeviceStatus, WGPUDevice, [*:0]const u8, ?*anyopaque) callconv(.C) void, userdata: ?*anyopaque) void;

// Add status enums
pub const WGPURequestAdapterStatus = u32;
pub const WGPURequestAdapterStatus_Success: u32 = 0;
pub const WGPURequestAdapterStatus_Unavailable: u32 = 1;
pub const WGPURequestAdapterStatus_Error: u32 = 2;
pub const WGPURequestAdapterStatus_Unknown: u32 = 3;

pub const WGPURequestDeviceStatus = u32;
pub const WGPURequestDeviceStatus_Success: u32 = 0;
pub const WGPURequestDeviceStatus_Error: u32 = 1;
pub const WGPURequestDeviceStatus_Unknown: u32 = 2;

// Conditional imports
const em_webgpu = if (builtin.target.os.tag == .emscripten) @import("emscripten_webgpu.zig") else struct {};
const em_html = if (builtin.target.os.tag == .emscripten) @import("emscripten_html5.zig") else struct {};

// Add the new function declarations
pub extern fn simpleDawnCreateInstance() WGPUInstance;
pub extern fn simpleDawnGetFirstAdapterSync() WGPUAdapter;
pub extern fn simpleDawnCleanup() void;
pub extern fn dawnGetProcs() *const DawnProcTable;

// Add the new device creation function
pub extern fn simpleDawnCreateDevice() WGPUDevice;

// Add the surface capabilities function
pub extern fn simpleDawnGetSurfaceCapabilities(surface: WGPUSurface, adapter: WGPUAdapter) void;

// Add missing WebGPU function
pub extern fn wgpuSurfaceGetCapabilities(surface: WGPUSurface, adapter: WGPUAdapter, capabilities: *anyopaque) void;

// Add the new surface creation function
pub extern fn simpleDawnCreateSurface(window: ?*anyopaque) WGPUSurface;
pub extern fn simpleDawnTestSurfaceTexture(surface: WGPUSurface) void;

// Add the new surface configuration function
pub extern fn simpleDawnConfigureSurface(width: u32, height: u32) bool;

// Add the new functions
pub extern fn simpleDawnGetSurfaceTextureView() WGPUTextureView;
pub extern fn simpleDawnWaitForWindow() void;

// Add the new direct function
pub extern fn simpleDawnGetSurfaceTextureViewDirect() WGPUTextureView;

pub extern fn simpleDawnTestCreateRenderPass(encoder: WGPUCommandEncoder, textureView: WGPUTextureView) WGPURenderPassEncoder;

// Dawn native function declarations - comprehensive C wrapper
pub extern fn dawnNativeGetProcs() *const DawnProcTable;
pub extern fn dawnProcSetProcs(procs: *const anyopaque) void;
pub extern fn dawnNativeInitializeComplete(window: ?*anyopaque, width: u32, height: u32) bool;
pub extern fn dawnNativeGetInstance() WGPUInstance;
pub extern fn dawnNativeGetAdapter() WGPUAdapter;
pub extern fn dawnNativeGetDevice() WGPUDevice;
pub extern fn dawnNativeGetSurface() WGPUSurface;
pub extern fn dawnNativeGetQueue() WGPUQueue;
pub extern fn dawnNativeInstanceDestroy(handle: ?*anyopaque) void;

// GLFW WebGPU integration
pub extern fn wgpuGlfwCreateSurfaceForWindow(instance: WGPUInstance, window: ?*anyopaque) WGPUSurface;

pub const Context = struct {
    instance: WGPUInstance,
    device: WGPUDevice,
    queue: WGPUQueue,
    surface: WGPUSurface,
    swapchain: WGPUSwapChain,
    swapchain_descriptor: WGPUSwapChainDescriptor,

    const Self = @This();

    pub fn init(allocator: std.mem.Allocator, framebuffer_size: [2]u32, window: ?*anyopaque) !*Self {
        const self = try allocator.create(Self);

        if (builtin.target.os.tag == .emscripten) {
            // Emscripten path using swapchain API (existing code)
            const instance = wgpuCreateInstance(null);
            const device = em_webgpu.emscripten_webgpu_get_device();
            const queue = wgpuDeviceGetQueue(@ptrCast(device));

            const surface = wgpuInstanceCreateSurface(instance, &WGPUSurfaceDescriptor{
                .nextInChain = @ptrCast(&WGPUSurfaceDescriptorFromCanvasHTMLSelector{
                    .chain = .{ .next = null, .sType = WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector },
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
            // Dawn native path
            std.log.info("[Zig] Using Dawn native path...", .{});

            // Set up proc table
            const procs = dawnNativeGetProcs();
            dawnProcSetProcs(@ptrCast(procs));

            // Use the comprehensive initialization function
            const success = dawnNativeInitializeComplete(window, @intCast(framebuffer_size[0]), @intCast(framebuffer_size[1]));
            if (!success) {
                return error.FailedToInitializeDawn;
            }

            // Get all the initialized objects
            const instance = dawnNativeGetInstance();
            const device = dawnNativeGetDevice();
            const queue = dawnNativeGetQueue();
            const surface = dawnNativeGetSurface();

            if (instance == null or device == null or queue == null or surface == null) {
                return error.FailedToGetDawnObjects;
            }

            // Configure the surface - this was missing!
            const surface_config = WGPUSurfaceConfiguration{
                .nextInChain = null,
                .device = device,
                .format = WGPUTextureFormat_BGRA8Unorm,
                .usage = WGPUTextureUsage_RenderAttachment,
                .viewFormatCount = 0,
                .viewFormats = null,
                .alphaMode = WGPUCompositeAlphaMode_Opaque,
                .width = @intCast(framebuffer_size[0]),
                .height = @intCast(framebuffer_size[1]),
                .presentMode = WGPUPresentMode_Mailbox,
            };
            wgpuSurfaceConfigure(surface, &surface_config);

            const swapchain_descriptor = WGPUSwapChainDescriptor{
                .nextInChain = null,
                .label = null,
                .usage = WGPUTextureUsage_RenderAttachment,
                .format = WGPUTextureFormat_BGRA8Unorm,
                .width = @intCast(framebuffer_size[0]),
                .height = @intCast(framebuffer_size[1]),
                .presentMode = WGPUPresentMode_Mailbox,
            };

            self.* = .{
                .instance = instance,
                .device = device,
                .queue = queue,
                .surface = surface,
                .swapchain = null, // Not used in native path
                .swapchain_descriptor = swapchain_descriptor,
            };
        }

        return self;
    }

    pub fn getCurrentTextureView(self: *Self) !WGPUTextureView {
        if (builtin.target.os.tag == .emscripten) {
            return wgpuSwapChainGetCurrentTextureView(self.swapchain);
        } else {
            var surface_texture: WGPUSurfaceTexture = undefined;
            wgpuSurfaceGetCurrentTexture(self.surface, &surface_texture);

            if (surface_texture.texture == null) {
                return error.FailedToGetSurfaceTexture;
            }

            if (surface_texture.status == WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal or
                surface_texture.status == WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal or
                surface_texture.status == WGPUSurfaceGetCurrentTextureStatus_Timeout)
            {
                const texture_view = wgpuTextureCreateView(surface_texture.texture, null);
                if (texture_view == null) {
                    return error.FailedToCreateTextureView;
                }
                std.log.info("[Zig] About to return texture view, everything looks good!", .{});
                return texture_view;
            } else {
                return error.InvalidSurfaceTextureStatus;
            }
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
            self.swapchain_descriptor.width = @intCast(new_size[0]);
            self.swapchain_descriptor.height = @intCast(new_size[1]);

            wgpuSwapChainRelease(self.swapchain);
            self.swapchain = wgpuDeviceCreateSwapChain(self.device, self.surface, &self.swapchain_descriptor);

            const canvas_name: []const u8 = "canvas";
            _ = em_html.emscripten_set_canvas_element_size(canvas_name.ptr, @intCast(new_size[0]), @intCast(new_size[1]));
        } else {
            self.swapchain_descriptor.width = @intCast(new_size[0]);
            self.swapchain_descriptor.height = @intCast(new_size[1]);

            const surface_config = WGPUSurfaceConfiguration{
                .nextInChain = null,
                .device = self.device,
                .format = WGPUTextureFormat_BGRA8Unorm,
                .usage = WGPUTextureUsage_RenderAttachment,
                .viewFormatCount = 0,
                .viewFormats = null,
                .alphaMode = WGPUCompositeAlphaMode_Opaque,
                .width = @intCast(new_size[0]),
                .height = @intCast(new_size[1]),
                .presentMode = WGPUPresentMode_Fifo,
            };

            wgpuSurfaceConfigure(self.surface, &surface_config);
        }
    }

    pub fn deinit(self: *Self, allocator: std.mem.Allocator) void {
        if (builtin.target.os.tag == .emscripten) {
            wgpuSwapChainRelease(self.swapchain);
        } else {
            wgpuSurfaceUnconfigure(self.surface);
            dawnNativeInstanceDestroy(null);
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
    if (builtin.target.os.tag == .emscripten) {
        // Convert color to emscripten format if provided
        const em_clear_color: em_webgpu.struct_WGPUColor = if (clear_color) |cv| .{
            .r = cv.r,
            .g = cv.g,
            .b = cv.b,
            .a = cv.a,
        } else .{ .r = 0, .g = 0, .b = 0, .a = 0 };

        // Use emscripten-compatible structs
        const em_color_attachments = [_]em_webgpu.struct_WGPURenderPassColorAttachment{.{
            .nextInChain = null,
            .view = @ptrCast(color_texv),
            .depthSlice = WGPU_DEPTH_SLICE_UNDEFINED,
            .resolveTarget = null,
            .loadOp = load_op,
            .storeOp = WGPUStoreOp_Store,
            .clearValue = em_clear_color,
        }};

        if (depth_texv) |dtexv| {
            const em_depth_attachment = em_webgpu.struct_WGPURenderPassDepthStencilAttachment{
                .view = @ptrCast(dtexv),
                .depthLoadOp = load_op,
                .depthStoreOp = WGPUStoreOp_Store,
                .depthClearValue = if (clear_depth) |cd| cd else 0.0,
                .depthReadOnly = 0,
                .stencilLoadOp = WGPULoadOp_Undefined,
                .stencilStoreOp = WGPUStoreOp_Undefined,
                .stencilClearValue = 0,
                .stencilReadOnly = 0,
            };

            const em_render_pass_descriptor = em_webgpu.struct_WGPURenderPassDescriptor{
                .nextInChain = null,
                .label = null,
                .colorAttachmentCount = em_color_attachments.len,
                .colorAttachments = &em_color_attachments,
                .depthStencilAttachment = &em_depth_attachment,
                .occlusionQuerySet = null,
                .timestampWrites = null,
            };
            return wgpuCommandEncoderBeginRenderPass(encoder, @ptrCast(&em_render_pass_descriptor));
        } else {
            const em_render_pass_descriptor = em_webgpu.struct_WGPURenderPassDescriptor{
                .nextInChain = null,
                .label = null,
                .colorAttachmentCount = em_color_attachments.len,
                .colorAttachments = &em_color_attachments,
                .depthStencilAttachment = null,
                .occlusionQuerySet = null,
                .timestampWrites = null,
            };
            return wgpuCommandEncoderBeginRenderPass(encoder, @ptrCast(&em_render_pass_descriptor));
        }
    } else {
        // Use Dawn native structs
        const color_attachments = [_]WGPURenderPassColorAttachment{.{
            .nextInChain = null,
            .view = color_texv,
            .depthSlice = WGPU_DEPTH_SLICE_UNDEFINED,
            .resolveTarget = null,
            .loadOp = load_op,
            .storeOp = WGPUStoreOp_Store,
            .clearValue = if (clear_color) |cv| cv else .{ .r = 0, .g = 0, .b = 0, .a = 0 },
        }};

        if (depth_texv) |dtexv| {
            const depth_attachment = WGPURenderPassDepthStencilAttachment{
                .nextInChain = null,
                .view = dtexv,
                .depthLoadOp = load_op,
                .depthStoreOp = WGPUStoreOp_Store,
                .depthClearValue = if (clear_depth) |cd| cd else 0.0,
                .depthReadOnly = false,
                .stencilLoadOp = WGPULoadOp_Undefined,
                .stencilStoreOp = WGPUStoreOp_Undefined,
                .stencilClearValue = 0,
                .stencilReadOnly = false,
            };

            return wgpuCommandEncoderBeginRenderPass(encoder, &WGPURenderPassDescriptor{
                .nextInChain = null,
                .label = WGPUStringView{ .data = null, .length = 0 },
                .colorAttachmentCount = color_attachments.len,
                .colorAttachments = &color_attachments,
                .depthStencilAttachment = &depth_attachment,
                .occlusionQuerySet = null,
                .timestampWrites = null,
            });
        } else {
            return wgpuCommandEncoderBeginRenderPass(encoder, &WGPURenderPassDescriptor{
                .nextInChain = null,
                .label = WGPUStringView{ .data = null, .length = 0 },
                .colorAttachmentCount = color_attachments.len,
                .colorAttachments = &color_attachments,
                .depthStencilAttachment = null,
                .occlusionQuerySet = null,
                .timestampWrites = null,
            });
        }
    }
}

// WebGPU error types
pub const WGPUErrorType_NoError: u32 = 0;
pub const WGPUErrorType_Validation: u32 = 1;
pub const WGPUErrorType_OutOfMemory: u32 = 2;
pub const WGPUErrorType_Internal: u32 = 3;
pub const WGPUErrorType_Unknown: u32 = 4;
pub const WGPUErrorType_DeviceLost: u32 = 5;
pub const WGPUErrorType = u32;

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

pub extern fn simpleDawnValidateTextureView(textureView: WGPUTextureView) bool;

// Add this extern declaration
pub extern fn dawnNativeTestSurfaceTexture() void;

pub extern fn dawnNativeDebugSurfaceTextureStruct() void;
