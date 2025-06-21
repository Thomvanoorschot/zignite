#ifndef DAWN_NATIVE_WRAPPER_H
#define DAWN_NATIVE_WRAPPER_H

#include <webgpu/webgpu.h>

#ifdef __cplusplus
extern "C" {
#endif

void* dawnNativeCreateInstance(const WGPUInstanceDescriptor* descriptor);
void dawnNativeDestroyInstance(void* instance);
void** dawnNativeInstanceEnumerateAdapters(void* instance, const WGPURequestAdapterOptions* options);
WGPUDevice dawnNativeAdapterCreateDevice(void* adapter, const WGPUDeviceDescriptor* descriptor);
const WGPUProcTable* dawnNativeGetProcs();
void dawnNativeSetProcTable();

#ifdef __cplusplus
}
#endif

#endif // DAWN_NATIVE_WRAPPER_H 