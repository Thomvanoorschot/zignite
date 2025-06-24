const std = @import("std");

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
pub const WGPUSwapChain = ?*opaque {};

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

// Surface API constants
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

// Error types
pub const WGPUErrorType_NoError: u32 = 0;
pub const WGPUErrorType_Validation: u32 = 1;
pub const WGPUErrorType_OutOfMemory: u32 = 2;
pub const WGPUErrorType_Internal: u32 = 3;
pub const WGPUErrorType_Unknown: u32 = 4;
pub const WGPUErrorType_DeviceLost: u32 = 5;
pub const WGPUErrorType = u32;

// Status enums
pub const WGPURequestAdapterStatus = u32;
pub const WGPURequestAdapterStatus_Success: u32 = 0;
pub const WGPURequestAdapterStatus_Unavailable: u32 = 1;
pub const WGPURequestAdapterStatus_Error: u32 = 2;
pub const WGPURequestAdapterStatus_Unknown: u32 = 3;

pub const WGPURequestDeviceStatus = u32;
pub const WGPURequestDeviceStatus_Success: u32 = 0;
pub const WGPURequestDeviceStatus_Error: u32 = 1;
pub const WGPURequestDeviceStatus_Unknown: u32 = 2;

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
    forceFallbackAdapter: bool,
};

pub const WGPUDeviceDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
    requiredFeatureCount: usize,
    requiredFeatures: ?[*]const u32,
    requiredLimits: ?*const anyopaque,
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

pub const WGPUSurfaceConfiguration = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    device: WGPUDevice,
    format: u32,
    usage: u32,
    viewFormatCount: usize,
    viewFormats: ?[*]const u32,
    alphaMode: u32,
    width: u32,
    height: u32,
    presentMode: u32,
};

pub const WGPUSurfaceTexture = extern struct {
    _unknown_field: u64,
    texture: WGPUTexture,
    status: u32,
    _padding: u32 = undefined,
};

pub const WGPUTextureViewDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
    format: u32,
    dimension: u32,
    baseMipLevel: u32,
    mipLevelCount: u32,
    baseArrayLayer: u32,
    arrayLayerCount: u32,
    aspect: u32,
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

// Swapchain types (older API)
pub const WGPUSwapChainDescriptor = extern struct {
    nextInChain: ?*const WGPUChainedStruct,
    label: ?[*:0]const u8,
    usage: u32,
    format: u32,
    width: u32,
    height: u32,
    presentMode: u32,
};

// Dawn-specific proc table
pub const DawnProcTable = opaque {};

// Common WebGPU function declarations
pub extern fn wgpuCreateInstance(descriptor: ?*const WGPUInstanceDescriptor) WGPUInstance;
pub extern fn wgpuInstanceCreateSurface(instance: WGPUInstance, descriptor: *const WGPUSurfaceDescriptor) WGPUSurface;
pub extern fn wgpuDeviceGetQueue(device: WGPUDevice) WGPUQueue;
pub extern fn wgpuSurfaceConfigure(surface: WGPUSurface, config: *const WGPUSurfaceConfiguration) void;
pub extern fn wgpuSurfaceGetCurrentTexture(surface: WGPUSurface, surfaceTexture: *WGPUSurfaceTexture) void;
pub extern fn wgpuSurfacePresent(surface: WGPUSurface) void;
pub extern fn wgpuSurfaceUnconfigure(surface: WGPUSurface) void;
pub extern fn wgpuTextureCreateView(texture: WGPUTexture, descriptor: ?*const WGPUTextureViewDescriptor) WGPUTextureView;
pub extern fn wgpuDeviceCreateCommandEncoder(device: WGPUDevice, descriptor: ?*const WGPUCommandEncoderDescriptor) WGPUCommandEncoder;
pub extern fn wgpuCommandEncoderFinish(encoder: WGPUCommandEncoder, descriptor: ?*const WGPUCommandBufferDescriptor) WGPUCommandBuffer;
pub extern fn wgpuQueueSubmit(queue: WGPUQueue, commandCount: usize, commands: [*]const WGPUCommandBuffer) void;
pub extern fn wgpuRenderPassEncoderEnd(renderPassEncoder: WGPURenderPassEncoder) void;

// Release functions
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

// Swapchain functions (older API)
pub extern fn wgpuDeviceCreateSwapChain(device: WGPUDevice, surface: WGPUSurface, descriptor: *const WGPUSwapChainDescriptor) WGPUSwapChain;
pub extern fn wgpuSwapChainGetCurrentTextureView(swapChain: WGPUSwapChain) WGPUTextureView;
pub extern fn wgpuSwapChainPresent(swapChain: WGPUSwapChain) void;
pub extern fn wgpuSwapChainRelease(swapChain: WGPUSwapChain) void;
