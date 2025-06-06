// ZIGNITE: Added stdbool.h
#include <stdbool.h> 
#ifdef CIMGUI_USE_GLFW
#ifdef CIMGUI_DEFINE_ENUMS_AND_STRUCTS

typedef struct GLFWwindow GLFWwindow;
typedef struct GLFWmonitor GLFWmonitor;
struct GLFWwindow;
struct GLFWmonitor;
#endif //CIMGUI_DEFINE_ENUMS_AND_STRUCTS
CIMGUI_API bool ImGui_ImplGlfw_InitForOpenGL(GLFWwindow* window,bool install_callbacks);
CIMGUI_API bool ImGui_ImplGlfw_InitForVulkan(GLFWwindow* window,bool install_callbacks);
CIMGUI_API bool ImGui_ImplGlfw_InitForOther(GLFWwindow* window,bool install_callbacks);
CIMGUI_API void ImGui_ImplGlfw_Shutdown(void);
CIMGUI_API void ImGui_ImplGlfw_NewFrame(void);
CIMGUI_API void ImGui_ImplGlfw_InstallCallbacks(GLFWwindow* window);
CIMGUI_API void ImGui_ImplGlfw_RestoreCallbacks(GLFWwindow* window);
CIMGUI_API void ImGui_ImplGlfw_SetCallbacksChainForAllWindows(bool chain_for_all_windows);
CIMGUI_API void ImGui_ImplGlfw_WindowFocusCallback(GLFWwindow* window,int focused);
CIMGUI_API void ImGui_ImplGlfw_CursorEnterCallback(GLFWwindow* window,int entered);
CIMGUI_API void ImGui_ImplGlfw_CursorPosCallback(GLFWwindow* window,double x,double y);
CIMGUI_API void ImGui_ImplGlfw_MouseButtonCallback(GLFWwindow* window,int button,int action,int mods);
CIMGUI_API void ImGui_ImplGlfw_ScrollCallback(GLFWwindow* window,double xoffset,double yoffset);
CIMGUI_API void ImGui_ImplGlfw_KeyCallback(GLFWwindow* window,int key,int scancode,int action,int mods);
CIMGUI_API void ImGui_ImplGlfw_CharCallback(GLFWwindow* window,unsigned int c);
CIMGUI_API void ImGui_ImplGlfw_MonitorCallback(GLFWmonitor* monitor,int event);
CIMGUI_API void ImGui_ImplGlfw_Sleep(int milliseconds);

#endif
#ifdef CIMGUI_USE_WGPU
#ifdef CIMGUI_DEFINE_ENUMS_AND_STRUCTS

typedef struct ImGui_ImplWGPU_InitInfo ImGui_ImplWGPU_InitInfo;
struct ImGui_ImplWGPU_InitInfo
{
    WGPUDevice Device;
    int NumFramesInFlight;
    WGPUTextureFormat RenderTargetFormat;
    WGPUTextureFormat DepthStencilFormat;
    WGPUMultisampleState PipelineMultisampleState;
};
typedef struct ImGui_ImplWGPU_RenderState ImGui_ImplWGPU_RenderState;
struct ImGui_ImplWGPU_RenderState
{
    WGPUDevice Device;
    WGPURenderPassEncoder RenderPassEncoder;
};
#endif //CIMGUI_DEFINE_ENUMS_AND_STRUCTS
CIMGUI_API bool ImGui_ImplWGPU_Init(ImGui_ImplWGPU_InitInfo* init_info);
CIMGUI_API void ImGui_ImplWGPU_Shutdown(void);
CIMGUI_API void ImGui_ImplWGPU_NewFrame(void);
CIMGUI_API void ImGui_ImplWGPU_RenderDrawData(ImDrawData* draw_data,WGPURenderPassEncoder pass_encoder);
CIMGUI_API bool ImGui_ImplWGPU_CreateDeviceObjects(void);
CIMGUI_API void ImGui_ImplWGPU_InvalidateDeviceObjects(void);

#endif
