#include "dawn/native/DawnNative.h"
#include "dawn/dawn_proc.h"
#include "webgpu/webgpu.h"
#include <iostream>

extern "C" {

void* dawnNativeCreateInstance(const WGPUInstanceDescriptor* descriptor) {
    std::cout << "[Dawn] Creating Dawn native instance..." << std::endl;
    
    // Create a Dawn-specific instance descriptor to enable all backends
    dawn::native::DawnInstanceDescriptor dawn_desc;
    dawn_desc.backendValidationLevel = dawn::native::BackendValidationLevel::Disabled;
    dawn_desc.beginCaptureOnStartup = false;
    
    // Chain the Dawn descriptor to the base descriptor
    WGPUInstanceDescriptor instance_desc = {};
    if (descriptor) {
        instance_desc = *descriptor;
    }
    instance_desc.nextInChain = const_cast<WGPUChainedStruct*>(reinterpret_cast<const WGPUChainedStruct*>(&dawn_desc));
    
    auto instance = new dawn::native::Instance(&instance_desc);
    std::cout << "[Dawn] Dawn native instance created: " << instance << std::endl;
    
    return static_cast<void*>(instance);
}

void dawnNativeDestroyInstance(void* instance) {
    std::cout << "[Dawn] Destroying Dawn native instance: " << instance << std::endl;
    delete static_cast<dawn::native::Instance*>(instance);
}

void** dawnNativeInstanceEnumerateAdapters(void* instance_ptr, const WGPURequestAdapterOptions* options) {
    std::cout << "[Dawn] Enumerating adapters..." << std::endl;
    auto instance = static_cast<dawn::native::Instance*>(instance_ptr);
    
    std::cout << "[Dawn] Instance pointer: " << instance << std::endl;
    std::cout << "[Dawn] Backend type requested: " << (options ? options->backendType : 0) << std::endl;
    
    // Try enumerating adapters with no options first (should find all available adapters)
    std::cout << "[Dawn] Enumerating all available adapters..." << std::endl;
    WGPURequestAdapterOptions default_options = {};
    auto all_adapters = instance->EnumerateAdapters(&default_options);
    std::cout << "[Dawn] Found " << all_adapters.size() << " total adapters" << std::endl;
    
    // Now try with the provided options
    auto adapters = instance->EnumerateAdapters(options);
    std::cout << "[Dawn] Found " << adapters.size() << " adapters matching criteria" << std::endl;
    
    // If no adapters found with options, fall back to all adapters
    if (adapters.empty() && !all_adapters.empty()) {
        std::cout << "[Dawn] No adapters found with options, using all available adapters" << std::endl;
        adapters = all_adapters;
    }
    
    // Convert to C-compatible array
    void** result = new void*[adapters.size() + 1];
    for (size_t i = 0; i < adapters.size(); i++) {
        result[i] = new dawn::native::Adapter(adapters[i]);
        std::cout << "[Dawn] Adapter " << i << ": " << result[i] << std::endl;
        
        // Print adapter info for debugging
        auto wgpu_adapter = adapters[i].Get();
        if (wgpu_adapter) {
            std::cout << "[Dawn] Adapter " << i << " WGPUAdapter: " << wgpu_adapter << std::endl;
        }
    }
    result[adapters.size()] = nullptr; // null-terminated
    
    std::cout << "[Dawn] Returning adapter array: " << result << std::endl;
    return result;
}

WGPUDevice dawnNativeAdapterCreateDevice(void* adapter_ptr, const WGPUDeviceDescriptor* descriptor) {
    std::cout << "[Dawn] Creating device from adapter: " << adapter_ptr << std::endl;
    auto adapter = static_cast<dawn::native::Adapter*>(adapter_ptr);
    auto device = adapter->CreateDevice(descriptor);
    std::cout << "[Dawn] Created device: " << device << std::endl;
    return device;
}

// Get the Dawn native proc table
const DawnProcTable* dawnNativeGetProcs() {
    std::cout << "[Dawn] Getting proc table..." << std::endl;
    return &dawn::native::GetProcs();
}

// Set the proc table for Dawn
void dawnNativeSetProcTable() {
    std::cout << "[Dawn] Setting proc table..." << std::endl;
    dawnProcSetProcs(&dawn::native::GetProcs());
}

} 