#include "dawn/native/DawnNative.h"
#include "dawn/dawn_proc.h"
#include "webgpu/webgpu_glfw.h"
#include <assert.h>
#include <vector>
#include <iostream>

// Global state
static dawn::native::Instance* g_dawn_instance = nullptr;
static std::vector<dawn::native::Adapter> g_adapters;
static WGPUAdapter g_current_adapter = nullptr;
static WGPUDevice g_current_device = nullptr;
static WGPUSurface g_current_surface = nullptr;

extern "C" {

typedef struct DawnNativeInstanceImpl* DawnNativeInstanceHandle;

// Basic Dawn native instance management
DawnNativeInstanceHandle dawnNativeInstanceCreate(void) {
    if (!g_dawn_instance) {
        g_dawn_instance = new dawn::native::Instance();
    }
    return reinterpret_cast<DawnNativeInstanceHandle>(g_dawn_instance);
}

void dawnNativeInstanceDestroy(DawnNativeInstanceHandle handle) {
    if (g_dawn_instance) {
        delete g_dawn_instance;
        g_dawn_instance = nullptr;
    }
    g_adapters.clear();
    g_current_adapter = nullptr;
    g_current_device = nullptr;
    g_current_surface = nullptr;
}

WGPUInstance dawnNativeInstanceGet(DawnNativeInstanceHandle handle) {
    assert(g_dawn_instance);
    return g_dawn_instance->Get();
}

const DawnProcTable* dawnNativeGetProcs(void) {
    return &dawn::native::GetProcs();
}

// Comprehensive initialization function
bool dawnNativeInitializeComplete(void* window, uint32_t width, uint32_t height) {
    std::cout << "[DawnWrapper] Starting complete initialization..." << std::endl;
    
    // Create instance if not exists
    if (!g_dawn_instance) {
        g_dawn_instance = new dawn::native::Instance();
    }
    
    WGPUInstance instance = g_dawn_instance->Get();
    if (!instance) {
        std::cerr << "[DawnWrapper] Failed to get WebGPU instance" << std::endl;
        return false;
    }
    
    // Create surface
    g_current_surface = wgpuGlfwCreateSurfaceForWindow(instance, (GLFWwindow*)window);
    if (!g_current_surface) {
        std::cerr << "[DawnWrapper] Failed to create surface" << std::endl;
        return false;
    }
    std::cout << "[DawnWrapper] Surface created: " << g_current_surface << std::endl;
    
    // Enumerate adapters
    WGPURequestAdapterOptions options = {};
    options.compatibleSurface = g_current_surface;
    options.powerPreference = WGPUPowerPreference_HighPerformance;
    options.backendType = WGPUBackendType_Undefined;
    options.forceFallbackAdapter = false;
    
    g_adapters = g_dawn_instance->EnumerateAdapters(&options);
    std::cout << "[DawnWrapper] Found " << g_adapters.size() << " adapters" << std::endl;
    if (g_adapters.empty()) {
        std::cerr << "[DawnWrapper] No adapters found" << std::endl;
        return false;
    }
    
    g_current_adapter = g_adapters[0].Get();
    std::cout << "[DawnWrapper] Using adapter: " << g_current_adapter << std::endl;
    
    // Create device
    WGPUDeviceDescriptor deviceDesc = {};
    deviceDesc.nextInChain = nullptr;
    deviceDesc.label = {nullptr, 0};
    deviceDesc.requiredFeatureCount = 0;
    deviceDesc.requiredFeatures = nullptr;
    deviceDesc.requiredLimits = nullptr;
    deviceDesc.defaultQueue.nextInChain = nullptr;
    deviceDesc.defaultQueue.label = {nullptr, 0};
    
    g_current_device = g_adapters[0].CreateDevice(&deviceDesc);
    if (!g_current_device) {
        std::cerr << "[DawnWrapper] Failed to create device" << std::endl;
        return false;
    }
    std::cout << "[DawnWrapper] Device created: " << g_current_device << std::endl;
    
    // Configure surface
    WGPUSurfaceConfiguration config = {};
    config.nextInChain = nullptr;
    config.device = g_current_device;
    config.format = WGPUTextureFormat_BGRA8Unorm;
    config.usage = WGPUTextureUsage_RenderAttachment;
    config.viewFormatCount = 0;
    config.viewFormats = nullptr;
    config.alphaMode = WGPUCompositeAlphaMode_Opaque;
    config.width = width;
    config.height = height;
    config.presentMode = WGPUPresentMode_Fifo;
    
    wgpuSurfaceConfigure(g_current_surface, &config);
    std::cout << "[DawnWrapper] Surface configured: " << width << "x" << height << std::endl;
    
    // Test surface texture acquisition immediately
    WGPUSurfaceTexture surfaceTexture = {};
    wgpuSurfaceGetCurrentTexture(g_current_surface, &surfaceTexture);
    std::cout << "[DawnWrapper] Test surface texture - Status: " << static_cast<int>(surfaceTexture.status) 
              << ", Texture: " << surfaceTexture.texture << std::endl;
    
    std::cout << "[DawnWrapper] Complete initialization successful" << std::endl;
    return true;
}

// Getter functions
WGPUInstance dawnNativeGetInstance(void) {
    return g_dawn_instance ? g_dawn_instance->Get() : nullptr;
}

WGPUAdapter dawnNativeGetAdapter(void) {
    return g_current_adapter;
}

WGPUDevice dawnNativeGetDevice(void) {
    return g_current_device;
}

WGPUSurface dawnNativeGetSurface(void) {
    return g_current_surface;
}

WGPUQueue dawnNativeGetQueue(void) {
    return g_current_device ? wgpuDeviceGetQueue(g_current_device) : nullptr;
}

// Debug function to test surface texture acquisition
void dawnNativeTestSurfaceTexture(void) {
    if (!g_current_surface) {
        std::cout << "[DawnWrapper] No surface available for testing" << std::endl;
        return;
    }
    
    WGPUSurfaceTexture surfaceTexture = {};
    wgpuSurfaceGetCurrentTexture(g_current_surface, &surfaceTexture);
    
    std::cout << "[DawnWrapper] Surface texture test:" << std::endl;
    std::cout << "[DawnWrapper]   Status: " << static_cast<int>(surfaceTexture.status) << std::endl;
    std::cout << "[DawnWrapper]   Texture: " << surfaceTexture.texture << std::endl;
    
    if (surfaceTexture.texture) {
        WGPUTextureView view = wgpuTextureCreateView(surfaceTexture.texture, nullptr);
        std::cout << "[DawnWrapper]   Texture view: " << view << std::endl;
        if (view) {
            wgpuTextureViewRelease(view);
        }
    }
}

// Debug function to check struct layout
void dawnNativeDebugSurfaceTextureStruct(void) {
    std::cout << "[DawnWrapper] WGPUSurfaceTexture struct layout:" << std::endl;
    std::cout << "[DawnWrapper]   sizeof(WGPUSurfaceTexture): " << sizeof(WGPUSurfaceTexture) << std::endl;
    std::cout << "[DawnWrapper]   offsetof(texture): " << offsetof(WGPUSurfaceTexture, texture) << std::endl;
    std::cout << "[DawnWrapper]   offsetof(status): " << offsetof(WGPUSurfaceTexture, status) << std::endl;
    std::cout << "[DawnWrapper]   sizeof(texture): " << sizeof(((WGPUSurfaceTexture*)0)->texture) << std::endl;
    std::cout << "[DawnWrapper]   sizeof(status): " << sizeof(((WGPUSurfaceTexture*)0)->status) << std::endl;
    
    // Test with actual values
    WGPUSurfaceTexture test = {};
    wgpuSurfaceGetCurrentTexture(g_current_surface, &test);
    std::cout << "[DawnWrapper] Test values:" << std::endl;
    std::cout << "[DawnWrapper]   texture: " << test.texture << std::endl;
    std::cout << "[DawnWrapper]   status: " << static_cast<uint32_t>(test.status) << std::endl;
}

} 