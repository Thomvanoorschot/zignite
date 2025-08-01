#include "dawn/native/DawnNative.h"
#include "dawn/dawn_proc.h"
#include "webgpu/webgpu_glfw.h"
#include <assert.h>
#include <vector>

static dawn::native::Instance* g_dawn_instance = nullptr;
static std::vector<dawn::native::Adapter> g_adapters;
static WGPUAdapter g_current_adapter = nullptr;
static WGPUDevice g_current_device = nullptr;
static WGPUSurface g_current_surface = nullptr;

extern "C" {

typedef struct DawnNativeInstanceImpl* DawnNativeInstanceHandle;

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
    if (!g_dawn_instance) {
        g_dawn_instance = new dawn::native::Instance();
    }
    
    WGPUInstance instance = g_dawn_instance->Get();
    if (!instance) {
        return false;
    }
    
    g_current_surface = wgpuGlfwCreateSurfaceForWindow(instance, (GLFWwindow*)window);
    if (!g_current_surface) {
        return false;
    }
    
    WGPURequestAdapterOptions options = {};
    options.compatibleSurface = g_current_surface;
    options.powerPreference = WGPUPowerPreference_HighPerformance;
    options.backendType = WGPUBackendType_Undefined;
    options.forceFallbackAdapter = false;
    
    g_adapters = g_dawn_instance->EnumerateAdapters(&options);
    if (g_adapters.empty()) {
        return false;
    }
    
    g_current_adapter = g_adapters[0].Get();
    
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
        return false;
    }
    
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
    
    WGPUSurfaceTexture surfaceTexture = {};
    wgpuSurfaceGetCurrentTexture(g_current_surface, &surfaceTexture);
    return true;
}

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

void dawnNativeTestSurfaceTexture(void) {
    if (!g_current_surface) {
        return;
    }
    
    WGPUSurfaceTexture surfaceTexture = {};
    wgpuSurfaceGetCurrentTexture(g_current_surface, &surfaceTexture);
    
    if (surfaceTexture.texture) {
        WGPUTextureView view = wgpuTextureCreateView(surfaceTexture.texture, nullptr);
        if (view) {
            wgpuTextureViewRelease(view);
        }
    }
}

void dawnNativeDebugSurfaceTextureStruct(void) {
    
    WGPUSurfaceTexture test = {};
    wgpuSurfaceGetCurrentTexture(g_current_surface, &test);
}

bool dawnNativeRecreateSurface(void* window, uint32_t width, uint32_t height) {
    if (!g_dawn_instance || !g_current_device) {
        return false;
    }
    
    if (g_current_surface) {
        wgpuSurfaceUnconfigure(g_current_surface);
        wgpuSurfaceRelease(g_current_surface);
        g_current_surface = nullptr;
    }
    
    WGPUInstance instance = g_dawn_instance->Get();
    g_current_surface = wgpuGlfwCreateSurfaceForWindow(instance, (GLFWwindow*)window);
    if (!g_current_surface) {
        return false;
    }
    
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
    
    return true;
}

} 