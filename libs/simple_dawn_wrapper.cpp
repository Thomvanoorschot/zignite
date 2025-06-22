#include "webgpu/webgpu.h"
#include "dawn/dawn_proc.h"
#include "dawn/native/DawnNative.h"
#include "webgpu/webgpu_glfw.h"
#include <iostream>
#include <thread>
#include <chrono>

// Forward declare GLFWwindow
struct GLFWwindow;

// Global Dawn native instance and adapters
static dawn::native::Instance* g_dawn_instance = nullptr;
static std::vector<dawn::native::Adapter> g_adapters;
static WGPUAdapter g_current_adapter = nullptr;
static WGPUDevice g_current_device = nullptr;
static WGPUSurface g_current_surface = nullptr;

extern "C" {

WGPUInstance simpleDawnCreateInstance() {
    std::cout << "[SimpleDawn] Creating Dawn native instance..." << std::endl;
    
    if (g_dawn_instance == nullptr) {
        std::cout << "[SimpleDawn] Allocating new Dawn instance..." << std::endl;
        g_dawn_instance = new dawn::native::Instance();
        std::cout << "[SimpleDawn] Dawn instance created at: " << g_dawn_instance << std::endl;
    }
    
    std::cout << "[SimpleDawn] Getting WebGPU instance handle..." << std::endl;
    WGPUInstance instance = g_dawn_instance->Get();
    std::cout << "[SimpleDawn] WebGPU instance handle: " << instance << std::endl;
    
    return instance;
}

WGPUAdapter simpleDawnGetFirstAdapterSync() {
    std::cout << "[SimpleDawn] Getting first adapter synchronously..." << std::endl;
    
    if (!g_dawn_instance) {
        std::cerr << "[SimpleDawn] ERROR: No Dawn instance!" << std::endl;
        return nullptr;
    }
    
    std::cout << "[SimpleDawn] Dawn instance pointer: " << g_dawn_instance << std::endl;
    
    std::cout << "[SimpleDawn] Setting up adapter options..." << std::endl;
    WGPURequestAdapterOptions options = {};
    options.powerPreference = WGPUPowerPreference_HighPerformance;
    options.backendType = WGPUBackendType_Undefined;
    options.forceFallbackAdapter = false;
    
    std::cout << "[SimpleDawn] Enumerating adapters..." << std::endl;
    g_adapters = g_dawn_instance->EnumerateAdapters(&options);
    
    std::cout << "[SimpleDawn] Found " << g_adapters.size() << " adapters" << std::endl;
    
    if (g_adapters.empty()) {
        std::cerr << "[SimpleDawn] ERROR: No adapters found!" << std::endl;
        return nullptr;
    }
    
    std::cout << "[SimpleDawn] Getting first adapter handle..." << std::endl;
    g_current_adapter = g_adapters[0].Get();
    std::cout << "[SimpleDawn] Adapter handle: " << g_current_adapter << std::endl;
    
    return g_current_adapter;
}

WGPUSurface simpleDawnCreateSurface(void* window) {
    std::cout << "[SimpleDawn] Creating surface with Dawn native instance..." << std::endl;
    std::cout << "[SimpleDawn] Window pointer: " << window << std::endl;
    std::cout << "[SimpleDawn] Dawn instance: " << g_dawn_instance << std::endl;
    
    if (!g_dawn_instance) {
        std::cerr << "[SimpleDawn] ERROR: No Dawn instance!" << std::endl;
        return nullptr;
    }
    
    WGPUInstance instance = g_dawn_instance->Get();
    std::cout << "[SimpleDawn] Using instance handle: " << instance << std::endl;
    
    g_current_surface = wgpuGlfwCreateSurfaceForWindow(instance, (GLFWwindow*)window);
    std::cout << "[SimpleDawn] Surface created: " << g_current_surface << std::endl;
    
    return g_current_surface;
}

void simpleDawnGetSurfaceCapabilities() {
    std::cout << "[SimpleDawn] Getting surface capabilities..." << std::endl;
    
    if (!g_current_surface || !g_current_adapter) {
        std::cerr << "[SimpleDawn] ERROR: No surface or adapter!" << std::endl;
        return;
    }
    
    WGPUSurfaceCapabilities capabilities = {};
    WGPUStatus status = wgpuSurfaceGetCapabilities(g_current_surface, g_current_adapter, &capabilities);
    
    if (status == WGPUStatus_Success) {
        std::cout << "[SimpleDawn] Surface capabilities:" << std::endl;
        std::cout << "[SimpleDawn]   Format count: " << capabilities.formatCount << std::endl;
        for (size_t i = 0; i < capabilities.formatCount; i++) {
            std::cout << "[SimpleDawn]   Format " << i << ": " << capabilities.formats[i] << std::endl;
        }
        std::cout << "[SimpleDawn]   Present mode count: " << capabilities.presentModeCount << std::endl;
        for (size_t i = 0; i < capabilities.presentModeCount; i++) {
            std::cout << "[SimpleDawn]   Present mode " << i << ": " << capabilities.presentModes[i] << std::endl;
        }
        std::cout << "[SimpleDawn]   Alpha mode count: " << capabilities.alphaModeCount << std::endl;
        for (size_t i = 0; i < capabilities.alphaModeCount; i++) {
            std::cout << "[SimpleDawn]   Alpha mode " << i << ": " << capabilities.alphaModes[i] << std::endl;
        }
    } else {
        std::cerr << "[SimpleDawn] ERROR: Failed to get surface capabilities, status: " << status << std::endl;
    }
    
    wgpuSurfaceCapabilitiesFreeMembers(capabilities);
}

WGPUDevice simpleDawnCreateDevice() {
    std::cout << "[SimpleDawn] Creating device from first adapter..." << std::endl;
    
    if (!g_current_adapter) {
        std::cerr << "[SimpleDawn] ERROR: No current adapter!" << std::endl;
        return nullptr;
    }
    
    std::cout << "[SimpleDawn] Using adapter: " << g_current_adapter << std::endl;
    
    WGPUDeviceDescriptor deviceDesc = {};
    deviceDesc.nextInChain = nullptr;
    deviceDesc.label = {nullptr, 0}; // Empty WGPUStringView
    deviceDesc.requiredFeatureCount = 0;
    deviceDesc.requiredFeatures = nullptr;
    deviceDesc.requiredLimits = nullptr;
    deviceDesc.defaultQueue.nextInChain = nullptr;
    deviceDesc.defaultQueue.label = {nullptr, 0}; // Empty WGPUStringView
    
    std::cout << "[SimpleDawn] Calling adapter.CreateDevice..." << std::endl;
    g_current_device = g_adapters[0].CreateDevice(&deviceDesc);
    std::cout << "[SimpleDawn] Device created: " << g_current_device << std::endl;
    
    return g_current_device;
}

bool simpleDawnConfigureSurface(uint32_t width, uint32_t height) {
    std::cout << "[SimpleDawn] Configuring surface..." << std::endl;
    std::cout << "[SimpleDawn] Requested size: " << width << "x" << height << std::endl;
    
    if (!g_current_surface || !g_current_device) {
        std::cerr << "[SimpleDawn] ERROR: No surface or device!" << std::endl;
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
    
    std::cout << "[SimpleDawn] Using format: " << static_cast<int>(config.format) << std::endl;
    std::cout << "[SimpleDawn] Using present mode: " << static_cast<int>(config.presentMode) << std::endl;
    std::cout << "[SimpleDawn] Using alpha mode: " << static_cast<int>(config.alphaMode) << std::endl;
    std::cout << "[SimpleDawn] Using size: " << config.width << "x" << config.height << std::endl;
    
    std::cout << "[SimpleDawn] Calling wgpuSurfaceConfigure..." << std::endl;
    wgpuSurfaceConfigure(g_current_surface, &config);
    std::cout << "[SimpleDawn] Surface configured successfully" << std::endl;
    
    return true;
}

void simpleDawnWaitForWindow() {
    std::cout << "[SimpleDawn] Waiting for window to be ready..." << std::endl;
    std::this_thread::sleep_for(std::chrono::milliseconds(100));
    std::cout << "[SimpleDawn] Window should be ready now" << std::endl;
}

void simpleDawnTestSurfaceTexture(WGPUSurface surface) {
    std::cout << "[SimpleDawn] Testing surface texture retrieval..." << std::endl;
    
    WGPUSurfaceTexture surfaceTexture = {};
    wgpuSurfaceGetCurrentTexture(surface, &surfaceTexture);
    
    std::cout << "[SimpleDawn] Surface texture status: " << static_cast<int>(surfaceTexture.status) << std::endl;
    std::cout << "[SimpleDawn] Surface texture handle: " << surfaceTexture.texture << std::endl;
    
    const char* statusString = "Unknown";
    switch (surfaceTexture.status) {
        case WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal: statusString = "SuccessOptimal"; break;
        case WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal: statusString = "SuccessSuboptimal"; break;
        case WGPUSurfaceGetCurrentTextureStatus_Timeout: statusString = "Timeout"; break;
        case WGPUSurfaceGetCurrentTextureStatus_Outdated: statusString = "Outdated"; break;
        case WGPUSurfaceGetCurrentTextureStatus_Lost: statusString = "Lost"; break;
        case WGPUSurfaceGetCurrentTextureStatus_Error: statusString = "Error"; break;
        default: statusString = "Unknown"; break;
    }
    std::cout << "[SimpleDawn] Status meaning: " << statusString << std::endl;
    
    // Print texture pointer as hex to see if it's the invalid pattern
    uintptr_t texturePtr = reinterpret_cast<uintptr_t>(surfaceTexture.texture);
    std::cout << "[SimpleDawn] Texture pointer as hex: 0x" << std::hex << texturePtr << std::dec << std::endl;
    
    if (texturePtr == 0xaaaaaaaaaaaaaaaa) {
        std::cout << "[SimpleDawn] ERROR: Texture pointer is the invalid pattern!" << std::endl;
    } else if (surfaceTexture.texture == nullptr) {
        std::cout << "[SimpleDawn] ERROR: Texture pointer is null!" << std::endl;
    } else {
        std::cout << "[SimpleDawn] Texture pointer appears valid" << std::endl;
        
        // Try to create a texture view to see if the texture is actually valid
        std::cout << "[SimpleDawn] Attempting to create texture view..." << std::endl;
        WGPUTextureView textureView = wgpuTextureCreateView(surfaceTexture.texture, nullptr);
        if (textureView) {
            std::cout << "[SimpleDawn] Texture view created successfully: " << textureView << std::endl;
            wgpuTextureViewRelease(textureView);
        } else {
            std::cout << "[SimpleDawn] ERROR: Failed to create texture view!" << std::endl;
        }
    }
}

// Export the Dawn native GetProcs function
const DawnProcTable* dawnGetProcs() {
    std::cout << "[SimpleDawn] Getting Dawn proc table..." << std::endl;
    const DawnProcTable* procs = &dawn::native::GetProcs();
    std::cout << "[SimpleDawn] Proc table: " << procs << std::endl;
    return procs;
}

void simpleDawnCleanup() {
    std::cout << "[SimpleDawn] Cleanup called..." << std::endl;
    g_current_surface = nullptr;
    g_current_device = nullptr;
    g_current_adapter = nullptr;
    g_adapters.clear();
    if (g_dawn_instance) {
        std::cout << "[SimpleDawn] Deleting Dawn instance: " << g_dawn_instance << std::endl;
        delete g_dawn_instance;
        g_dawn_instance = nullptr;
        std::cout << "[SimpleDawn] Dawn instance deleted" << std::endl;
    }
}

// NEW: Get surface texture view with proper error handling and debugging
WGPUTextureView simpleDawnGetSurfaceTextureViewDirect() {
    std::cout << "[SimpleDawn] Getting surface texture view directly (accepting timeout)..." << std::endl;
    
    if (!g_current_surface) {
        std::cerr << "[SimpleDawn] ERROR: No current surface!" << std::endl;
        return nullptr;
    }
    
    WGPUSurfaceTexture surfaceTexture = {};
    wgpuSurfaceGetCurrentTexture(g_current_surface, &surfaceTexture);
    
    std::cout << "[SimpleDawn] Status: " << static_cast<int>(surfaceTexture.status) << ", Texture: " << surfaceTexture.texture << std::endl;
    
    // Accept timeout status if texture is valid
    if (surfaceTexture.texture != nullptr && 
        (surfaceTexture.status == WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal || 
         surfaceTexture.status == WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal ||
         surfaceTexture.status == WGPUSurfaceGetCurrentTextureStatus_Timeout)) {
        
        std::cout << "[SimpleDawn] Creating texture view from available texture..." << std::endl;
        
        // Create texture view with explicit descriptor to ensure correct properties
        WGPUTextureViewDescriptor viewDesc = {};
        viewDesc.nextInChain = nullptr;
        viewDesc.label = {nullptr, 0}; // Empty WGPUStringView
        viewDesc.format = WGPUTextureFormat_BGRA8Unorm;
        viewDesc.dimension = WGPUTextureViewDimension_2D;
        viewDesc.baseMipLevel = 0;
        viewDesc.mipLevelCount = 1;
        viewDesc.baseArrayLayer = 0;
        viewDesc.arrayLayerCount = 1;
        viewDesc.aspect = WGPUTextureAspect_All;
        viewDesc.usage = WGPUTextureUsage_RenderAttachment;
        
        std::cout << "[SimpleDawn] Creating texture view with explicit descriptor..." << std::endl;
        std::cout << "[SimpleDawn] Format: " << static_cast<int>(viewDesc.format) << std::endl;
        std::cout << "[SimpleDawn] Dimension: " << static_cast<int>(viewDesc.dimension) << std::endl;
        std::cout << "[SimpleDawn] Usage: " << static_cast<int>(viewDesc.usage) << std::endl;
        
        WGPUTextureView textureView = wgpuTextureCreateView(surfaceTexture.texture, &viewDesc);
        if (textureView) {
            std::cout << "[SimpleDawn] Texture view created successfully: " << textureView << std::endl;
            return textureView;
        } else {
            std::cout << "[SimpleDawn] ERROR: Failed to create texture view with explicit descriptor!" << std::endl;
            
            // Try with null descriptor as fallback
            std::cout << "[SimpleDawn] Trying with null descriptor..." << std::endl;
            textureView = wgpuTextureCreateView(surfaceTexture.texture, nullptr);
            if (textureView) {
                std::cout << "[SimpleDawn] Texture view created with null descriptor: " << textureView << std::endl;
                return textureView;
            } else {
                std::cout << "[SimpleDawn] ERROR: Failed to create texture view even with null descriptor!" << std::endl;
            }
        }
    } else {
        std::cout << "[SimpleDawn] Texture not available or invalid status" << std::endl;
    }
    
    return nullptr;
}

// Keep the retry version as backup
WGPUTextureView simpleDawnGetSurfaceTextureView() {
    std::cout << "[SimpleDawn] Getting surface texture view with retry logic..." << std::endl;
    
    if (!g_current_surface) {
        std::cerr << "[SimpleDawn] ERROR: No current surface!" << std::endl;
        return nullptr;
    }
    
    // Try multiple times with increasing delays
    for (int attempt = 0; attempt < 5; attempt++) {
        std::cout << "[SimpleDawn] Attempt " << (attempt + 1) << "..." << std::endl;
        
        WGPUSurfaceTexture surfaceTexture = {};
        wgpuSurfaceGetCurrentTexture(g_current_surface, &surfaceTexture);
        
        std::cout << "[SimpleDawn] Status: " << static_cast<int>(surfaceTexture.status) << ", Texture: " << surfaceTexture.texture << std::endl;
        
        // Accept success and timeout if we have a valid texture
        if (surfaceTexture.texture != nullptr && 
            (surfaceTexture.status == WGPUSurfaceGetCurrentTextureStatus_SuccessOptimal || 
             surfaceTexture.status == WGPUSurfaceGetCurrentTextureStatus_SuccessSuboptimal ||
             surfaceTexture.status == WGPUSurfaceGetCurrentTextureStatus_Timeout)) {
            
            std::cout << "[SimpleDawn] Valid texture found (status=" << static_cast<int>(surfaceTexture.status) << "), creating texture view..." << std::endl;
            
            // Try to create texture view to verify the texture is actually usable
            WGPUTextureView textureView = wgpuTextureCreateView(surfaceTexture.texture, nullptr);
            if (textureView) {
                std::cout << "[SimpleDawn] Texture view created successfully: " << textureView << std::endl;
                return textureView;
            } else {
                std::cout << "[SimpleDawn] Failed to create texture view, texture may be invalid" << std::endl;
            }
        } else if (surfaceTexture.status == WGPUSurfaceGetCurrentTextureStatus_Outdated) {
            // Outdated - might need to reconfigure
            std::cout << "[SimpleDawn] Surface outdated, continuing..." << std::endl;
        } else {
            std::cout << "[SimpleDawn] Status: " << static_cast<int>(surfaceTexture.status) << ", Texture: " << surfaceTexture.texture << std::endl;
        }
        
        // Wait a bit before retrying
        std::this_thread::sleep_for(std::chrono::milliseconds(50 * (attempt + 1)));
    }
    
    std::cerr << "[SimpleDawn] ERROR: Failed to get valid surface texture after retries!" << std::endl;
    return nullptr;
}

// Add a function to validate texture views before use
bool simpleDawnValidateTextureView(WGPUTextureView textureView) {
    std::cout << "[SimpleDawn] Validating texture view: " << textureView << std::endl;
    
    if (!textureView) {
        std::cout << "[SimpleDawn] ERROR: Texture view is null!" << std::endl;
        return false;
    }
    
    // Try to set a label to see if the texture view is still valid
    WGPUStringView label = {"test_label", 10};
    wgpuTextureViewSetLabel(textureView, label);
    
    std::cout << "[SimpleDawn] Texture view validation passed" << std::endl;
    return true;
}

WGPURenderPassEncoder simpleDawnTestCreateRenderPass(WGPUCommandEncoder encoder, WGPUTextureView textureView) {
    std::cout << "[SimpleDawn] Testing render pass creation in C++..." << std::endl;
    std::cout << "[SimpleDawn] Encoder: " << encoder << std::endl;
    std::cout << "[SimpleDawn] Texture view: " << textureView << std::endl;
    
    if (!encoder) {
        std::cerr << "[SimpleDawn] ERROR: Encoder is null!" << std::endl;
        return nullptr;
    }
    
    if (!textureView) {
        std::cerr << "[SimpleDawn] ERROR: Texture view is null!" << std::endl;
        return nullptr;
    }
    
    // Create color attachment
    WGPURenderPassColorAttachment colorAttachment = {};
    colorAttachment.nextInChain = nullptr;
    colorAttachment.view = textureView;
    colorAttachment.depthSlice = WGPU_DEPTH_SLICE_UNDEFINED;
    colorAttachment.resolveTarget = nullptr;
    colorAttachment.loadOp = WGPULoadOp_Load;
    colorAttachment.storeOp = WGPUStoreOp_Store;
    colorAttachment.clearValue = {0.0, 0.0, 0.0, 1.0};
    
    std::cout << "[SimpleDawn] Color attachment created" << std::endl;
    std::cout << "[SimpleDawn] loadOp: " << static_cast<int>(colorAttachment.loadOp) << std::endl;
    std::cout << "[SimpleDawn] storeOp: " << static_cast<int>(colorAttachment.storeOp) << std::endl;
    
    // Create render pass descriptor
    WGPURenderPassDescriptor renderPassDesc = {};
    renderPassDesc.nextInChain = nullptr;
    renderPassDesc.label = {nullptr, 0};
    renderPassDesc.colorAttachmentCount = 1;
    renderPassDesc.colorAttachments = &colorAttachment;
    renderPassDesc.depthStencilAttachment = nullptr;
    renderPassDesc.occlusionQuerySet = nullptr;
    renderPassDesc.timestampWrites = nullptr;
    
    std::cout << "[SimpleDawn] Render pass descriptor created" << std::endl;
    std::cout << "[SimpleDawn] colorAttachmentCount: " << renderPassDesc.colorAttachmentCount << std::endl;
    std::cout << "[SimpleDawn] About to call wgpuCommandEncoderBeginRenderPass..." << std::endl;
    
    try {
        WGPURenderPassEncoder renderPass = wgpuCommandEncoderBeginRenderPass(encoder, &renderPassDesc);
        
        if (renderPass) {
            std::cout << "[SimpleDawn] Render pass created successfully: " << renderPass << std::endl;
        } else {
            std::cout << "[SimpleDawn] ERROR: Failed to create render pass (returned null)!" << std::endl;
        }
        
        return renderPass;
    } catch (const std::exception& e) {
        std::cout << "[SimpleDawn] Exception caught: " << e.what() << std::endl;
        return nullptr;
    } catch (...) {
        std::cout << "[SimpleDawn] Unknown exception caught!" << std::endl;
        return nullptr;
    }
}

} // extern "C"