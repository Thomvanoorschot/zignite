#include "dawn/native/DawnNative.h"
#include "webgpu/webgpu.h"

extern "C" {

void* dawnNativeCreateInstance(const WGPUInstanceDescriptor* descriptor) {
    auto instance = new dawn::native::Instance(descriptor);
    return static_cast<void*>(instance);
}

void dawnNativeDestroyInstance(void* instance) {
    delete static_cast<dawn::native::Instance*>(instance);
}

void** dawnNativeInstanceEnumerateAdapters(void* instance_ptr, const WGPURequestAdapterOptions* options) {
    auto instance = static_cast<dawn::native::Instance*>(instance_ptr);
    auto adapters = instance->EnumerateAdapters(options);
    
    // Convert to C-compatible array
    void** result = new void*[adapters.size() + 1];
    for (size_t i = 0; i < adapters.size(); i++) {
        result[i] = new dawn::native::Adapter(adapters[i]);
    }
    result[adapters.size()] = nullptr; // null-terminated
    return result;
}

WGPUDevice dawnNativeAdapterCreateDevice(void* adapter_ptr, const WGPUDeviceDescriptor* descriptor) {
    auto adapter = static_cast<dawn::native::Adapter*>(adapter_ptr);
    return adapter->CreateDevice(descriptor);
}

// For now, just provide a way to get the proc table
// You'll need to link against the appropriate Dawn library
extern const WGPUProcTable* wgpuGetProcTable();

const WGPUProcTable* dawnNativeGetProcs() {
    return wgpuGetProcTable();
}

void dawnNativeSetProcTable() {
    wgpuDeviceSetProcTable(&dawn::native::GetProcs());
}

} 