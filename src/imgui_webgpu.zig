const imgui_glfw = @import("imgui_glfw.zig");
const imgui = @import("imgui.zig");
const zglfw = @import("imgui_glfw.zig");
pub fn init(
    window: *zglfw.GLFWwindow, // zglfw.Window
    wgpu_device: *const anyopaque, // wgpu.Device
    wgpu_swap_chain_format: u32, // wgpu.TextureFormat
    // wgpu_depth_format: u32, // wgpu.TextureFormat
) void {
    _ = imgui_glfw.cImGui_ImplGlfw_InitForOther(window, true);

    _ = wgpu_device;
    _ = wgpu_swap_chain_format;
    // var info = ImGui_ImplWGPU_InitInfo{
    //     .Device = @ptrCast(@constCast(wgpu_device)),
    //     .NumFramesInFlight = 1,
    //     .RenderTargetFormat = wgpu_swap_chain_format,
    //     // .depth_format = wgpu_depth_format,
    //     .PipelineMultisampleState = .{},
    // };

    // if (!cImGui_ImplWGPU_Init(&info)) {
    //     unreachable;
    // }
}

pub fn deinit() void {
    cImGui_ImplWGPU_Shutdown();
    imgui_glfw.deinit();
}

pub fn newFrame(fb_width: u32, fb_height: u32) void {
    cImGui_ImplWGPU_NewFrame();
    imgui_glfw.ImGui_NewFrame();

    imgui.ImGui_GetIO().*.DisplaySize = .{ .x = @floatFromInt(fb_width), .y = @floatFromInt(fb_height) };
    // gui.io.setDisplayFramebufferScale(1.0, 1.0);

    imgui.ImGui_NewFrame();
}

pub fn draw(wgpu_render_pass: *const anyopaque) void {
    imgui.ImGui_Render();

    cImGui_ImplWGPU_RenderDrawData(imgui.ImGui_GetDrawData(), wgpu_render_pass);
}

pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const struct_WGPUDeviceImpl = opaque {};
pub const WGPUDevice = ?*struct_WGPUDeviceImpl;
pub const WGPUTextureFormat_Undefined: c_int = 0;
pub const WGPUTextureFormat_R8Unorm: c_int = 1;
pub const WGPUTextureFormat_R8Snorm: c_int = 2;
pub const WGPUTextureFormat_R8Uint: c_int = 3;
pub const WGPUTextureFormat_R8Sint: c_int = 4;
pub const WGPUTextureFormat_R16Uint: c_int = 5;
pub const WGPUTextureFormat_R16Sint: c_int = 6;
pub const WGPUTextureFormat_R16Float: c_int = 7;
pub const WGPUTextureFormat_RG8Unorm: c_int = 8;
pub const WGPUTextureFormat_RG8Snorm: c_int = 9;
pub const WGPUTextureFormat_RG8Uint: c_int = 10;
pub const WGPUTextureFormat_RG8Sint: c_int = 11;
pub const WGPUTextureFormat_R32Float: c_int = 12;
pub const WGPUTextureFormat_R32Uint: c_int = 13;
pub const WGPUTextureFormat_R32Sint: c_int = 14;
pub const WGPUTextureFormat_RG16Uint: c_int = 15;
pub const WGPUTextureFormat_RG16Sint: c_int = 16;
pub const WGPUTextureFormat_RG16Float: c_int = 17;
pub const WGPUTextureFormat_RGBA8Unorm: c_int = 18;
pub const WGPUTextureFormat_RGBA8UnormSrgb: c_int = 19;
pub const WGPUTextureFormat_RGBA8Snorm: c_int = 20;
pub const WGPUTextureFormat_RGBA8Uint: c_int = 21;
pub const WGPUTextureFormat_RGBA8Sint: c_int = 22;
pub const WGPUTextureFormat_BGRA8Unorm: c_int = 23;
pub const WGPUTextureFormat_BGRA8UnormSrgb: c_int = 24;
pub const WGPUTextureFormat_RGB10A2Uint: c_int = 25;
pub const WGPUTextureFormat_RGB10A2Unorm: c_int = 26;
pub const WGPUTextureFormat_RG11B10Ufloat: c_int = 27;
pub const WGPUTextureFormat_RGB9E5Ufloat: c_int = 28;
pub const WGPUTextureFormat_RG32Float: c_int = 29;
pub const WGPUTextureFormat_RG32Uint: c_int = 30;
pub const WGPUTextureFormat_RG32Sint: c_int = 31;
pub const WGPUTextureFormat_RGBA16Uint: c_int = 32;
pub const WGPUTextureFormat_RGBA16Sint: c_int = 33;
pub const WGPUTextureFormat_RGBA16Float: c_int = 34;
pub const WGPUTextureFormat_RGBA32Float: c_int = 35;
pub const WGPUTextureFormat_RGBA32Uint: c_int = 36;
pub const WGPUTextureFormat_RGBA32Sint: c_int = 37;
pub const WGPUTextureFormat_Stencil8: c_int = 38;
pub const WGPUTextureFormat_Depth16Unorm: c_int = 39;
pub const WGPUTextureFormat_Depth24Plus: c_int = 40;
pub const WGPUTextureFormat_Depth24PlusStencil8: c_int = 41;
pub const WGPUTextureFormat_Depth32Float: c_int = 42;
pub const WGPUTextureFormat_Depth32FloatStencil8: c_int = 43;
pub const WGPUTextureFormat_BC1RGBAUnorm: c_int = 44;
pub const WGPUTextureFormat_BC1RGBAUnormSrgb: c_int = 45;
pub const WGPUTextureFormat_BC2RGBAUnorm: c_int = 46;
pub const WGPUTextureFormat_BC2RGBAUnormSrgb: c_int = 47;
pub const WGPUTextureFormat_BC3RGBAUnorm: c_int = 48;
pub const WGPUTextureFormat_BC3RGBAUnormSrgb: c_int = 49;
pub const WGPUTextureFormat_BC4RUnorm: c_int = 50;
pub const WGPUTextureFormat_BC4RSnorm: c_int = 51;
pub const WGPUTextureFormat_BC5RGUnorm: c_int = 52;
pub const WGPUTextureFormat_BC5RGSnorm: c_int = 53;
pub const WGPUTextureFormat_BC6HRGBUfloat: c_int = 54;
pub const WGPUTextureFormat_BC6HRGBFloat: c_int = 55;
pub const WGPUTextureFormat_BC7RGBAUnorm: c_int = 56;
pub const WGPUTextureFormat_BC7RGBAUnormSrgb: c_int = 57;
pub const WGPUTextureFormat_ETC2RGB8Unorm: c_int = 58;
pub const WGPUTextureFormat_ETC2RGB8UnormSrgb: c_int = 59;
pub const WGPUTextureFormat_ETC2RGB8A1Unorm: c_int = 60;
pub const WGPUTextureFormat_ETC2RGB8A1UnormSrgb: c_int = 61;
pub const WGPUTextureFormat_ETC2RGBA8Unorm: c_int = 62;
pub const WGPUTextureFormat_ETC2RGBA8UnormSrgb: c_int = 63;
pub const WGPUTextureFormat_EACR11Unorm: c_int = 64;
pub const WGPUTextureFormat_EACR11Snorm: c_int = 65;
pub const WGPUTextureFormat_EACRG11Unorm: c_int = 66;
pub const WGPUTextureFormat_EACRG11Snorm: c_int = 67;
pub const WGPUTextureFormat_ASTC4x4Unorm: c_int = 68;
pub const WGPUTextureFormat_ASTC4x4UnormSrgb: c_int = 69;
pub const WGPUTextureFormat_ASTC5x4Unorm: c_int = 70;
pub const WGPUTextureFormat_ASTC5x4UnormSrgb: c_int = 71;
pub const WGPUTextureFormat_ASTC5x5Unorm: c_int = 72;
pub const WGPUTextureFormat_ASTC5x5UnormSrgb: c_int = 73;
pub const WGPUTextureFormat_ASTC6x5Unorm: c_int = 74;
pub const WGPUTextureFormat_ASTC6x5UnormSrgb: c_int = 75;
pub const WGPUTextureFormat_ASTC6x6Unorm: c_int = 76;
pub const WGPUTextureFormat_ASTC6x6UnormSrgb: c_int = 77;
pub const WGPUTextureFormat_ASTC8x5Unorm: c_int = 78;
pub const WGPUTextureFormat_ASTC8x5UnormSrgb: c_int = 79;
pub const WGPUTextureFormat_ASTC8x6Unorm: c_int = 80;
pub const WGPUTextureFormat_ASTC8x6UnormSrgb: c_int = 81;
pub const WGPUTextureFormat_ASTC8x8Unorm: c_int = 82;
pub const WGPUTextureFormat_ASTC8x8UnormSrgb: c_int = 83;
pub const WGPUTextureFormat_ASTC10x5Unorm: c_int = 84;
pub const WGPUTextureFormat_ASTC10x5UnormSrgb: c_int = 85;
pub const WGPUTextureFormat_ASTC10x6Unorm: c_int = 86;
pub const WGPUTextureFormat_ASTC10x6UnormSrgb: c_int = 87;
pub const WGPUTextureFormat_ASTC10x8Unorm: c_int = 88;
pub const WGPUTextureFormat_ASTC10x8UnormSrgb: c_int = 89;
pub const WGPUTextureFormat_ASTC10x10Unorm: c_int = 90;
pub const WGPUTextureFormat_ASTC10x10UnormSrgb: c_int = 91;
pub const WGPUTextureFormat_ASTC12x10Unorm: c_int = 92;
pub const WGPUTextureFormat_ASTC12x10UnormSrgb: c_int = 93;
pub const WGPUTextureFormat_ASTC12x12Unorm: c_int = 94;
pub const WGPUTextureFormat_ASTC12x12UnormSrgb: c_int = 95;
pub const WGPUTextureFormat_Force32: c_int = 2147483647;
pub const enum_WGPUTextureFormat = c_uint;
pub const WGPUTextureFormat = enum_WGPUTextureFormat;
pub const WGPUSType_Invalid: c_int = 0;
pub const WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector: c_int = 4;
pub const WGPUSType_ShaderModuleSPIRVDescriptor: c_int = 5;
pub const WGPUSType_ShaderModuleWGSLDescriptor: c_int = 6;
pub const WGPUSType_PrimitiveDepthClipControl: c_int = 7;
pub const WGPUSType_RenderPassDescriptorMaxDrawCount: c_int = 15;
pub const WGPUSType_TextureBindingViewDimensionDescriptor: c_int = 17;
pub const WGPUSType_Force32: c_int = 2147483647;
pub const enum_WGPUSType = c_uint;
pub const WGPUSType = enum_WGPUSType;
pub const struct_WGPUChainedStruct = extern struct {
    next: [*c]const struct_WGPUChainedStruct = @import("std").mem.zeroes([*c]const struct_WGPUChainedStruct),
    sType: WGPUSType = @import("std").mem.zeroes(WGPUSType),
};
pub const WGPUChainedStruct = struct_WGPUChainedStruct;
pub const WGPUBool = u32;
pub const struct_WGPUMultisampleState = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    count: u32 = @import("std").mem.zeroes(u32),
    mask: u32 = @import("std").mem.zeroes(u32),
    alphaToCoverageEnabled: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPUMultisampleState = struct_WGPUMultisampleState;
pub const struct_ImGui_ImplWGPU_InitInfo_t = extern struct {
    Device: WGPUDevice = @import("std").mem.zeroes(WGPUDevice),
    NumFramesInFlight: c_int = @import("std").mem.zeroes(c_int),
    RenderTargetFormat: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    DepthStencilFormat: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    PipelineMultisampleState: WGPUMultisampleState = @import("std").mem.zeroes(WGPUMultisampleState),
};
pub const ImGui_ImplWGPU_InitInfo = struct_ImGui_ImplWGPU_InitInfo_t;
pub const struct_WGPURenderPassEncoderImpl = opaque {};
pub const WGPURenderPassEncoder = ?*struct_WGPURenderPassEncoderImpl;
pub const struct_ImGui_ImplWGPU_RenderState_t = extern struct {
    Device: WGPUDevice = @import("std").mem.zeroes(WGPUDevice),
    RenderPassEncoder: WGPURenderPassEncoder = @import("std").mem.zeroes(WGPURenderPassEncoder),
};
pub const ImGui_ImplWGPU_RenderState = struct_ImGui_ImplWGPU_RenderState_t;
pub const ImDrawIdx = c_ushort;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const int_fast8_t = i8;
pub const int_fast64_t = i64;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast64_t = u64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast16_t = i32;
pub const int_fast32_t = i32;
pub const uint_fast16_t = u32;
pub const uint_fast32_t = u32;
pub const __builtin_va_list = ?*anyopaque;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __builtin_va_list;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(8) = @import("std").mem.zeroes(c_longdouble),
};
pub extern fn __assert_fail([*c]const u8, [*c]const u8, c_int, [*c]const u8) void;
pub const struct_ImVec2_t = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec2 = struct_ImVec2_t;
pub const struct_ImVec4_t = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    z: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec4 = struct_ImVec4_t;
pub const ImWchar16 = c_ushort;
pub const ImWchar = ImWchar16;
pub const struct_ImVector_ImWchar_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImWchar = @import("std").mem.zeroes([*c]ImWchar),
};
pub const ImVector_ImWchar = struct_ImVector_ImWchar_t;
pub const struct_ImGuiTextFilter_ImGuiTextRange_t = extern struct {
    b: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    e: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiTextFilter_ImGuiTextRange = struct_ImGuiTextFilter_ImGuiTextRange_t;
pub const struct_ImVector_ImGuiTextFilter_ImGuiTextRange_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTextFilter_ImGuiTextRange = @import("std").mem.zeroes([*c]ImGuiTextFilter_ImGuiTextRange),
};
pub const ImVector_ImGuiTextFilter_ImGuiTextRange = struct_ImVector_ImGuiTextFilter_ImGuiTextRange_t;
pub const struct_ImVector_char_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const ImVector_char = struct_ImVector_char_t;
pub const ImGuiID = c_uint;
const union_unnamed_1 = extern union {
    val_i: c_int,
    val_f: f32,
    val_p: ?*anyopaque,
};
pub const struct_ImGuiStoragePair_t = extern struct {
    key: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    unnamed_0: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
};
pub const ImGuiStoragePair = struct_ImGuiStoragePair_t;
pub const struct_ImVector_ImGuiStoragePair_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiStoragePair = @import("std").mem.zeroes([*c]ImGuiStoragePair),
};
pub const ImVector_ImGuiStoragePair = struct_ImVector_ImGuiStoragePair_t;
pub const ImS8 = i8;
pub const ImS64 = c_longlong;
pub const ImGuiSelectionUserData = ImS64;
pub const struct_ImGuiSelectionRequest_t = extern struct {
    Type: ImGuiSelectionRequestType = @import("std").mem.zeroes(ImGuiSelectionRequestType),
    Selected: bool = @import("std").mem.zeroes(bool),
    RangeDirection: ImS8 = @import("std").mem.zeroes(ImS8),
    RangeFirstItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    RangeLastItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiSelectionRequest = struct_ImGuiSelectionRequest_t;
pub const struct_ImVector_ImGuiSelectionRequest_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiSelectionRequest = @import("std").mem.zeroes([*c]ImGuiSelectionRequest),
};
pub const ImVector_ImGuiSelectionRequest = struct_ImVector_ImGuiSelectionRequest_t;
pub const ImU64 = c_ulonglong;
pub const ImTextureID = ImU64;
pub const ImVector_ImDrawCmd = struct_ImVector_ImDrawCmd_t;
pub const struct_ImVector_ImDrawIdx_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawIdx = @import("std").mem.zeroes([*c]ImDrawIdx),
};
pub const ImVector_ImDrawIdx = struct_ImVector_ImDrawIdx_t;
pub const ImU32 = c_uint;
pub const struct_ImDrawVert_t = extern struct {
    pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    uv: ImVec2 = @import("std").mem.zeroes(ImVec2),
    col: ImU32 = @import("std").mem.zeroes(ImU32),
};
pub const ImDrawVert = struct_ImDrawVert_t;
pub const struct_ImVector_ImDrawVert_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawVert = @import("std").mem.zeroes([*c]ImDrawVert),
};
pub const ImVector_ImDrawVert = struct_ImVector_ImDrawVert_t;
pub const ImDrawListFlags = c_int;
pub const struct_ImDrawListSharedData_t = opaque {};
pub const ImDrawListSharedData = struct_ImDrawListSharedData_t;
pub const struct_ImVector_ImVec2_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImVec2 = @import("std").mem.zeroes([*c]ImVec2),
};
pub const ImVector_ImVec2 = struct_ImVector_ImVec2_t;
pub const struct_ImDrawCmdHeader_t = extern struct {
    ClipRect: ImVec4 = @import("std").mem.zeroes(ImVec4),
    TextureId: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    VtxOffset: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ImDrawCmdHeader = struct_ImDrawCmdHeader_t;
pub const struct_ImDrawChannel_t = extern struct {
    _CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    _IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
};
pub const ImDrawChannel = struct_ImDrawChannel_t;
pub const struct_ImVector_ImDrawChannel_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawChannel = @import("std").mem.zeroes([*c]ImDrawChannel),
};
pub const ImVector_ImDrawChannel = struct_ImVector_ImDrawChannel_t;
pub const struct_ImDrawListSplitter_t = extern struct {
    _Current: c_int = @import("std").mem.zeroes(c_int),
    _Count: c_int = @import("std").mem.zeroes(c_int),
    _Channels: ImVector_ImDrawChannel = @import("std").mem.zeroes(ImVector_ImDrawChannel),
};
pub const ImDrawListSplitter = struct_ImDrawListSplitter_t;
pub const struct_ImVector_ImVec4_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImVec4 = @import("std").mem.zeroes([*c]ImVec4),
};
pub const ImVector_ImVec4 = struct_ImVector_ImVec4_t;
pub const struct_ImVector_ImTextureID_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImTextureID = @import("std").mem.zeroes([*c]ImTextureID),
};
pub const ImVector_ImTextureID = struct_ImVector_ImTextureID_t;
pub const ImU8 = u8;
pub const struct_ImVector_ImU8_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU8 = @import("std").mem.zeroes([*c]ImU8),
};
pub const ImVector_ImU8 = struct_ImVector_ImU8_t;
pub const struct_ImDrawList_t = extern struct {
    CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
    VtxBuffer: ImVector_ImDrawVert = @import("std").mem.zeroes(ImVector_ImDrawVert),
    Flags: ImDrawListFlags = @import("std").mem.zeroes(ImDrawListFlags),
    _VtxCurrentIdx: c_uint = @import("std").mem.zeroes(c_uint),
    _Data: ?*ImDrawListSharedData = @import("std").mem.zeroes(?*ImDrawListSharedData),
    _VtxWritePtr: [*c]ImDrawVert = @import("std").mem.zeroes([*c]ImDrawVert),
    _IdxWritePtr: [*c]ImDrawIdx = @import("std").mem.zeroes([*c]ImDrawIdx),
    _Path: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    _CmdHeader: ImDrawCmdHeader = @import("std").mem.zeroes(ImDrawCmdHeader),
    _Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    _ClipRectStack: ImVector_ImVec4 = @import("std").mem.zeroes(ImVector_ImVec4),
    _TextureIdStack: ImVector_ImTextureID = @import("std").mem.zeroes(ImVector_ImTextureID),
    _CallbacksDataBuf: ImVector_ImU8 = @import("std").mem.zeroes(ImVector_ImU8),
    _FringeScale: f32 = @import("std").mem.zeroes(f32),
    _OwnerName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImDrawList = struct_ImDrawList_t;
pub const ImDrawCallback = ?*const fn ([*c]const ImDrawList, [*c]const ImDrawCmd) callconv(.c) void;
pub const struct_ImDrawCmd_t = extern struct {
    ClipRect: ImVec4 = @import("std").mem.zeroes(ImVec4),
    TextureId: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    VtxOffset: c_uint = @import("std").mem.zeroes(c_uint),
    IdxOffset: c_uint = @import("std").mem.zeroes(c_uint),
    ElemCount: c_uint = @import("std").mem.zeroes(c_uint),
    UserCallback: ImDrawCallback = @import("std").mem.zeroes(ImDrawCallback),
    UserCallbackData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    UserCallbackDataSize: c_int = @import("std").mem.zeroes(c_int),
    UserCallbackDataOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImDrawCmd = struct_ImDrawCmd_t;
pub const struct_ImVector_ImDrawCmd_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawCmd = @import("std").mem.zeroes([*c]ImDrawCmd),
};
pub const struct_ImVector_ImDrawListPtr_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImDrawList = @import("std").mem.zeroes([*c][*c]ImDrawList),
};
pub const ImVector_ImDrawListPtr = struct_ImVector_ImDrawListPtr_t;
pub const struct_ImVector_ImU32_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU32 = @import("std").mem.zeroes([*c]ImU32),
};
pub const ImVector_ImU32 = struct_ImVector_ImU32_t;
pub const struct_ImVector_float_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]f32 = @import("std").mem.zeroes([*c]f32),
};
pub const ImVector_float = struct_ImVector_float_t;
pub const ImU16 = c_ushort;
pub const struct_ImVector_ImU16_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU16 = @import("std").mem.zeroes([*c]ImU16),
};
pub const ImVector_ImU16 = struct_ImVector_ImU16_t;
// libs/imgui/dcimgui.h:3459:18: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontGlyph_t = opaque {};
pub const ImFontGlyph = struct_ImFontGlyph_t;
pub const struct_ImVector_ImFontGlyph_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImFontGlyph = @import("std").mem.zeroes(?*ImFontGlyph),
};
pub const ImVector_ImFontGlyph = struct_ImVector_ImFontGlyph_t;
pub const ImFontAtlasFlags = c_int;
pub const ImVector_ImFontPtr = struct_ImVector_ImFontPtr_t;
// libs/imgui/dcimgui.h:3488:20: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontAtlasCustomRect_t = opaque {};
pub const ImFontAtlasCustomRect = struct_ImFontAtlasCustomRect_t;
pub const struct_ImVector_ImFontAtlasCustomRect_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImFontAtlasCustomRect = @import("std").mem.zeroes(?*ImFontAtlasCustomRect),
};
pub const ImVector_ImFontAtlasCustomRect = struct_ImVector_ImFontAtlasCustomRect_t;
pub const struct_ImFontConfig_t = extern struct {
    FontData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    FontDataSize: c_int = @import("std").mem.zeroes(c_int),
    FontDataOwnedByAtlas: bool = @import("std").mem.zeroes(bool),
    MergeMode: bool = @import("std").mem.zeroes(bool),
    PixelSnapH: bool = @import("std").mem.zeroes(bool),
    FontNo: c_int = @import("std").mem.zeroes(c_int),
    OversampleH: c_int = @import("std").mem.zeroes(c_int),
    OversampleV: c_int = @import("std").mem.zeroes(c_int),
    SizePixels: f32 = @import("std").mem.zeroes(f32),
    GlyphOffset: ImVec2 = @import("std").mem.zeroes(ImVec2),
    GlyphRanges: [*c]const ImWchar = @import("std").mem.zeroes([*c]const ImWchar),
    GlyphMinAdvanceX: f32 = @import("std").mem.zeroes(f32),
    GlyphMaxAdvanceX: f32 = @import("std").mem.zeroes(f32),
    GlyphExtraAdvanceX: f32 = @import("std").mem.zeroes(f32),
    FontBuilderFlags: c_uint = @import("std").mem.zeroes(c_uint),
    RasterizerMultiply: f32 = @import("std").mem.zeroes(f32),
    RasterizerDensity: f32 = @import("std").mem.zeroes(f32),
    EllipsisChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    Name: [40]u8 = @import("std").mem.zeroes([40]u8),
    DstFont: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
};
pub const ImFontConfig = struct_ImFontConfig_t;
pub const struct_ImVector_ImFontConfig_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImFontConfig = @import("std").mem.zeroes([*c]ImFontConfig),
};
pub const ImVector_ImFontConfig = struct_ImVector_ImFontConfig_t;
pub const struct_ImFontBuilderIO_t = opaque {};
pub const ImFontBuilderIO = struct_ImFontBuilderIO_t;
pub const struct_ImFontAtlas_t = extern struct {
    Flags: ImFontAtlasFlags = @import("std").mem.zeroes(ImFontAtlasFlags),
    TexID: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    TexDesiredWidth: c_int = @import("std").mem.zeroes(c_int),
    TexGlyphPadding: c_int = @import("std").mem.zeroes(c_int),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Locked: bool = @import("std").mem.zeroes(bool),
    TexReady: bool = @import("std").mem.zeroes(bool),
    TexPixelsUseColors: bool = @import("std").mem.zeroes(bool),
    TexPixelsAlpha8: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    TexPixelsRGBA32: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
    TexWidth: c_int = @import("std").mem.zeroes(c_int),
    TexHeight: c_int = @import("std").mem.zeroes(c_int),
    TexUvScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TexUvWhitePixel: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Fonts: ImVector_ImFontPtr = @import("std").mem.zeroes(ImVector_ImFontPtr),
    CustomRects: ImVector_ImFontAtlasCustomRect = @import("std").mem.zeroes(ImVector_ImFontAtlasCustomRect),
    Sources: ImVector_ImFontConfig = @import("std").mem.zeroes(ImVector_ImFontConfig),
    TexUvLines: [33]ImVec4 = @import("std").mem.zeroes([33]ImVec4),
    FontBuilderIO: ?*const ImFontBuilderIO = @import("std").mem.zeroes(?*const ImFontBuilderIO),
    FontBuilderFlags: c_uint = @import("std").mem.zeroes(c_uint),
    PackIdMouseCursors: c_int = @import("std").mem.zeroes(c_int),
    PackIdLines: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImFontAtlas = struct_ImFontAtlas_t;
pub const struct_ImFont_t = extern struct {
    IndexAdvanceX: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    FallbackAdvanceX: f32 = @import("std").mem.zeroes(f32),
    FontSize: f32 = @import("std").mem.zeroes(f32),
    IndexLookup: ImVector_ImU16 = @import("std").mem.zeroes(ImVector_ImU16),
    Glyphs: ImVector_ImFontGlyph = @import("std").mem.zeroes(ImVector_ImFontGlyph),
    FallbackGlyph: ?*ImFontGlyph = @import("std").mem.zeroes(?*ImFontGlyph),
    ContainerAtlas: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    Sources: [*c]ImFontConfig = @import("std").mem.zeroes([*c]ImFontConfig),
    SourcesCount: c_short = @import("std").mem.zeroes(c_short),
    EllipsisCharCount: c_short = @import("std").mem.zeroes(c_short),
    EllipsisChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    FallbackChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    EllipsisWidth: f32 = @import("std").mem.zeroes(f32),
    EllipsisCharStep: f32 = @import("std").mem.zeroes(f32),
    Scale: f32 = @import("std").mem.zeroes(f32),
    Ascent: f32 = @import("std").mem.zeroes(f32),
    Descent: f32 = @import("std").mem.zeroes(f32),
    MetricsTotalSurface: c_int = @import("std").mem.zeroes(c_int),
    DirtyLookupTables: bool = @import("std").mem.zeroes(bool),
    Used8kPagesMap: [1]ImU8 = @import("std").mem.zeroes([1]ImU8),
};
pub const ImFont = struct_ImFont_t;
pub const struct_ImVector_ImFontPtr_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImFont = @import("std").mem.zeroes([*c][*c]ImFont),
};
pub const struct_ImGuiPlatformMonitor_t = extern struct {
    MainPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MainSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DpiScale: f32 = @import("std").mem.zeroes(f32),
    PlatformHandle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiPlatformMonitor = struct_ImGuiPlatformMonitor_t;
pub const struct_ImVector_ImGuiPlatformMonitor_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPlatformMonitor = @import("std").mem.zeroes([*c]ImGuiPlatformMonitor),
};
pub const ImVector_ImGuiPlatformMonitor = struct_ImVector_ImGuiPlatformMonitor_t;
pub const ImGuiViewportFlags = c_int;
pub const struct_ImDrawData_t = extern struct {
    Valid: bool = @import("std").mem.zeroes(bool),
    CmdListsCount: c_int = @import("std").mem.zeroes(c_int),
    TotalIdxCount: c_int = @import("std").mem.zeroes(c_int),
    TotalVtxCount: c_int = @import("std").mem.zeroes(c_int),
    CmdLists: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
    DisplayPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplaySize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FramebufferScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    OwnerViewport: [*c]ImGuiViewport = @import("std").mem.zeroes([*c]ImGuiViewport),
};
pub const ImDrawData = struct_ImDrawData_t;
pub const struct_ImGuiViewport_t = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    Pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Size: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FramebufferScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DpiScale: f32 = @import("std").mem.zeroes(f32),
    ParentViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DrawData: [*c]ImDrawData = @import("std").mem.zeroes([*c]ImDrawData),
    RendererUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformHandle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformHandleRaw: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformWindowCreated: bool = @import("std").mem.zeroes(bool),
    PlatformRequestMove: bool = @import("std").mem.zeroes(bool),
    PlatformRequestResize: bool = @import("std").mem.zeroes(bool),
    PlatformRequestClose: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiViewport = struct_ImGuiViewport_t;
pub const struct_ImVector_ImGuiViewportPtr_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImGuiViewport = @import("std").mem.zeroes([*c][*c]ImGuiViewport),
};
pub const ImVector_ImGuiViewportPtr = struct_ImVector_ImGuiViewportPtr_t;
pub const ImS16 = c_short;
pub const ImS32 = c_int;
pub const struct_ImFontGlyphRangesBuilder_t = extern struct {
    UsedChars: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
};
pub const ImFontGlyphRangesBuilder = struct_ImFontGlyphRangesBuilder_t;
pub const struct_ImColor_t = extern struct {
    Value: ImVec4 = @import("std").mem.zeroes(ImVec4),
};
pub const ImColor = struct_ImColor_t;
pub const struct_ImGuiContext_t = opaque {};
pub const ImGuiContext = struct_ImGuiContext_t;
pub const ImGuiConfigFlags = c_int;
pub const ImGuiBackendFlags = c_int;
pub const ImGuiMouseSource = c_int;
pub const ImGuiKeyChord = c_int;
pub const struct_ImGuiKeyData_t = extern struct {
    Down: bool = @import("std").mem.zeroes(bool),
    DownDuration: f32 = @import("std").mem.zeroes(f32),
    DownDurationPrev: f32 = @import("std").mem.zeroes(f32),
    AnalogValue: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiKeyData = struct_ImGuiKeyData_t;
pub const struct_ImGuiIO_t = extern struct {
    ConfigFlags: ImGuiConfigFlags = @import("std").mem.zeroes(ImGuiConfigFlags),
    BackendFlags: ImGuiBackendFlags = @import("std").mem.zeroes(ImGuiBackendFlags),
    DisplaySize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplayFramebufferScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DeltaTime: f32 = @import("std").mem.zeroes(f32),
    IniSavingRate: f32 = @import("std").mem.zeroes(f32),
    IniFilename: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    LogFilename: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Fonts: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    FontGlobalScale: f32 = @import("std").mem.zeroes(f32),
    FontAllowUserScaling: bool = @import("std").mem.zeroes(bool),
    FontDefault: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    ConfigNavSwapGamepadButtons: bool = @import("std").mem.zeroes(bool),
    ConfigNavMoveSetMousePos: bool = @import("std").mem.zeroes(bool),
    ConfigNavCaptureKeyboard: bool = @import("std").mem.zeroes(bool),
    ConfigNavEscapeClearFocusItem: bool = @import("std").mem.zeroes(bool),
    ConfigNavEscapeClearFocusWindow: bool = @import("std").mem.zeroes(bool),
    ConfigNavCursorVisibleAuto: bool = @import("std").mem.zeroes(bool),
    ConfigNavCursorVisibleAlways: bool = @import("std").mem.zeroes(bool),
    ConfigDockingNoSplit: bool = @import("std").mem.zeroes(bool),
    ConfigDockingWithShift: bool = @import("std").mem.zeroes(bool),
    ConfigDockingAlwaysTabBar: bool = @import("std").mem.zeroes(bool),
    ConfigDockingTransparentPayload: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoAutoMerge: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoTaskBarIcon: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoDecoration: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoDefaultParent: bool = @import("std").mem.zeroes(bool),
    MouseDrawCursor: bool = @import("std").mem.zeroes(bool),
    ConfigMacOSXBehaviors: bool = @import("std").mem.zeroes(bool),
    ConfigInputTrickleEventQueue: bool = @import("std").mem.zeroes(bool),
    ConfigInputTextCursorBlink: bool = @import("std").mem.zeroes(bool),
    ConfigInputTextEnterKeepActive: bool = @import("std").mem.zeroes(bool),
    ConfigDragClickToInputText: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsResizeFromEdges: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsMoveFromTitleBarOnly: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsCopyContentsWithCtrlC: bool = @import("std").mem.zeroes(bool),
    ConfigScrollbarScrollByPage: bool = @import("std").mem.zeroes(bool),
    ConfigMemoryCompactTimer: f32 = @import("std").mem.zeroes(f32),
    MouseDoubleClickTime: f32 = @import("std").mem.zeroes(f32),
    MouseDoubleClickMaxDist: f32 = @import("std").mem.zeroes(f32),
    MouseDragThreshold: f32 = @import("std").mem.zeroes(f32),
    KeyRepeatDelay: f32 = @import("std").mem.zeroes(f32),
    KeyRepeatRate: f32 = @import("std").mem.zeroes(f32),
    ConfigErrorRecovery: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableAssert: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableDebugLog: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableTooltip: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIsDebuggerPresent: bool = @import("std").mem.zeroes(bool),
    ConfigDebugHighlightIdConflicts: bool = @import("std").mem.zeroes(bool),
    ConfigDebugHighlightIdConflictsShowItemPicker: bool = @import("std").mem.zeroes(bool),
    ConfigDebugBeginReturnValueOnce: bool = @import("std").mem.zeroes(bool),
    ConfigDebugBeginReturnValueLoop: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIgnoreFocusLoss: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIniSettings: bool = @import("std").mem.zeroes(bool),
    BackendPlatformName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    BackendRendererName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    BackendPlatformUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BackendRendererUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BackendLanguageUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    WantCaptureMouse: bool = @import("std").mem.zeroes(bool),
    WantCaptureKeyboard: bool = @import("std").mem.zeroes(bool),
    WantTextInput: bool = @import("std").mem.zeroes(bool),
    WantSetMousePos: bool = @import("std").mem.zeroes(bool),
    WantSaveIniSettings: bool = @import("std").mem.zeroes(bool),
    NavActive: bool = @import("std").mem.zeroes(bool),
    NavVisible: bool = @import("std").mem.zeroes(bool),
    Framerate: f32 = @import("std").mem.zeroes(f32),
    MetricsRenderVertices: c_int = @import("std").mem.zeroes(c_int),
    MetricsRenderIndices: c_int = @import("std").mem.zeroes(c_int),
    MetricsRenderWindows: c_int = @import("std").mem.zeroes(c_int),
    MetricsActiveWindows: c_int = @import("std").mem.zeroes(c_int),
    MouseDelta: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    MousePos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MouseDown: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheel: f32 = @import("std").mem.zeroes(f32),
    MouseWheelH: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
    MouseHoveredViewport: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    KeyCtrl: bool = @import("std").mem.zeroes(bool),
    KeyShift: bool = @import("std").mem.zeroes(bool),
    KeyAlt: bool = @import("std").mem.zeroes(bool),
    KeySuper: bool = @import("std").mem.zeroes(bool),
    KeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    KeysData: [155]ImGuiKeyData = @import("std").mem.zeroes([155]ImGuiKeyData),
    WantCaptureMouseUnlessPopupClose: bool = @import("std").mem.zeroes(bool),
    MousePosPrev: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MouseClickedPos: [5]ImVec2 = @import("std").mem.zeroes([5]ImVec2),
    MouseClickedTime: [5]f64 = @import("std").mem.zeroes([5]f64),
    MouseClicked: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseDoubleClicked: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseClickedCount: [5]ImU16 = @import("std").mem.zeroes([5]ImU16),
    MouseClickedLastCount: [5]ImU16 = @import("std").mem.zeroes([5]ImU16),
    MouseReleased: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseReleasedTime: [5]f64 = @import("std").mem.zeroes([5]f64),
    MouseDownOwned: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseDownOwnedUnlessPopupClose: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheelRequestAxisSwap: bool = @import("std").mem.zeroes(bool),
    MouseCtrlLeftAsRightClick: bool = @import("std").mem.zeroes(bool),
    MouseDownDuration: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDownDurationPrev: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDragMaxDistanceAbs: [5]ImVec2 = @import("std").mem.zeroes([5]ImVec2),
    MouseDragMaxDistanceSqr: [5]f32 = @import("std").mem.zeroes([5]f32),
    PenPressure: f32 = @import("std").mem.zeroes(f32),
    AppFocusLost: bool = @import("std").mem.zeroes(bool),
    AppAcceptingEvents: bool = @import("std").mem.zeroes(bool),
    InputQueueSurrogate: ImWchar16 = @import("std").mem.zeroes(ImWchar16),
    InputQueueCharacters: ImVector_ImWchar = @import("std").mem.zeroes(ImVector_ImWchar),
    GetClipboardTextFn: ?*const fn (?*anyopaque) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) [*c]const u8),
    SetClipboardTextFn: ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8) callconv(.c) void),
    ClipboardUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiIO = struct_ImGuiIO_t;
pub const ImGuiInputTextFlags = c_int;
pub const ImGuiKey = c_int;
pub const struct_ImGuiInputTextCallbackData_t = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    EventFlag: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    Flags: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    EventChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    EventKey: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    Buf: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    BufTextLen: c_int = @import("std").mem.zeroes(c_int),
    BufSize: c_int = @import("std").mem.zeroes(c_int),
    BufDirty: bool = @import("std").mem.zeroes(bool),
    CursorPos: c_int = @import("std").mem.zeroes(c_int),
    SelectionStart: c_int = @import("std").mem.zeroes(c_int),
    SelectionEnd: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiInputTextCallbackData = struct_ImGuiInputTextCallbackData_t;
pub const struct_ImGuiListClipper_t = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    DisplayStart: c_int = @import("std").mem.zeroes(c_int),
    DisplayEnd: c_int = @import("std").mem.zeroes(c_int),
    ItemsCount: c_int = @import("std").mem.zeroes(c_int),
    ItemsHeight: f32 = @import("std").mem.zeroes(f32),
    StartPosY: f32 = @import("std").mem.zeroes(f32),
    StartSeekOffsetY: f64 = @import("std").mem.zeroes(f64),
    TempData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiListClipper = struct_ImGuiListClipper_t;
pub const struct_ImGuiMultiSelectIO_t = extern struct {
    Requests: ImVector_ImGuiSelectionRequest = @import("std").mem.zeroes(ImVector_ImGuiSelectionRequest),
    RangeSrcItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdSelected: bool = @import("std").mem.zeroes(bool),
    RangeSrcReset: bool = @import("std").mem.zeroes(bool),
    ItemsCount: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiMultiSelectIO = struct_ImGuiMultiSelectIO_t;
pub const struct_ImGuiPayload_t = extern struct {
    Data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    DataSize: c_int = @import("std").mem.zeroes(c_int),
    SourceId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SourceParentId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DataFrameCount: c_int = @import("std").mem.zeroes(c_int),
    DataType: [33]u8 = @import("std").mem.zeroes([33]u8),
    Preview: bool = @import("std").mem.zeroes(bool),
    Delivery: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiPayload = struct_ImGuiPayload_t;
pub const struct_ImGuiPlatformImeData_t = extern struct {
    WantVisible: bool = @import("std").mem.zeroes(bool),
    WantTextInput: bool = @import("std").mem.zeroes(bool),
    InputPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    InputLineHeight: f32 = @import("std").mem.zeroes(f32),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiPlatformImeData = struct_ImGuiPlatformImeData_t;
pub const struct_ImGuiPlatformIO_t = extern struct {
    Platform_GetClipboardTextFn: ?*const fn (?*ImGuiContext) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (?*ImGuiContext) callconv(.c) [*c]const u8),
    Platform_SetClipboardTextFn: ?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) void),
    Platform_ClipboardUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_OpenInShellFn: ?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) bool),
    Platform_OpenInShellUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_SetImeDataFn: ?*const fn (?*ImGuiContext, [*c]ImGuiViewport, [*c]ImGuiPlatformImeData) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiViewport, [*c]ImGuiPlatformImeData) callconv(.c) void),
    Platform_ImeUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_LocaleDecimalPoint: ImWchar = @import("std").mem.zeroes(ImWchar),
    Renderer_RenderState: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_ShowWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_SetWindowPos: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Platform_GetWindowPos: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2),
    Platform_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Platform_GetWindowSize: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2),
    Platform_GetWindowFramebufferScale: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2),
    Platform_SetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_GetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) bool),
    Platform_GetWindowMinimized: ?*const fn ([*c]ImGuiViewport) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) bool),
    Platform_SetWindowTitle: ?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.c) void),
    Platform_SetWindowAlpha: ?*const fn ([*c]ImGuiViewport, f32) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, f32) callconv(.c) void),
    Platform_UpdateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Platform_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Platform_GetWindowDpiScale: ?*const fn ([*c]ImGuiViewport) callconv(.c) f32 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) f32),
    Platform_OnChangedViewport: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_GetWindowWorkAreaInsets: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec4 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec4),
    Platform_CreateVkSurface: ?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.c) c_int),
    Renderer_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Renderer_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Renderer_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Renderer_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Renderer_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Monitors: ImVector_ImGuiPlatformMonitor = @import("std").mem.zeroes(ImVector_ImGuiPlatformMonitor),
    Viewports: ImVector_ImGuiViewportPtr = @import("std").mem.zeroes(ImVector_ImGuiViewportPtr),
};
pub const ImGuiPlatformIO = struct_ImGuiPlatformIO_t;
pub const ImGuiSelectionBasicStorage = struct_ImGuiSelectionBasicStorage_t;
pub const struct_ImGuiStorage_t = extern struct {
    Data: ImVector_ImGuiStoragePair = @import("std").mem.zeroes(ImVector_ImGuiStoragePair),
};
pub const ImGuiStorage = struct_ImGuiStorage_t;
pub const struct_ImGuiSelectionBasicStorage_t = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    PreserveOrder: bool = @import("std").mem.zeroes(bool),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    AdapterIndexToStorageId: ?*const fn ([*c]ImGuiSelectionBasicStorage, c_int) callconv(.c) ImGuiID = @import("std").mem.zeroes(?*const fn ([*c]ImGuiSelectionBasicStorage, c_int) callconv(.c) ImGuiID),
    _SelectionOrder: c_int = @import("std").mem.zeroes(c_int),
    _Storage: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
};
pub const ImGuiSelectionExternalStorage = struct_ImGuiSelectionExternalStorage_t;
pub const struct_ImGuiSelectionExternalStorage_t = extern struct {
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    AdapterSetItemSelected: ?*const fn ([*c]ImGuiSelectionExternalStorage, c_int, bool) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiSelectionExternalStorage, c_int, bool) callconv(.c) void),
};
pub const struct_ImGuiSizeCallbackData_t = extern struct {
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CurrentSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DesiredSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImGuiSizeCallbackData = struct_ImGuiSizeCallbackData_t;
pub const ImGuiDir = c_int;
pub const ImGuiTreeNodeFlags = c_int;
pub const ImGuiHoveredFlags = c_int;
pub const struct_ImGuiStyle_t = extern struct {
    Alpha: f32 = @import("std").mem.zeroes(f32),
    DisabledAlpha: f32 = @import("std").mem.zeroes(f32),
    WindowPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowRounding: f32 = @import("std").mem.zeroes(f32),
    WindowBorderSize: f32 = @import("std").mem.zeroes(f32),
    WindowBorderHoverPadding: f32 = @import("std").mem.zeroes(f32),
    WindowMinSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowTitleAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowMenuButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ChildRounding: f32 = @import("std").mem.zeroes(f32),
    ChildBorderSize: f32 = @import("std").mem.zeroes(f32),
    PopupRounding: f32 = @import("std").mem.zeroes(f32),
    PopupBorderSize: f32 = @import("std").mem.zeroes(f32),
    FramePadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FrameRounding: f32 = @import("std").mem.zeroes(f32),
    FrameBorderSize: f32 = @import("std").mem.zeroes(f32),
    ItemSpacing: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ItemInnerSpacing: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CellPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TouchExtraPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    IndentSpacing: f32 = @import("std").mem.zeroes(f32),
    ColumnsMinSpacing: f32 = @import("std").mem.zeroes(f32),
    ScrollbarSize: f32 = @import("std").mem.zeroes(f32),
    ScrollbarRounding: f32 = @import("std").mem.zeroes(f32),
    GrabMinSize: f32 = @import("std").mem.zeroes(f32),
    GrabRounding: f32 = @import("std").mem.zeroes(f32),
    LogSliderDeadzone: f32 = @import("std").mem.zeroes(f32),
    ImageBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabRounding: f32 = @import("std").mem.zeroes(f32),
    TabBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabCloseButtonMinWidthSelected: f32 = @import("std").mem.zeroes(f32),
    TabCloseButtonMinWidthUnselected: f32 = @import("std").mem.zeroes(f32),
    TabBarBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabBarOverlineSize: f32 = @import("std").mem.zeroes(f32),
    TableAngledHeadersAngle: f32 = @import("std").mem.zeroes(f32),
    TableAngledHeadersTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TreeLinesFlags: ImGuiTreeNodeFlags = @import("std").mem.zeroes(ImGuiTreeNodeFlags),
    TreeLinesSize: f32 = @import("std").mem.zeroes(f32),
    TreeLinesRounding: f32 = @import("std").mem.zeroes(f32),
    ColorButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ButtonTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SelectableTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SeparatorTextBorderSize: f32 = @import("std").mem.zeroes(f32),
    SeparatorTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SeparatorTextPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplayWindowPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplaySafeAreaPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DockingSeparatorSize: f32 = @import("std").mem.zeroes(f32),
    MouseCursorScale: f32 = @import("std").mem.zeroes(f32),
    AntiAliasedLines: bool = @import("std").mem.zeroes(bool),
    AntiAliasedLinesUseTex: bool = @import("std").mem.zeroes(bool),
    AntiAliasedFill: bool = @import("std").mem.zeroes(bool),
    CurveTessellationTol: f32 = @import("std").mem.zeroes(f32),
    CircleTessellationMaxError: f32 = @import("std").mem.zeroes(f32),
    Colors: [60]ImVec4 = @import("std").mem.zeroes([60]ImVec4),
    HoverStationaryDelay: f32 = @import("std").mem.zeroes(f32),
    HoverDelayShort: f32 = @import("std").mem.zeroes(f32),
    HoverDelayNormal: f32 = @import("std").mem.zeroes(f32),
    HoverFlagsForTooltipMouse: ImGuiHoveredFlags = @import("std").mem.zeroes(ImGuiHoveredFlags),
    HoverFlagsForTooltipNav: ImGuiHoveredFlags = @import("std").mem.zeroes(ImGuiHoveredFlags),
};
pub const ImGuiStyle = struct_ImGuiStyle_t;
pub const ImGuiSortDirection = ImU8;
pub const struct_ImGuiTableColumnSortSpecs_t = extern struct {
    ColumnUserID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ColumnIndex: ImS16 = @import("std").mem.zeroes(ImS16),
    SortOrder: ImS16 = @import("std").mem.zeroes(ImS16),
    SortDirection: ImGuiSortDirection = @import("std").mem.zeroes(ImGuiSortDirection),
};
pub const ImGuiTableColumnSortSpecs = struct_ImGuiTableColumnSortSpecs_t;
pub const struct_ImGuiTableSortSpecs_t = extern struct {
    Specs: [*c]const ImGuiTableColumnSortSpecs = @import("std").mem.zeroes([*c]const ImGuiTableColumnSortSpecs),
    SpecsCount: c_int = @import("std").mem.zeroes(c_int),
    SpecsDirty: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTableSortSpecs = struct_ImGuiTableSortSpecs_t;
pub const struct_ImGuiTextBuffer_t = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImGuiTextBuffer = struct_ImGuiTextBuffer_t;
pub const struct_ImGuiTextFilter_t = extern struct {
    InputBuf: [256]u8 = @import("std").mem.zeroes([256]u8),
    Filters: ImVector_ImGuiTextFilter_ImGuiTextRange = @import("std").mem.zeroes(ImVector_ImGuiTextFilter_ImGuiTextRange),
    CountGrep: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTextFilter = struct_ImGuiTextFilter_t;
pub const ImGuiTabItemFlags = c_int;
pub const ImGuiDockNodeFlags = c_int;
pub const struct_ImGuiWindowClass_t = extern struct {
    ClassId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ParentViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    FocusRouteParentWindowId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ViewportFlagsOverrideSet: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    ViewportFlagsOverrideClear: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    TabItemFlagsOverrideSet: ImGuiTabItemFlags = @import("std").mem.zeroes(ImGuiTabItemFlags),
    DockNodeFlagsOverrideSet: ImGuiDockNodeFlags = @import("std").mem.zeroes(ImGuiDockNodeFlags),
    DockingAlwaysTabBar: bool = @import("std").mem.zeroes(bool),
    DockingAllowUnclassed: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiWindowClass = struct_ImGuiWindowClass_t;
pub const ImGuiCol = c_int;
pub const ImGuiCond = c_int;
pub const ImGuiDataType = c_int;
pub const ImGuiMouseButton = c_int;
pub const ImGuiMouseCursor = c_int;
pub const ImGuiStyleVar = c_int;
pub const ImGuiTableBgTarget = c_int;
pub const ImDrawFlags = c_int;
pub const ImGuiButtonFlags = c_int;
pub const ImGuiChildFlags = c_int;
pub const ImGuiColorEditFlags = c_int;
pub const ImGuiComboFlags = c_int;
pub const ImGuiDragDropFlags = c_int;
pub const ImGuiFocusedFlags = c_int;
pub const ImGuiInputFlags = c_int;
pub const ImGuiItemFlags = c_int;
pub const ImGuiPopupFlags = c_int;
pub const ImGuiMultiSelectFlags = c_int;
pub const ImGuiSelectableFlags = c_int;
pub const ImGuiSliderFlags = c_int;
pub const ImGuiTabBarFlags = c_int;
pub const ImGuiTableFlags = c_int;
pub const ImGuiTableColumnFlags = c_int;
pub const ImGuiTableRowFlags = c_int;
pub const ImGuiWindowFlags = c_int;
pub const ImWchar32 = c_uint;
pub const ImGuiInputTextCallback = ?*const fn ([*c]ImGuiInputTextCallbackData) callconv(.c) c_int;
pub const ImGuiSizeCallback = ?*const fn ([*c]ImGuiSizeCallbackData) callconv(.c) void;
pub const ImGuiMemAllocFunc = ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque;
pub const ImGuiMemFreeFunc = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub extern fn ImGui_CreateContext(shared_font_atlas: [*c]ImFontAtlas) ?*ImGuiContext;
pub extern fn ImGui_DestroyContext(ctx: ?*ImGuiContext) void;
pub extern fn ImGui_GetCurrentContext() ?*ImGuiContext;
pub extern fn ImGui_SetCurrentContext(ctx: ?*ImGuiContext) void;
pub extern fn ImGui_GetIO() [*c]ImGuiIO;
pub extern fn ImGui_GetPlatformIO() [*c]ImGuiPlatformIO;
pub extern fn ImGui_GetStyle() [*c]ImGuiStyle;
pub extern fn ImGui_NewFrame() void;
pub extern fn ImGui_EndFrame() void;
pub extern fn ImGui_Render() void;
pub extern fn ImGui_GetDrawData() [*c]ImDrawData;
pub extern fn ImGui_ShowDemoWindow(p_open: [*c]bool) void;
pub extern fn ImGui_ShowMetricsWindow(p_open: [*c]bool) void;
pub extern fn ImGui_ShowDebugLogWindow(p_open: [*c]bool) void;
pub extern fn ImGui_ShowIDStackToolWindow() void;
pub extern fn ImGui_ShowIDStackToolWindowEx(p_open: [*c]bool) void;
pub extern fn ImGui_ShowAboutWindow(p_open: [*c]bool) void;
pub extern fn ImGui_ShowStyleEditor(ref: [*c]ImGuiStyle) void;
pub extern fn ImGui_ShowStyleSelector(label: [*c]const u8) bool;
pub extern fn ImGui_ShowFontSelector(label: [*c]const u8) void;
pub extern fn ImGui_ShowUserGuide() void;
pub extern fn ImGui_GetVersion() [*c]const u8;
pub extern fn ImGui_StyleColorsDark(dst: [*c]ImGuiStyle) void;
pub extern fn ImGui_StyleColorsLight(dst: [*c]ImGuiStyle) void;
pub extern fn ImGui_StyleColorsClassic(dst: [*c]ImGuiStyle) void;
pub extern fn ImGui_Begin(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn ImGui_End() void;
pub extern fn ImGui_BeginChild(str_id: [*c]const u8, size: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn ImGui_BeginChildID(id: ImGuiID, size: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn ImGui_EndChild() void;
pub extern fn ImGui_IsWindowAppearing() bool;
pub extern fn ImGui_IsWindowCollapsed() bool;
pub extern fn ImGui_IsWindowFocused(flags: ImGuiFocusedFlags) bool;
pub extern fn ImGui_IsWindowHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn ImGui_GetWindowDrawList() [*c]ImDrawList;
pub extern fn ImGui_GetWindowDpiScale() f32;
pub extern fn ImGui_GetWindowPos() ImVec2;
pub extern fn ImGui_GetWindowSize() ImVec2;
pub extern fn ImGui_GetWindowWidth() f32;
pub extern fn ImGui_GetWindowHeight() f32;
pub extern fn ImGui_GetWindowViewport() [*c]ImGuiViewport;
pub extern fn ImGui_SetNextWindowPos(pos: ImVec2, cond: ImGuiCond) void;
pub extern fn ImGui_SetNextWindowPosEx(pos: ImVec2, cond: ImGuiCond, pivot: ImVec2) void;
pub extern fn ImGui_SetNextWindowSize(size: ImVec2, cond: ImGuiCond) void;
pub extern fn ImGui_SetNextWindowSizeConstraints(size_min: ImVec2, size_max: ImVec2, custom_callback: ImGuiSizeCallback, custom_callback_data: ?*anyopaque) void;
pub extern fn ImGui_SetNextWindowContentSize(size: ImVec2) void;
pub extern fn ImGui_SetNextWindowCollapsed(collapsed: bool, cond: ImGuiCond) void;
pub extern fn ImGui_SetNextWindowFocus() void;
pub extern fn ImGui_SetNextWindowScroll(scroll: ImVec2) void;
pub extern fn ImGui_SetNextWindowBgAlpha(alpha: f32) void;
pub extern fn ImGui_SetNextWindowViewport(viewport_id: ImGuiID) void;
pub extern fn ImGui_SetWindowPos(pos: ImVec2, cond: ImGuiCond) void;
pub extern fn ImGui_SetWindowSize(size: ImVec2, cond: ImGuiCond) void;
pub extern fn ImGui_SetWindowCollapsed(collapsed: bool, cond: ImGuiCond) void;
pub extern fn ImGui_SetWindowFocus() void;
pub extern fn ImGui_SetWindowFontScale(scale: f32) void;
pub extern fn ImGui_SetWindowPosStr(name: [*c]const u8, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn ImGui_SetWindowSizeStr(name: [*c]const u8, size: ImVec2, cond: ImGuiCond) void;
pub extern fn ImGui_SetWindowCollapsedStr(name: [*c]const u8, collapsed: bool, cond: ImGuiCond) void;
pub extern fn ImGui_SetWindowFocusStr(name: [*c]const u8) void;
pub extern fn ImGui_GetScrollX() f32;
pub extern fn ImGui_GetScrollY() f32;
pub extern fn ImGui_SetScrollX(scroll_x: f32) void;
pub extern fn ImGui_SetScrollY(scroll_y: f32) void;
pub extern fn ImGui_GetScrollMaxX() f32;
pub extern fn ImGui_GetScrollMaxY() f32;
pub extern fn ImGui_SetScrollHereX(center_x_ratio: f32) void;
pub extern fn ImGui_SetScrollHereY(center_y_ratio: f32) void;
pub extern fn ImGui_SetScrollFromPosX(local_x: f32, center_x_ratio: f32) void;
pub extern fn ImGui_SetScrollFromPosY(local_y: f32, center_y_ratio: f32) void;
pub extern fn ImGui_PushFont(font: [*c]ImFont) void;
pub extern fn ImGui_PopFont() void;
pub extern fn ImGui_PushStyleColor(idx: ImGuiCol, col: ImU32) void;
pub extern fn ImGui_PushStyleColorImVec4(idx: ImGuiCol, col: ImVec4) void;
pub extern fn ImGui_PopStyleColor() void;
pub extern fn ImGui_PopStyleColorEx(count: c_int) void;
pub extern fn ImGui_PushStyleVar(idx: ImGuiStyleVar, val: f32) void;
pub extern fn ImGui_PushStyleVarImVec2(idx: ImGuiStyleVar, val: ImVec2) void;
pub extern fn ImGui_PushStyleVarX(idx: ImGuiStyleVar, val_x: f32) void;
pub extern fn ImGui_PushStyleVarY(idx: ImGuiStyleVar, val_y: f32) void;
pub extern fn ImGui_PopStyleVar() void;
pub extern fn ImGui_PopStyleVarEx(count: c_int) void;
pub extern fn ImGui_PushItemFlag(option: ImGuiItemFlags, enabled: bool) void;
pub extern fn ImGui_PopItemFlag() void;
pub extern fn ImGui_PushItemWidth(item_width: f32) void;
pub extern fn ImGui_PopItemWidth() void;
pub extern fn ImGui_SetNextItemWidth(item_width: f32) void;
pub extern fn ImGui_CalcItemWidth() f32;
pub extern fn ImGui_PushTextWrapPos(wrap_local_pos_x: f32) void;
pub extern fn ImGui_PopTextWrapPos() void;
pub extern fn ImGui_GetFont() [*c]ImFont;
pub extern fn ImGui_GetFontSize() f32;
pub extern fn ImGui_GetFontTexUvWhitePixel() ImVec2;
pub extern fn ImGui_GetColorU32(idx: ImGuiCol) ImU32;
pub extern fn ImGui_GetColorU32Ex(idx: ImGuiCol, alpha_mul: f32) ImU32;
pub extern fn ImGui_GetColorU32ImVec4(col: ImVec4) ImU32;
pub extern fn ImGui_GetColorU32ImU32(col: ImU32) ImU32;
pub extern fn ImGui_GetColorU32ImU32Ex(col: ImU32, alpha_mul: f32) ImU32;
pub extern fn ImGui_GetStyleColorVec4(idx: ImGuiCol) [*c]const ImVec4;
pub extern fn ImGui_GetCursorScreenPos() ImVec2;
pub extern fn ImGui_SetCursorScreenPos(pos: ImVec2) void;
pub extern fn ImGui_GetContentRegionAvail() ImVec2;
pub extern fn ImGui_GetCursorPos() ImVec2;
pub extern fn ImGui_GetCursorPosX() f32;
pub extern fn ImGui_GetCursorPosY() f32;
pub extern fn ImGui_SetCursorPos(local_pos: ImVec2) void;
pub extern fn ImGui_SetCursorPosX(local_x: f32) void;
pub extern fn ImGui_SetCursorPosY(local_y: f32) void;
pub extern fn ImGui_GetCursorStartPos() ImVec2;
pub extern fn ImGui_Separator() void;
pub extern fn ImGui_SameLine() void;
pub extern fn ImGui_SameLineEx(offset_from_start_x: f32, spacing: f32) void;
pub extern fn ImGui_NewLine() void;
pub extern fn ImGui_Spacing() void;
pub extern fn ImGui_Dummy(size: ImVec2) void;
pub extern fn ImGui_Indent() void;
pub extern fn ImGui_IndentEx(indent_w: f32) void;
pub extern fn ImGui_Unindent() void;
pub extern fn ImGui_UnindentEx(indent_w: f32) void;
pub extern fn ImGui_BeginGroup() void;
pub extern fn ImGui_EndGroup() void;
pub extern fn ImGui_AlignTextToFramePadding() void;
pub extern fn ImGui_GetTextLineHeight() f32;
pub extern fn ImGui_GetTextLineHeightWithSpacing() f32;
pub extern fn ImGui_GetFrameHeight() f32;
pub extern fn ImGui_GetFrameHeightWithSpacing() f32;
pub extern fn ImGui_PushID(str_id: [*c]const u8) void;
pub extern fn ImGui_PushIDStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) void;
pub extern fn ImGui_PushIDPtr(ptr_id: ?*const anyopaque) void;
pub extern fn ImGui_PushIDInt(int_id: c_int) void;
pub extern fn ImGui_PopID() void;
pub extern fn ImGui_GetID(str_id: [*c]const u8) ImGuiID;
pub extern fn ImGui_GetIDStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) ImGuiID;
pub extern fn ImGui_GetIDPtr(ptr_id: ?*const anyopaque) ImGuiID;
pub extern fn ImGui_GetIDInt(int_id: c_int) ImGuiID;
pub extern fn ImGui_TextUnformatted(text: [*c]const u8) void;
pub extern fn ImGui_TextUnformattedEx(text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImGui_Text(fmt: [*c]const u8, ...) void;
pub extern fn ImGui_TextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_TextColored(col: ImVec4, fmt: [*c]const u8, ...) void;
pub extern fn ImGui_TextColoredV(col: ImVec4, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_TextDisabled(fmt: [*c]const u8, ...) void;
pub extern fn ImGui_TextDisabledV(fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_TextWrapped(fmt: [*c]const u8, ...) void;
pub extern fn ImGui_TextWrappedV(fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_LabelText(label: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn ImGui_LabelTextV(label: [*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_BulletText(fmt: [*c]const u8, ...) void;
pub extern fn ImGui_BulletTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_SeparatorText(label: [*c]const u8) void;
pub extern fn ImGui_Button(label: [*c]const u8) bool;
pub extern fn ImGui_ButtonEx(label: [*c]const u8, size: ImVec2) bool;
pub extern fn ImGui_SmallButton(label: [*c]const u8) bool;
pub extern fn ImGui_InvisibleButton(str_id: [*c]const u8, size: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn ImGui_ArrowButton(str_id: [*c]const u8, dir: ImGuiDir) bool;
pub extern fn ImGui_Checkbox(label: [*c]const u8, v: [*c]bool) bool;
pub extern fn ImGui_CheckboxFlagsIntPtr(label: [*c]const u8, flags: [*c]c_int, flags_value: c_int) bool;
pub extern fn ImGui_CheckboxFlagsUintPtr(label: [*c]const u8, flags: [*c]c_uint, flags_value: c_uint) bool;
pub extern fn ImGui_RadioButton(label: [*c]const u8, active: bool) bool;
pub extern fn ImGui_RadioButtonIntPtr(label: [*c]const u8, v: [*c]c_int, v_button: c_int) bool;
pub extern fn ImGui_ProgressBar(fraction: f32, size_arg: ImVec2, overlay: [*c]const u8) void;
pub extern fn ImGui_Bullet() void;
pub extern fn ImGui_TextLink(label: [*c]const u8) bool;
pub extern fn ImGui_TextLinkOpenURL(label: [*c]const u8) void;
pub extern fn ImGui_TextLinkOpenURLEx(label: [*c]const u8, url: [*c]const u8) void;
pub extern fn ImGui_Image(user_texture_id: ImTextureID, image_size: ImVec2) void;
pub extern fn ImGui_ImageEx(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2) void;
pub extern fn ImGui_ImageWithBg(user_texture_id: ImTextureID, image_size: ImVec2) void;
pub extern fn ImGui_ImageWithBgEx(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) void;
pub extern fn ImGui_ImageButton(str_id: [*c]const u8, user_texture_id: ImTextureID, image_size: ImVec2) bool;
pub extern fn ImGui_ImageButtonEx(str_id: [*c]const u8, user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) bool;
pub extern fn ImGui_BeginCombo(label: [*c]const u8, preview_value: [*c]const u8, flags: ImGuiComboFlags) bool;
pub extern fn ImGui_EndCombo() void;
pub extern fn ImGui_ComboChar(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int) bool;
pub extern fn ImGui_ComboCharEx(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn ImGui_Combo(label: [*c]const u8, current_item: [*c]c_int, items_separated_by_zeros: [*c]const u8) bool;
pub extern fn ImGui_ComboEx(label: [*c]const u8, current_item: [*c]c_int, items_separated_by_zeros: [*c]const u8, popup_max_height_in_items: c_int) bool;
pub extern fn ImGui_ComboCallback(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int) bool;
pub extern fn ImGui_ComboCallbackEx(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn ImGui_DragFloat(label: [*c]const u8, v: [*c]f32) bool;
pub extern fn ImGui_DragFloatEx(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragFloat2(label: [*c]const u8, v: [*c]f32) bool;
pub extern fn ImGui_DragFloat2Ex(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragFloat3(label: [*c]const u8, v: [*c]f32) bool;
pub extern fn ImGui_DragFloat3Ex(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragFloat4(label: [*c]const u8, v: [*c]f32) bool;
pub extern fn ImGui_DragFloat4Ex(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragFloatRange2(label: [*c]const u8, v_current_min: [*c]f32, v_current_max: [*c]f32) bool;
pub extern fn ImGui_DragFloatRange2Ex(label: [*c]const u8, v_current_min: [*c]f32, v_current_max: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragInt(label: [*c]const u8, v: [*c]c_int) bool;
pub extern fn ImGui_DragIntEx(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragInt2(label: [*c]const u8, v: [*c]c_int) bool;
pub extern fn ImGui_DragInt2Ex(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragInt3(label: [*c]const u8, v: [*c]c_int) bool;
pub extern fn ImGui_DragInt3Ex(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragInt4(label: [*c]const u8, v: [*c]c_int) bool;
pub extern fn ImGui_DragInt4Ex(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragIntRange2(label: [*c]const u8, v_current_min: [*c]c_int, v_current_max: [*c]c_int) bool;
pub extern fn ImGui_DragIntRange2Ex(label: [*c]const u8, v_current_min: [*c]c_int, v_current_max: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque) bool;
pub extern fn ImGui_DragScalarEx(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_DragScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int) bool;
pub extern fn ImGui_DragScalarNEx(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderFloat(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32) bool;
pub extern fn ImGui_SliderFloatEx(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderFloat2(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32) bool;
pub extern fn ImGui_SliderFloat2Ex(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderFloat3(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32) bool;
pub extern fn ImGui_SliderFloat3Ex(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderFloat4(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32) bool;
pub extern fn ImGui_SliderFloat4Ex(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderAngle(label: [*c]const u8, v_rad: [*c]f32) bool;
pub extern fn ImGui_SliderAngleEx(label: [*c]const u8, v_rad: [*c]f32, v_degrees_min: f32, v_degrees_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderInt(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int) bool;
pub extern fn ImGui_SliderIntEx(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderInt2(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int) bool;
pub extern fn ImGui_SliderInt2Ex(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderInt3(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int) bool;
pub extern fn ImGui_SliderInt3Ex(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderInt4(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int) bool;
pub extern fn ImGui_SliderInt4Ex(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque) bool;
pub extern fn ImGui_SliderScalarEx(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_SliderScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_min: ?*const anyopaque, p_max: ?*const anyopaque) bool;
pub extern fn ImGui_SliderScalarNEx(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_VSliderFloat(label: [*c]const u8, size: ImVec2, v: [*c]f32, v_min: f32, v_max: f32) bool;
pub extern fn ImGui_VSliderFloatEx(label: [*c]const u8, size: ImVec2, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_VSliderInt(label: [*c]const u8, size: ImVec2, v: [*c]c_int, v_min: c_int, v_max: c_int) bool;
pub extern fn ImGui_VSliderIntEx(label: [*c]const u8, size: ImVec2, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_VSliderScalar(label: [*c]const u8, size: ImVec2, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque) bool;
pub extern fn ImGui_VSliderScalarEx(label: [*c]const u8, size: ImVec2, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn ImGui_InputText(label: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputTextEx(label: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn ImGui_InputTextMultiline(label: [*c]const u8, buf: [*c]u8, buf_size: usize) bool;
pub extern fn ImGui_InputTextMultilineEx(label: [*c]const u8, buf: [*c]u8, buf_size: usize, size: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn ImGui_InputTextWithHint(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputTextWithHintEx(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn ImGui_InputFloat(label: [*c]const u8, v: [*c]f32) bool;
pub extern fn ImGui_InputFloatEx(label: [*c]const u8, v: [*c]f32, step: f32, step_fast: f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputFloat2(label: [*c]const u8, v: [*c]f32) bool;
pub extern fn ImGui_InputFloat2Ex(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputFloat3(label: [*c]const u8, v: [*c]f32) bool;
pub extern fn ImGui_InputFloat3Ex(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputFloat4(label: [*c]const u8, v: [*c]f32) bool;
pub extern fn ImGui_InputFloat4Ex(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputInt(label: [*c]const u8, v: [*c]c_int) bool;
pub extern fn ImGui_InputIntEx(label: [*c]const u8, v: [*c]c_int, step: c_int, step_fast: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputInt2(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputInt3(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputInt4(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputDouble(label: [*c]const u8, v: [*c]f64) bool;
pub extern fn ImGui_InputDoubleEx(label: [*c]const u8, v: [*c]f64, step: f64, step_fast: f64, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque) bool;
pub extern fn ImGui_InputScalarEx(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_InputScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int) bool;
pub extern fn ImGui_InputScalarNEx(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn ImGui_ColorEdit3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn ImGui_ColorEdit4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn ImGui_ColorPicker3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn ImGui_ColorPicker4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags, ref_col: [*c]const f32) bool;
pub extern fn ImGui_ColorButton(desc_id: [*c]const u8, col: ImVec4, flags: ImGuiColorEditFlags) bool;
pub extern fn ImGui_ColorButtonEx(desc_id: [*c]const u8, col: ImVec4, flags: ImGuiColorEditFlags, size: ImVec2) bool;
pub extern fn ImGui_SetColorEditOptions(flags: ImGuiColorEditFlags) void;
pub extern fn ImGui_TreeNode(label: [*c]const u8) bool;
pub extern fn ImGui_TreeNodeStr(str_id: [*c]const u8, fmt: [*c]const u8, ...) bool;
pub extern fn ImGui_TreeNodePtr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, ...) bool;
pub extern fn ImGui_TreeNodeV(str_id: [*c]const u8, fmt: [*c]const u8, args: va_list) bool;
pub extern fn ImGui_TreeNodeVPtr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, args: va_list) bool;
pub extern fn ImGui_TreeNodeEx(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn ImGui_TreeNodeExStr(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn ImGui_TreeNodeExPtr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn ImGui_TreeNodeExV(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn ImGui_TreeNodeExVPtr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn ImGui_TreePush(str_id: [*c]const u8) void;
pub extern fn ImGui_TreePushPtr(ptr_id: ?*const anyopaque) void;
pub extern fn ImGui_TreePop() void;
pub extern fn ImGui_GetTreeNodeToLabelSpacing() f32;
pub extern fn ImGui_CollapsingHeader(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn ImGui_CollapsingHeaderBoolPtr(label: [*c]const u8, p_visible: [*c]bool, flags: ImGuiTreeNodeFlags) bool;
pub extern fn ImGui_SetNextItemOpen(is_open: bool, cond: ImGuiCond) void;
pub extern fn ImGui_SetNextItemStorageID(storage_id: ImGuiID) void;
pub extern fn ImGui_Selectable(label: [*c]const u8) bool;
pub extern fn ImGui_SelectableEx(label: [*c]const u8, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn ImGui_SelectableBoolPtr(label: [*c]const u8, p_selected: [*c]bool, flags: ImGuiSelectableFlags) bool;
pub extern fn ImGui_SelectableBoolPtrEx(label: [*c]const u8, p_selected: [*c]bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn ImGui_BeginMultiSelect(flags: ImGuiMultiSelectFlags) [*c]ImGuiMultiSelectIO;
pub extern fn ImGui_BeginMultiSelectEx(flags: ImGuiMultiSelectFlags, selection_size: c_int, items_count: c_int) [*c]ImGuiMultiSelectIO;
pub extern fn ImGui_EndMultiSelect() [*c]ImGuiMultiSelectIO;
pub extern fn ImGui_SetNextItemSelectionUserData(selection_user_data: ImGuiSelectionUserData) void;
pub extern fn ImGui_IsItemToggledSelection() bool;
pub extern fn ImGui_BeginListBox(label: [*c]const u8, size: ImVec2) bool;
pub extern fn ImGui_EndListBox() void;
pub extern fn ImGui_ListBox(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn ImGui_ListBoxCallback(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int) bool;
pub extern fn ImGui_ListBoxCallbackEx(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub extern fn ImGui_PlotLines(label: [*c]const u8, values: [*c]const f32, values_count: c_int) void;
pub extern fn ImGui_PlotLinesEx(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn ImGui_PlotLinesCallback(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int) void;
pub extern fn ImGui_PlotLinesCallbackEx(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn ImGui_PlotHistogram(label: [*c]const u8, values: [*c]const f32, values_count: c_int) void;
pub extern fn ImGui_PlotHistogramEx(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn ImGui_PlotHistogramCallback(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int) void;
pub extern fn ImGui_PlotHistogramCallbackEx(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn ImGui_BeginMenuBar() bool;
pub extern fn ImGui_EndMenuBar() void;
pub extern fn ImGui_BeginMainMenuBar() bool;
pub extern fn ImGui_EndMainMenuBar() void;
pub extern fn ImGui_BeginMenu(label: [*c]const u8) bool;
pub extern fn ImGui_BeginMenuEx(label: [*c]const u8, enabled: bool) bool;
pub extern fn ImGui_EndMenu() void;
pub extern fn ImGui_MenuItem(label: [*c]const u8) bool;
pub extern fn ImGui_MenuItemEx(label: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn ImGui_MenuItemBoolPtr(label: [*c]const u8, shortcut: [*c]const u8, p_selected: [*c]bool, enabled: bool) bool;
pub extern fn ImGui_BeginTooltip() bool;
pub extern fn ImGui_EndTooltip() void;
pub extern fn ImGui_SetTooltip(fmt: [*c]const u8, ...) void;
pub extern fn ImGui_SetTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_BeginItemTooltip() bool;
pub extern fn ImGui_SetItemTooltip(fmt: [*c]const u8, ...) void;
pub extern fn ImGui_SetItemTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_BeginPopup(str_id: [*c]const u8, flags: ImGuiWindowFlags) bool;
pub extern fn ImGui_BeginPopupModal(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn ImGui_EndPopup() void;
pub extern fn ImGui_OpenPopup(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn ImGui_OpenPopupID(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn ImGui_OpenPopupOnItemClick(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn ImGui_CloseCurrentPopup() void;
pub extern fn ImGui_BeginPopupContextItem() bool;
pub extern fn ImGui_BeginPopupContextItemEx(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn ImGui_BeginPopupContextWindow() bool;
pub extern fn ImGui_BeginPopupContextWindowEx(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn ImGui_BeginPopupContextVoid() bool;
pub extern fn ImGui_BeginPopupContextVoidEx(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn ImGui_IsPopupOpen(str_id: [*c]const u8, flags: ImGuiPopupFlags) bool;
pub extern fn ImGui_BeginTable(str_id: [*c]const u8, columns: c_int, flags: ImGuiTableFlags) bool;
pub extern fn ImGui_BeginTableEx(str_id: [*c]const u8, columns: c_int, flags: ImGuiTableFlags, outer_size: ImVec2, inner_width: f32) bool;
pub extern fn ImGui_EndTable() void;
pub extern fn ImGui_TableNextRow() void;
pub extern fn ImGui_TableNextRowEx(row_flags: ImGuiTableRowFlags, min_row_height: f32) void;
pub extern fn ImGui_TableNextColumn() bool;
pub extern fn ImGui_TableSetColumnIndex(column_n: c_int) bool;
pub extern fn ImGui_TableSetupColumn(label: [*c]const u8, flags: ImGuiTableColumnFlags) void;
pub extern fn ImGui_TableSetupColumnEx(label: [*c]const u8, flags: ImGuiTableColumnFlags, init_width_or_weight: f32, user_id: ImGuiID) void;
pub extern fn ImGui_TableSetupScrollFreeze(cols: c_int, rows: c_int) void;
pub extern fn ImGui_TableHeader(label: [*c]const u8) void;
pub extern fn ImGui_TableHeadersRow() void;
pub extern fn ImGui_TableAngledHeadersRow() void;
pub extern fn ImGui_TableGetSortSpecs() [*c]ImGuiTableSortSpecs;
pub extern fn ImGui_TableGetColumnCount() c_int;
pub extern fn ImGui_TableGetColumnIndex() c_int;
pub extern fn ImGui_TableGetRowIndex() c_int;
pub extern fn ImGui_TableGetColumnName(column_n: c_int) [*c]const u8;
pub extern fn ImGui_TableGetColumnFlags(column_n: c_int) ImGuiTableColumnFlags;
pub extern fn ImGui_TableSetColumnEnabled(column_n: c_int, v: bool) void;
pub extern fn ImGui_TableGetHoveredColumn() c_int;
pub extern fn ImGui_TableSetBgColor(target: ImGuiTableBgTarget, color: ImU32, column_n: c_int) void;
pub extern fn ImGui_Columns() void;
pub extern fn ImGui_ColumnsEx(count: c_int, id: [*c]const u8, borders: bool) void;
pub extern fn ImGui_NextColumn() void;
pub extern fn ImGui_GetColumnIndex() c_int;
pub extern fn ImGui_GetColumnWidth(column_index: c_int) f32;
pub extern fn ImGui_SetColumnWidth(column_index: c_int, width: f32) void;
pub extern fn ImGui_GetColumnOffset(column_index: c_int) f32;
pub extern fn ImGui_SetColumnOffset(column_index: c_int, offset_x: f32) void;
pub extern fn ImGui_GetColumnsCount() c_int;
pub extern fn ImGui_BeginTabBar(str_id: [*c]const u8, flags: ImGuiTabBarFlags) bool;
pub extern fn ImGui_EndTabBar() void;
pub extern fn ImGui_BeginTabItem(label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags) bool;
pub extern fn ImGui_EndTabItem() void;
pub extern fn ImGui_TabItemButton(label: [*c]const u8, flags: ImGuiTabItemFlags) bool;
pub extern fn ImGui_SetTabItemClosed(tab_or_docked_window_label: [*c]const u8) void;
pub extern fn ImGui_DockSpace(dockspace_id: ImGuiID) ImGuiID;
pub extern fn ImGui_DockSpaceEx(dockspace_id: ImGuiID, size: ImVec2, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn ImGui_DockSpaceOverViewport() ImGuiID;
pub extern fn ImGui_DockSpaceOverViewportEx(dockspace_id: ImGuiID, viewport: [*c]const ImGuiViewport, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn ImGui_SetNextWindowDockID(dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn ImGui_SetNextWindowClass(window_class: [*c]const ImGuiWindowClass) void;
pub extern fn ImGui_GetWindowDockID() ImGuiID;
pub extern fn ImGui_IsWindowDocked() bool;
pub extern fn ImGui_LogToTTY(auto_open_depth: c_int) void;
pub extern fn ImGui_LogToFile(auto_open_depth: c_int, filename: [*c]const u8) void;
pub extern fn ImGui_LogToClipboard(auto_open_depth: c_int) void;
pub extern fn ImGui_LogFinish() void;
pub extern fn ImGui_LogButtons() void;
pub extern fn ImGui_LogText(fmt: [*c]const u8, ...) void;
pub extern fn ImGui_LogTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_BeginDragDropSource(flags: ImGuiDragDropFlags) bool;
pub extern fn ImGui_SetDragDropPayload(@"type": [*c]const u8, data: ?*const anyopaque, sz: usize, cond: ImGuiCond) bool;
pub extern fn ImGui_EndDragDropSource() void;
pub extern fn ImGui_BeginDragDropTarget() bool;
pub extern fn ImGui_AcceptDragDropPayload(@"type": [*c]const u8, flags: ImGuiDragDropFlags) [*c]const ImGuiPayload;
pub extern fn ImGui_EndDragDropTarget() void;
pub extern fn ImGui_GetDragDropPayload() [*c]const ImGuiPayload;
pub extern fn ImGui_BeginDisabled(disabled: bool) void;
pub extern fn ImGui_EndDisabled() void;
pub extern fn ImGui_PushClipRect(clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn ImGui_PopClipRect() void;
pub extern fn ImGui_SetItemDefaultFocus() void;
pub extern fn ImGui_SetKeyboardFocusHere() void;
pub extern fn ImGui_SetKeyboardFocusHereEx(offset: c_int) void;
pub extern fn ImGui_SetNavCursorVisible(visible: bool) void;
pub extern fn ImGui_SetNextItemAllowOverlap() void;
pub extern fn ImGui_IsItemHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn ImGui_IsItemActive() bool;
pub extern fn ImGui_IsItemFocused() bool;
pub extern fn ImGui_IsItemClicked() bool;
pub extern fn ImGui_IsItemClickedEx(mouse_button: ImGuiMouseButton) bool;
pub extern fn ImGui_IsItemVisible() bool;
pub extern fn ImGui_IsItemEdited() bool;
pub extern fn ImGui_IsItemActivated() bool;
pub extern fn ImGui_IsItemDeactivated() bool;
pub extern fn ImGui_IsItemDeactivatedAfterEdit() bool;
pub extern fn ImGui_IsItemToggledOpen() bool;
pub extern fn ImGui_IsAnyItemHovered() bool;
pub extern fn ImGui_IsAnyItemActive() bool;
pub extern fn ImGui_IsAnyItemFocused() bool;
pub extern fn ImGui_GetItemID() ImGuiID;
pub extern fn ImGui_GetItemRectMin() ImVec2;
pub extern fn ImGui_GetItemRectMax() ImVec2;
pub extern fn ImGui_GetItemRectSize() ImVec2;
pub extern fn ImGui_GetMainViewport() [*c]ImGuiViewport;
pub extern fn ImGui_GetBackgroundDrawList() [*c]ImDrawList;
pub extern fn ImGui_GetBackgroundDrawListEx(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn ImGui_GetForegroundDrawList() [*c]ImDrawList;
pub extern fn ImGui_GetForegroundDrawListEx(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn ImGui_IsRectVisibleBySize(size: ImVec2) bool;
pub extern fn ImGui_IsRectVisible(rect_min: ImVec2, rect_max: ImVec2) bool;
pub extern fn ImGui_GetTime() f64;
pub extern fn ImGui_GetFrameCount() c_int;
pub extern fn ImGui_GetDrawListSharedData() ?*ImDrawListSharedData;
pub extern fn ImGui_GetStyleColorName(idx: ImGuiCol) [*c]const u8;
pub extern fn ImGui_SetStateStorage(storage: [*c]ImGuiStorage) void;
pub extern fn ImGui_GetStateStorage() [*c]ImGuiStorage;
pub extern fn ImGui_CalcTextSize(text: [*c]const u8) ImVec2;
pub extern fn ImGui_CalcTextSizeEx(text: [*c]const u8, text_end: [*c]const u8, hide_text_after_double_hash: bool, wrap_width: f32) ImVec2;
pub extern fn ImGui_ColorConvertU32ToFloat4(in: ImU32) ImVec4;
pub extern fn ImGui_ColorConvertFloat4ToU32(in: ImVec4) ImU32;
pub extern fn ImGui_ColorConvertRGBtoHSV(r: f32, g: f32, b: f32, out_h: [*c]f32, out_s: [*c]f32, out_v: [*c]f32) void;
pub extern fn ImGui_ColorConvertHSVtoRGB(h: f32, s: f32, v: f32, out_r: [*c]f32, out_g: [*c]f32, out_b: [*c]f32) void;
pub extern fn ImGui_IsKeyDown(key: ImGuiKey) bool;
pub extern fn ImGui_IsKeyPressed(key: ImGuiKey) bool;
pub extern fn ImGui_IsKeyPressedEx(key: ImGuiKey, repeat: bool) bool;
pub extern fn ImGui_IsKeyReleased(key: ImGuiKey) bool;
pub extern fn ImGui_IsKeyChordPressed(key_chord: ImGuiKeyChord) bool;
pub extern fn ImGui_GetKeyPressedAmount(key: ImGuiKey, repeat_delay: f32, rate: f32) c_int;
pub extern fn ImGui_GetKeyName(key: ImGuiKey) [*c]const u8;
pub extern fn ImGui_SetNextFrameWantCaptureKeyboard(want_capture_keyboard: bool) void;
pub extern fn ImGui_Shortcut(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) bool;
pub extern fn ImGui_SetNextItemShortcut(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) void;
pub extern fn ImGui_SetItemKeyOwner(key: ImGuiKey) void;
pub extern fn ImGui_IsMouseDown(button: ImGuiMouseButton) bool;
pub extern fn ImGui_IsMouseClicked(button: ImGuiMouseButton) bool;
pub extern fn ImGui_IsMouseClickedEx(button: ImGuiMouseButton, repeat: bool) bool;
pub extern fn ImGui_IsMouseReleased(button: ImGuiMouseButton) bool;
pub extern fn ImGui_IsMouseDoubleClicked(button: ImGuiMouseButton) bool;
pub extern fn ImGui_IsMouseReleasedWithDelay(button: ImGuiMouseButton, delay: f32) bool;
pub extern fn ImGui_GetMouseClickedCount(button: ImGuiMouseButton) c_int;
pub extern fn ImGui_IsMouseHoveringRect(r_min: ImVec2, r_max: ImVec2) bool;
pub extern fn ImGui_IsMouseHoveringRectEx(r_min: ImVec2, r_max: ImVec2, clip: bool) bool;
pub extern fn ImGui_IsMousePosValid(mouse_pos: [*c]const ImVec2) bool;
pub extern fn ImGui_IsAnyMouseDown() bool;
pub extern fn ImGui_GetMousePos() ImVec2;
pub extern fn ImGui_GetMousePosOnOpeningCurrentPopup() ImVec2;
pub extern fn ImGui_IsMouseDragging(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn ImGui_GetMouseDragDelta(button: ImGuiMouseButton, lock_threshold: f32) ImVec2;
pub extern fn ImGui_ResetMouseDragDelta() void;
pub extern fn ImGui_ResetMouseDragDeltaEx(button: ImGuiMouseButton) void;
pub extern fn ImGui_GetMouseCursor() ImGuiMouseCursor;
pub extern fn ImGui_SetMouseCursor(cursor_type: ImGuiMouseCursor) void;
pub extern fn ImGui_SetNextFrameWantCaptureMouse(want_capture_mouse: bool) void;
pub extern fn ImGui_GetClipboardText() [*c]const u8;
pub extern fn ImGui_SetClipboardText(text: [*c]const u8) void;
pub extern fn ImGui_LoadIniSettingsFromDisk(ini_filename: [*c]const u8) void;
pub extern fn ImGui_LoadIniSettingsFromMemory(ini_data: [*c]const u8, ini_size: usize) void;
pub extern fn ImGui_SaveIniSettingsToDisk(ini_filename: [*c]const u8) void;
pub extern fn ImGui_SaveIniSettingsToMemory(out_ini_size: [*c]usize) [*c]const u8;
pub extern fn ImGui_DebugTextEncoding(text: [*c]const u8) void;
pub extern fn ImGui_DebugFlashStyleColor(idx: ImGuiCol) void;
pub extern fn ImGui_DebugStartItemPicker() void;
pub extern fn ImGui_DebugCheckVersionAndDataLayout(version_str: [*c]const u8, sz_io: usize, sz_style: usize, sz_vec2: usize, sz_vec4: usize, sz_drawvert: usize, sz_drawidx: usize) bool;
pub extern fn ImGui_DebugLog(fmt: [*c]const u8, ...) void;
pub extern fn ImGui_DebugLogV(fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGui_SetAllocatorFunctions(alloc_func: ImGuiMemAllocFunc, free_func: ImGuiMemFreeFunc, user_data: ?*anyopaque) void;
pub extern fn ImGui_GetAllocatorFunctions(p_alloc_func: [*c]ImGuiMemAllocFunc, p_free_func: [*c]ImGuiMemFreeFunc, p_user_data: [*c]?*anyopaque) void;
pub extern fn ImGui_MemAlloc(size: usize) ?*anyopaque;
pub extern fn ImGui_MemFree(ptr: ?*anyopaque) void;
pub extern fn ImGui_UpdatePlatformWindows() void;
pub extern fn ImGui_RenderPlatformWindowsDefault() void;
pub extern fn ImGui_RenderPlatformWindowsDefaultEx(platform_render_arg: ?*anyopaque, renderer_render_arg: ?*anyopaque) void;
pub extern fn ImGui_DestroyPlatformWindows() void;
pub extern fn ImGui_FindViewportByID(id: ImGuiID) [*c]ImGuiViewport;
pub extern fn ImGui_FindViewportByPlatformHandle(platform_handle: ?*anyopaque) [*c]ImGuiViewport;
pub const ImGuiWindowFlags_None: c_int = 0;
pub const ImGuiWindowFlags_NoTitleBar: c_int = 1;
pub const ImGuiWindowFlags_NoResize: c_int = 2;
pub const ImGuiWindowFlags_NoMove: c_int = 4;
pub const ImGuiWindowFlags_NoScrollbar: c_int = 8;
pub const ImGuiWindowFlags_NoScrollWithMouse: c_int = 16;
pub const ImGuiWindowFlags_NoCollapse: c_int = 32;
pub const ImGuiWindowFlags_AlwaysAutoResize: c_int = 64;
pub const ImGuiWindowFlags_NoBackground: c_int = 128;
pub const ImGuiWindowFlags_NoSavedSettings: c_int = 256;
pub const ImGuiWindowFlags_NoMouseInputs: c_int = 512;
pub const ImGuiWindowFlags_MenuBar: c_int = 1024;
pub const ImGuiWindowFlags_HorizontalScrollbar: c_int = 2048;
pub const ImGuiWindowFlags_NoFocusOnAppearing: c_int = 4096;
pub const ImGuiWindowFlags_NoBringToFrontOnFocus: c_int = 8192;
pub const ImGuiWindowFlags_AlwaysVerticalScrollbar: c_int = 16384;
pub const ImGuiWindowFlags_AlwaysHorizontalScrollbar: c_int = 32768;
pub const ImGuiWindowFlags_NoNavInputs: c_int = 65536;
pub const ImGuiWindowFlags_NoNavFocus: c_int = 131072;
pub const ImGuiWindowFlags_UnsavedDocument: c_int = 262144;
pub const ImGuiWindowFlags_NoDocking: c_int = 524288;
pub const ImGuiWindowFlags_NoNav: c_int = 196608;
pub const ImGuiWindowFlags_NoDecoration: c_int = 43;
pub const ImGuiWindowFlags_NoInputs: c_int = 197120;
pub const ImGuiWindowFlags_DockNodeHost: c_int = 8388608;
pub const ImGuiWindowFlags_ChildWindow: c_int = 16777216;
pub const ImGuiWindowFlags_Tooltip: c_int = 33554432;
pub const ImGuiWindowFlags_Popup: c_int = 67108864;
pub const ImGuiWindowFlags_Modal: c_int = 134217728;
pub const ImGuiWindowFlags_ChildMenu: c_int = 268435456;
pub const ImGuiWindowFlags_NavFlattened: c_int = 536870912;
pub const ImGuiWindowFlags_AlwaysUseWindowPadding: c_int = 1073741824;
pub const ImGuiWindowFlags_ = c_uint;
pub const ImGuiChildFlags_None: c_int = 0;
pub const ImGuiChildFlags_Borders: c_int = 1;
pub const ImGuiChildFlags_AlwaysUseWindowPadding: c_int = 2;
pub const ImGuiChildFlags_ResizeX: c_int = 4;
pub const ImGuiChildFlags_ResizeY: c_int = 8;
pub const ImGuiChildFlags_AutoResizeX: c_int = 16;
pub const ImGuiChildFlags_AutoResizeY: c_int = 32;
pub const ImGuiChildFlags_AlwaysAutoResize: c_int = 64;
pub const ImGuiChildFlags_FrameStyle: c_int = 128;
pub const ImGuiChildFlags_NavFlattened: c_int = 256;
pub const ImGuiChildFlags_Border: c_int = 1;
pub const ImGuiChildFlags_ = c_uint;
pub const ImGuiItemFlags_None: c_int = 0;
pub const ImGuiItemFlags_NoTabStop: c_int = 1;
pub const ImGuiItemFlags_NoNav: c_int = 2;
pub const ImGuiItemFlags_NoNavDefaultFocus: c_int = 4;
pub const ImGuiItemFlags_ButtonRepeat: c_int = 8;
pub const ImGuiItemFlags_AutoClosePopups: c_int = 16;
pub const ImGuiItemFlags_AllowDuplicateId: c_int = 32;
pub const ImGuiItemFlags_ = c_uint;
pub const ImGuiInputTextFlags_None: c_int = 0;
pub const ImGuiInputTextFlags_CharsDecimal: c_int = 1;
pub const ImGuiInputTextFlags_CharsHexadecimal: c_int = 2;
pub const ImGuiInputTextFlags_CharsScientific: c_int = 4;
pub const ImGuiInputTextFlags_CharsUppercase: c_int = 8;
pub const ImGuiInputTextFlags_CharsNoBlank: c_int = 16;
pub const ImGuiInputTextFlags_AllowTabInput: c_int = 32;
pub const ImGuiInputTextFlags_EnterReturnsTrue: c_int = 64;
pub const ImGuiInputTextFlags_EscapeClearsAll: c_int = 128;
pub const ImGuiInputTextFlags_CtrlEnterForNewLine: c_int = 256;
pub const ImGuiInputTextFlags_ReadOnly: c_int = 512;
pub const ImGuiInputTextFlags_Password: c_int = 1024;
pub const ImGuiInputTextFlags_AlwaysOverwrite: c_int = 2048;
pub const ImGuiInputTextFlags_AutoSelectAll: c_int = 4096;
pub const ImGuiInputTextFlags_ParseEmptyRefVal: c_int = 8192;
pub const ImGuiInputTextFlags_DisplayEmptyRefVal: c_int = 16384;
pub const ImGuiInputTextFlags_NoHorizontalScroll: c_int = 32768;
pub const ImGuiInputTextFlags_NoUndoRedo: c_int = 65536;
pub const ImGuiInputTextFlags_ElideLeft: c_int = 131072;
pub const ImGuiInputTextFlags_CallbackCompletion: c_int = 262144;
pub const ImGuiInputTextFlags_CallbackHistory: c_int = 524288;
pub const ImGuiInputTextFlags_CallbackAlways: c_int = 1048576;
pub const ImGuiInputTextFlags_CallbackCharFilter: c_int = 2097152;
pub const ImGuiInputTextFlags_CallbackResize: c_int = 4194304;
pub const ImGuiInputTextFlags_CallbackEdit: c_int = 8388608;
pub const ImGuiInputTextFlags_ = c_uint;
pub const ImGuiTreeNodeFlags_None: c_int = 0;
pub const ImGuiTreeNodeFlags_Selected: c_int = 1;
pub const ImGuiTreeNodeFlags_Framed: c_int = 2;
pub const ImGuiTreeNodeFlags_AllowOverlap: c_int = 4;
pub const ImGuiTreeNodeFlags_NoTreePushOnOpen: c_int = 8;
pub const ImGuiTreeNodeFlags_NoAutoOpenOnLog: c_int = 16;
pub const ImGuiTreeNodeFlags_DefaultOpen: c_int = 32;
pub const ImGuiTreeNodeFlags_OpenOnDoubleClick: c_int = 64;
pub const ImGuiTreeNodeFlags_OpenOnArrow: c_int = 128;
pub const ImGuiTreeNodeFlags_Leaf: c_int = 256;
pub const ImGuiTreeNodeFlags_Bullet: c_int = 512;
pub const ImGuiTreeNodeFlags_FramePadding: c_int = 1024;
pub const ImGuiTreeNodeFlags_SpanAvailWidth: c_int = 2048;
pub const ImGuiTreeNodeFlags_SpanFullWidth: c_int = 4096;
pub const ImGuiTreeNodeFlags_SpanLabelWidth: c_int = 8192;
pub const ImGuiTreeNodeFlags_SpanAllColumns: c_int = 16384;
pub const ImGuiTreeNodeFlags_LabelSpanAllColumns: c_int = 32768;
pub const ImGuiTreeNodeFlags_NavLeftJumpsBackHere: c_int = 131072;
pub const ImGuiTreeNodeFlags_CollapsingHeader: c_int = 26;
pub const ImGuiTreeNodeFlags_DrawLinesNone: c_int = 262144;
pub const ImGuiTreeNodeFlags_DrawLinesFull: c_int = 524288;
pub const ImGuiTreeNodeFlags_DrawLinesToNodes: c_int = 1048576;
pub const ImGuiTreeNodeFlags_AllowItemOverlap: c_int = 4;
pub const ImGuiTreeNodeFlags_SpanTextWidth: c_int = 8192;
pub const ImGuiTreeNodeFlags_ = c_uint;
pub const ImGuiPopupFlags_None: c_int = 0;
pub const ImGuiPopupFlags_MouseButtonLeft: c_int = 0;
pub const ImGuiPopupFlags_MouseButtonRight: c_int = 1;
pub const ImGuiPopupFlags_MouseButtonMiddle: c_int = 2;
pub const ImGuiPopupFlags_MouseButtonMask_: c_int = 31;
pub const ImGuiPopupFlags_MouseButtonDefault_: c_int = 1;
pub const ImGuiPopupFlags_NoReopen: c_int = 32;
pub const ImGuiPopupFlags_NoOpenOverExistingPopup: c_int = 128;
pub const ImGuiPopupFlags_NoOpenOverItems: c_int = 256;
pub const ImGuiPopupFlags_AnyPopupId: c_int = 1024;
pub const ImGuiPopupFlags_AnyPopupLevel: c_int = 2048;
pub const ImGuiPopupFlags_AnyPopup: c_int = 3072;
pub const ImGuiPopupFlags_ = c_uint;
pub const ImGuiSelectableFlags_None: c_int = 0;
pub const ImGuiSelectableFlags_NoAutoClosePopups: c_int = 1;
pub const ImGuiSelectableFlags_SpanAllColumns: c_int = 2;
pub const ImGuiSelectableFlags_AllowDoubleClick: c_int = 4;
pub const ImGuiSelectableFlags_Disabled: c_int = 8;
pub const ImGuiSelectableFlags_AllowOverlap: c_int = 16;
pub const ImGuiSelectableFlags_Highlight: c_int = 32;
pub const ImGuiSelectableFlags_DontClosePopups: c_int = 1;
pub const ImGuiSelectableFlags_AllowItemOverlap: c_int = 16;
pub const ImGuiSelectableFlags_ = c_uint;
pub const ImGuiComboFlags_None: c_int = 0;
pub const ImGuiComboFlags_PopupAlignLeft: c_int = 1;
pub const ImGuiComboFlags_HeightSmall: c_int = 2;
pub const ImGuiComboFlags_HeightRegular: c_int = 4;
pub const ImGuiComboFlags_HeightLarge: c_int = 8;
pub const ImGuiComboFlags_HeightLargest: c_int = 16;
pub const ImGuiComboFlags_NoArrowButton: c_int = 32;
pub const ImGuiComboFlags_NoPreview: c_int = 64;
pub const ImGuiComboFlags_WidthFitPreview: c_int = 128;
pub const ImGuiComboFlags_HeightMask_: c_int = 30;
pub const ImGuiComboFlags_ = c_uint;
pub const ImGuiTabBarFlags_None: c_int = 0;
pub const ImGuiTabBarFlags_Reorderable: c_int = 1;
pub const ImGuiTabBarFlags_AutoSelectNewTabs: c_int = 2;
pub const ImGuiTabBarFlags_TabListPopupButton: c_int = 4;
pub const ImGuiTabBarFlags_NoCloseWithMiddleMouseButton: c_int = 8;
pub const ImGuiTabBarFlags_NoTabListScrollingButtons: c_int = 16;
pub const ImGuiTabBarFlags_NoTooltip: c_int = 32;
pub const ImGuiTabBarFlags_DrawSelectedOverline: c_int = 64;
pub const ImGuiTabBarFlags_FittingPolicyResizeDown: c_int = 128;
pub const ImGuiTabBarFlags_FittingPolicyScroll: c_int = 256;
pub const ImGuiTabBarFlags_FittingPolicyMask_: c_int = 384;
pub const ImGuiTabBarFlags_FittingPolicyDefault_: c_int = 128;
pub const ImGuiTabBarFlags_ = c_uint;
pub const ImGuiTabItemFlags_None: c_int = 0;
pub const ImGuiTabItemFlags_UnsavedDocument: c_int = 1;
pub const ImGuiTabItemFlags_SetSelected: c_int = 2;
pub const ImGuiTabItemFlags_NoCloseWithMiddleMouseButton: c_int = 4;
pub const ImGuiTabItemFlags_NoPushId: c_int = 8;
pub const ImGuiTabItemFlags_NoTooltip: c_int = 16;
pub const ImGuiTabItemFlags_NoReorder: c_int = 32;
pub const ImGuiTabItemFlags_Leading: c_int = 64;
pub const ImGuiTabItemFlags_Trailing: c_int = 128;
pub const ImGuiTabItemFlags_NoAssumedClosure: c_int = 256;
pub const ImGuiTabItemFlags_ = c_uint;
pub const ImGuiFocusedFlags_None: c_int = 0;
pub const ImGuiFocusedFlags_ChildWindows: c_int = 1;
pub const ImGuiFocusedFlags_RootWindow: c_int = 2;
pub const ImGuiFocusedFlags_AnyWindow: c_int = 4;
pub const ImGuiFocusedFlags_NoPopupHierarchy: c_int = 8;
pub const ImGuiFocusedFlags_DockHierarchy: c_int = 16;
pub const ImGuiFocusedFlags_RootAndChildWindows: c_int = 3;
pub const ImGuiFocusedFlags_ = c_uint;
pub const ImGuiHoveredFlags_None: c_int = 0;
pub const ImGuiHoveredFlags_ChildWindows: c_int = 1;
pub const ImGuiHoveredFlags_RootWindow: c_int = 2;
pub const ImGuiHoveredFlags_AnyWindow: c_int = 4;
pub const ImGuiHoveredFlags_NoPopupHierarchy: c_int = 8;
pub const ImGuiHoveredFlags_DockHierarchy: c_int = 16;
pub const ImGuiHoveredFlags_AllowWhenBlockedByPopup: c_int = 32;
pub const ImGuiHoveredFlags_AllowWhenBlockedByActiveItem: c_int = 128;
pub const ImGuiHoveredFlags_AllowWhenOverlappedByItem: c_int = 256;
pub const ImGuiHoveredFlags_AllowWhenOverlappedByWindow: c_int = 512;
pub const ImGuiHoveredFlags_AllowWhenDisabled: c_int = 1024;
pub const ImGuiHoveredFlags_NoNavOverride: c_int = 2048;
pub const ImGuiHoveredFlags_AllowWhenOverlapped: c_int = 768;
pub const ImGuiHoveredFlags_RectOnly: c_int = 928;
pub const ImGuiHoveredFlags_RootAndChildWindows: c_int = 3;
pub const ImGuiHoveredFlags_ForTooltip: c_int = 4096;
pub const ImGuiHoveredFlags_Stationary: c_int = 8192;
pub const ImGuiHoveredFlags_DelayNone: c_int = 16384;
pub const ImGuiHoveredFlags_DelayShort: c_int = 32768;
pub const ImGuiHoveredFlags_DelayNormal: c_int = 65536;
pub const ImGuiHoveredFlags_NoSharedDelay: c_int = 131072;
pub const ImGuiHoveredFlags_ = c_uint;
pub const ImGuiDockNodeFlags_None: c_int = 0;
pub const ImGuiDockNodeFlags_KeepAliveOnly: c_int = 1;
pub const ImGuiDockNodeFlags_NoDockingOverCentralNode: c_int = 4;
pub const ImGuiDockNodeFlags_PassthruCentralNode: c_int = 8;
pub const ImGuiDockNodeFlags_NoDockingSplit: c_int = 16;
pub const ImGuiDockNodeFlags_NoResize: c_int = 32;
pub const ImGuiDockNodeFlags_AutoHideTabBar: c_int = 64;
pub const ImGuiDockNodeFlags_NoUndocking: c_int = 128;
pub const ImGuiDockNodeFlags_NoSplit: c_int = 16;
pub const ImGuiDockNodeFlags_NoDockingInCentralNode: c_int = 4;
pub const ImGuiDockNodeFlags_ = c_uint;
pub const ImGuiDragDropFlags_None: c_int = 0;
pub const ImGuiDragDropFlags_SourceNoPreviewTooltip: c_int = 1;
pub const ImGuiDragDropFlags_SourceNoDisableHover: c_int = 2;
pub const ImGuiDragDropFlags_SourceNoHoldToOpenOthers: c_int = 4;
pub const ImGuiDragDropFlags_SourceAllowNullID: c_int = 8;
pub const ImGuiDragDropFlags_SourceExtern: c_int = 16;
pub const ImGuiDragDropFlags_PayloadAutoExpire: c_int = 32;
pub const ImGuiDragDropFlags_PayloadNoCrossContext: c_int = 64;
pub const ImGuiDragDropFlags_PayloadNoCrossProcess: c_int = 128;
pub const ImGuiDragDropFlags_AcceptBeforeDelivery: c_int = 1024;
pub const ImGuiDragDropFlags_AcceptNoDrawDefaultRect: c_int = 2048;
pub const ImGuiDragDropFlags_AcceptNoPreviewTooltip: c_int = 4096;
pub const ImGuiDragDropFlags_AcceptPeekOnly: c_int = 3072;
pub const ImGuiDragDropFlags_SourceAutoExpirePayload: c_int = 32;
pub const ImGuiDragDropFlags_ = c_uint;
pub const ImGuiDataType_S8: c_int = 0;
pub const ImGuiDataType_U8: c_int = 1;
pub const ImGuiDataType_S16: c_int = 2;
pub const ImGuiDataType_U16: c_int = 3;
pub const ImGuiDataType_S32: c_int = 4;
pub const ImGuiDataType_U32: c_int = 5;
pub const ImGuiDataType_S64: c_int = 6;
pub const ImGuiDataType_U64: c_int = 7;
pub const ImGuiDataType_Float: c_int = 8;
pub const ImGuiDataType_Double: c_int = 9;
pub const ImGuiDataType_Bool: c_int = 10;
pub const ImGuiDataType_String: c_int = 11;
pub const ImGuiDataType_COUNT: c_int = 12;
pub const ImGuiDataType_ = c_uint;
pub const ImGuiDir_None: c_int = -1;
pub const ImGuiDir_Left: c_int = 0;
pub const ImGuiDir_Right: c_int = 1;
pub const ImGuiDir_Up: c_int = 2;
pub const ImGuiDir_Down: c_int = 3;
pub const ImGuiDir_COUNT: c_int = 4;
const enum_unnamed_2 = c_int;
pub const ImGuiSortDirection_None: c_int = 0;
pub const ImGuiSortDirection_Ascending: c_int = 1;
pub const ImGuiSortDirection_Descending: c_int = 2;
const enum_unnamed_3 = c_uint;
pub const ImGuiKey_None: c_int = 0;
pub const ImGuiKey_NamedKey_BEGIN: c_int = 512;
pub const ImGuiKey_Tab: c_int = 512;
pub const ImGuiKey_LeftArrow: c_int = 513;
pub const ImGuiKey_RightArrow: c_int = 514;
pub const ImGuiKey_UpArrow: c_int = 515;
pub const ImGuiKey_DownArrow: c_int = 516;
pub const ImGuiKey_PageUp: c_int = 517;
pub const ImGuiKey_PageDown: c_int = 518;
pub const ImGuiKey_Home: c_int = 519;
pub const ImGuiKey_End: c_int = 520;
pub const ImGuiKey_Insert: c_int = 521;
pub const ImGuiKey_Delete: c_int = 522;
pub const ImGuiKey_Backspace: c_int = 523;
pub const ImGuiKey_Space: c_int = 524;
pub const ImGuiKey_Enter: c_int = 525;
pub const ImGuiKey_Escape: c_int = 526;
pub const ImGuiKey_LeftCtrl: c_int = 527;
pub const ImGuiKey_LeftShift: c_int = 528;
pub const ImGuiKey_LeftAlt: c_int = 529;
pub const ImGuiKey_LeftSuper: c_int = 530;
pub const ImGuiKey_RightCtrl: c_int = 531;
pub const ImGuiKey_RightShift: c_int = 532;
pub const ImGuiKey_RightAlt: c_int = 533;
pub const ImGuiKey_RightSuper: c_int = 534;
pub const ImGuiKey_Menu: c_int = 535;
pub const ImGuiKey_0: c_int = 536;
pub const ImGuiKey_1: c_int = 537;
pub const ImGuiKey_2: c_int = 538;
pub const ImGuiKey_3: c_int = 539;
pub const ImGuiKey_4: c_int = 540;
pub const ImGuiKey_5: c_int = 541;
pub const ImGuiKey_6: c_int = 542;
pub const ImGuiKey_7: c_int = 543;
pub const ImGuiKey_8: c_int = 544;
pub const ImGuiKey_9: c_int = 545;
pub const ImGuiKey_A: c_int = 546;
pub const ImGuiKey_B: c_int = 547;
pub const ImGuiKey_C: c_int = 548;
pub const ImGuiKey_D: c_int = 549;
pub const ImGuiKey_E: c_int = 550;
pub const ImGuiKey_F: c_int = 551;
pub const ImGuiKey_G: c_int = 552;
pub const ImGuiKey_H: c_int = 553;
pub const ImGuiKey_I: c_int = 554;
pub const ImGuiKey_J: c_int = 555;
pub const ImGuiKey_K: c_int = 556;
pub const ImGuiKey_L: c_int = 557;
pub const ImGuiKey_M: c_int = 558;
pub const ImGuiKey_N: c_int = 559;
pub const ImGuiKey_O: c_int = 560;
pub const ImGuiKey_P: c_int = 561;
pub const ImGuiKey_Q: c_int = 562;
pub const ImGuiKey_R: c_int = 563;
pub const ImGuiKey_S: c_int = 564;
pub const ImGuiKey_T: c_int = 565;
pub const ImGuiKey_U: c_int = 566;
pub const ImGuiKey_V: c_int = 567;
pub const ImGuiKey_W: c_int = 568;
pub const ImGuiKey_X: c_int = 569;
pub const ImGuiKey_Y: c_int = 570;
pub const ImGuiKey_Z: c_int = 571;
pub const ImGuiKey_F1: c_int = 572;
pub const ImGuiKey_F2: c_int = 573;
pub const ImGuiKey_F3: c_int = 574;
pub const ImGuiKey_F4: c_int = 575;
pub const ImGuiKey_F5: c_int = 576;
pub const ImGuiKey_F6: c_int = 577;
pub const ImGuiKey_F7: c_int = 578;
pub const ImGuiKey_F8: c_int = 579;
pub const ImGuiKey_F9: c_int = 580;
pub const ImGuiKey_F10: c_int = 581;
pub const ImGuiKey_F11: c_int = 582;
pub const ImGuiKey_F12: c_int = 583;
pub const ImGuiKey_F13: c_int = 584;
pub const ImGuiKey_F14: c_int = 585;
pub const ImGuiKey_F15: c_int = 586;
pub const ImGuiKey_F16: c_int = 587;
pub const ImGuiKey_F17: c_int = 588;
pub const ImGuiKey_F18: c_int = 589;
pub const ImGuiKey_F19: c_int = 590;
pub const ImGuiKey_F20: c_int = 591;
pub const ImGuiKey_F21: c_int = 592;
pub const ImGuiKey_F22: c_int = 593;
pub const ImGuiKey_F23: c_int = 594;
pub const ImGuiKey_F24: c_int = 595;
pub const ImGuiKey_Apostrophe: c_int = 596;
pub const ImGuiKey_Comma: c_int = 597;
pub const ImGuiKey_Minus: c_int = 598;
pub const ImGuiKey_Period: c_int = 599;
pub const ImGuiKey_Slash: c_int = 600;
pub const ImGuiKey_Semicolon: c_int = 601;
pub const ImGuiKey_Equal: c_int = 602;
pub const ImGuiKey_LeftBracket: c_int = 603;
pub const ImGuiKey_Backslash: c_int = 604;
pub const ImGuiKey_RightBracket: c_int = 605;
pub const ImGuiKey_GraveAccent: c_int = 606;
pub const ImGuiKey_CapsLock: c_int = 607;
pub const ImGuiKey_ScrollLock: c_int = 608;
pub const ImGuiKey_NumLock: c_int = 609;
pub const ImGuiKey_PrintScreen: c_int = 610;
pub const ImGuiKey_Pause: c_int = 611;
pub const ImGuiKey_Keypad0: c_int = 612;
pub const ImGuiKey_Keypad1: c_int = 613;
pub const ImGuiKey_Keypad2: c_int = 614;
pub const ImGuiKey_Keypad3: c_int = 615;
pub const ImGuiKey_Keypad4: c_int = 616;
pub const ImGuiKey_Keypad5: c_int = 617;
pub const ImGuiKey_Keypad6: c_int = 618;
pub const ImGuiKey_Keypad7: c_int = 619;
pub const ImGuiKey_Keypad8: c_int = 620;
pub const ImGuiKey_Keypad9: c_int = 621;
pub const ImGuiKey_KeypadDecimal: c_int = 622;
pub const ImGuiKey_KeypadDivide: c_int = 623;
pub const ImGuiKey_KeypadMultiply: c_int = 624;
pub const ImGuiKey_KeypadSubtract: c_int = 625;
pub const ImGuiKey_KeypadAdd: c_int = 626;
pub const ImGuiKey_KeypadEnter: c_int = 627;
pub const ImGuiKey_KeypadEqual: c_int = 628;
pub const ImGuiKey_AppBack: c_int = 629;
pub const ImGuiKey_AppForward: c_int = 630;
pub const ImGuiKey_Oem102: c_int = 631;
pub const ImGuiKey_GamepadStart: c_int = 632;
pub const ImGuiKey_GamepadBack: c_int = 633;
pub const ImGuiKey_GamepadFaceLeft: c_int = 634;
pub const ImGuiKey_GamepadFaceRight: c_int = 635;
pub const ImGuiKey_GamepadFaceUp: c_int = 636;
pub const ImGuiKey_GamepadFaceDown: c_int = 637;
pub const ImGuiKey_GamepadDpadLeft: c_int = 638;
pub const ImGuiKey_GamepadDpadRight: c_int = 639;
pub const ImGuiKey_GamepadDpadUp: c_int = 640;
pub const ImGuiKey_GamepadDpadDown: c_int = 641;
pub const ImGuiKey_GamepadL1: c_int = 642;
pub const ImGuiKey_GamepadR1: c_int = 643;
pub const ImGuiKey_GamepadL2: c_int = 644;
pub const ImGuiKey_GamepadR2: c_int = 645;
pub const ImGuiKey_GamepadL3: c_int = 646;
pub const ImGuiKey_GamepadR3: c_int = 647;
pub const ImGuiKey_GamepadLStickLeft: c_int = 648;
pub const ImGuiKey_GamepadLStickRight: c_int = 649;
pub const ImGuiKey_GamepadLStickUp: c_int = 650;
pub const ImGuiKey_GamepadLStickDown: c_int = 651;
pub const ImGuiKey_GamepadRStickLeft: c_int = 652;
pub const ImGuiKey_GamepadRStickRight: c_int = 653;
pub const ImGuiKey_GamepadRStickUp: c_int = 654;
pub const ImGuiKey_GamepadRStickDown: c_int = 655;
pub const ImGuiKey_MouseLeft: c_int = 656;
pub const ImGuiKey_MouseRight: c_int = 657;
pub const ImGuiKey_MouseMiddle: c_int = 658;
pub const ImGuiKey_MouseX1: c_int = 659;
pub const ImGuiKey_MouseX2: c_int = 660;
pub const ImGuiKey_MouseWheelX: c_int = 661;
pub const ImGuiKey_MouseWheelY: c_int = 662;
pub const ImGuiKey_ReservedForModCtrl: c_int = 663;
pub const ImGuiKey_ReservedForModShift: c_int = 664;
pub const ImGuiKey_ReservedForModAlt: c_int = 665;
pub const ImGuiKey_ReservedForModSuper: c_int = 666;
pub const ImGuiKey_NamedKey_END: c_int = 667;
pub const ImGuiMod_None: c_int = 0;
pub const ImGuiMod_Ctrl: c_int = 4096;
pub const ImGuiMod_Shift: c_int = 8192;
pub const ImGuiMod_Alt: c_int = 16384;
pub const ImGuiMod_Super: c_int = 32768;
pub const ImGuiMod_Mask_: c_int = 61440;
pub const ImGuiKey_NamedKey_COUNT: c_int = 155;
pub const ImGuiKey_COUNT: c_int = 667;
pub const ImGuiMod_Shortcut: c_int = 4096;
pub const ImGuiKey_ModCtrl: c_int = 4096;
pub const ImGuiKey_ModShift: c_int = 8192;
pub const ImGuiKey_ModAlt: c_int = 16384;
pub const ImGuiKey_ModSuper: c_int = 32768;
const enum_unnamed_4 = c_uint;
pub const ImGuiInputFlags_None: c_int = 0;
pub const ImGuiInputFlags_Repeat: c_int = 1;
pub const ImGuiInputFlags_RouteActive: c_int = 1024;
pub const ImGuiInputFlags_RouteFocused: c_int = 2048;
pub const ImGuiInputFlags_RouteGlobal: c_int = 4096;
pub const ImGuiInputFlags_RouteAlways: c_int = 8192;
pub const ImGuiInputFlags_RouteOverFocused: c_int = 16384;
pub const ImGuiInputFlags_RouteOverActive: c_int = 32768;
pub const ImGuiInputFlags_RouteUnlessBgFocused: c_int = 65536;
pub const ImGuiInputFlags_RouteFromRootWindow: c_int = 131072;
pub const ImGuiInputFlags_Tooltip: c_int = 262144;
pub const ImGuiInputFlags_ = c_uint;
pub const ImGuiConfigFlags_None: c_int = 0;
pub const ImGuiConfigFlags_NavEnableKeyboard: c_int = 1;
pub const ImGuiConfigFlags_NavEnableGamepad: c_int = 2;
pub const ImGuiConfigFlags_NoMouse: c_int = 16;
pub const ImGuiConfigFlags_NoMouseCursorChange: c_int = 32;
pub const ImGuiConfigFlags_NoKeyboard: c_int = 64;
pub const ImGuiConfigFlags_DockingEnable: c_int = 128;
pub const ImGuiConfigFlags_ViewportsEnable: c_int = 1024;
pub const ImGuiConfigFlags_DpiEnableScaleViewports: c_int = 16384;
pub const ImGuiConfigFlags_DpiEnableScaleFonts: c_int = 32768;
pub const ImGuiConfigFlags_IsSRGB: c_int = 1048576;
pub const ImGuiConfigFlags_IsTouchScreen: c_int = 2097152;
pub const ImGuiConfigFlags_NavEnableSetMousePos: c_int = 4;
pub const ImGuiConfigFlags_NavNoCaptureKeyboard: c_int = 8;
pub const ImGuiConfigFlags_ = c_uint;
pub const ImGuiBackendFlags_None: c_int = 0;
pub const ImGuiBackendFlags_HasGamepad: c_int = 1;
pub const ImGuiBackendFlags_HasMouseCursors: c_int = 2;
pub const ImGuiBackendFlags_HasSetMousePos: c_int = 4;
pub const ImGuiBackendFlags_RendererHasVtxOffset: c_int = 8;
pub const ImGuiBackendFlags_PlatformHasViewports: c_int = 1024;
pub const ImGuiBackendFlags_HasMouseHoveredViewport: c_int = 2048;
pub const ImGuiBackendFlags_RendererHasViewports: c_int = 4096;
pub const ImGuiBackendFlags_ = c_uint;
pub const ImGuiCol_Text: c_int = 0;
pub const ImGuiCol_TextDisabled: c_int = 1;
pub const ImGuiCol_WindowBg: c_int = 2;
pub const ImGuiCol_ChildBg: c_int = 3;
pub const ImGuiCol_PopupBg: c_int = 4;
pub const ImGuiCol_Border: c_int = 5;
pub const ImGuiCol_BorderShadow: c_int = 6;
pub const ImGuiCol_FrameBg: c_int = 7;
pub const ImGuiCol_FrameBgHovered: c_int = 8;
pub const ImGuiCol_FrameBgActive: c_int = 9;
pub const ImGuiCol_TitleBg: c_int = 10;
pub const ImGuiCol_TitleBgActive: c_int = 11;
pub const ImGuiCol_TitleBgCollapsed: c_int = 12;
pub const ImGuiCol_MenuBarBg: c_int = 13;
pub const ImGuiCol_ScrollbarBg: c_int = 14;
pub const ImGuiCol_ScrollbarGrab: c_int = 15;
pub const ImGuiCol_ScrollbarGrabHovered: c_int = 16;
pub const ImGuiCol_ScrollbarGrabActive: c_int = 17;
pub const ImGuiCol_CheckMark: c_int = 18;
pub const ImGuiCol_SliderGrab: c_int = 19;
pub const ImGuiCol_SliderGrabActive: c_int = 20;
pub const ImGuiCol_Button: c_int = 21;
pub const ImGuiCol_ButtonHovered: c_int = 22;
pub const ImGuiCol_ButtonActive: c_int = 23;
pub const ImGuiCol_Header: c_int = 24;
pub const ImGuiCol_HeaderHovered: c_int = 25;
pub const ImGuiCol_HeaderActive: c_int = 26;
pub const ImGuiCol_Separator: c_int = 27;
pub const ImGuiCol_SeparatorHovered: c_int = 28;
pub const ImGuiCol_SeparatorActive: c_int = 29;
pub const ImGuiCol_ResizeGrip: c_int = 30;
pub const ImGuiCol_ResizeGripHovered: c_int = 31;
pub const ImGuiCol_ResizeGripActive: c_int = 32;
pub const ImGuiCol_InputTextCursor: c_int = 33;
pub const ImGuiCol_TabHovered: c_int = 34;
pub const ImGuiCol_Tab: c_int = 35;
pub const ImGuiCol_TabSelected: c_int = 36;
pub const ImGuiCol_TabSelectedOverline: c_int = 37;
pub const ImGuiCol_TabDimmed: c_int = 38;
pub const ImGuiCol_TabDimmedSelected: c_int = 39;
pub const ImGuiCol_TabDimmedSelectedOverline: c_int = 40;
pub const ImGuiCol_DockingPreview: c_int = 41;
pub const ImGuiCol_DockingEmptyBg: c_int = 42;
pub const ImGuiCol_PlotLines: c_int = 43;
pub const ImGuiCol_PlotLinesHovered: c_int = 44;
pub const ImGuiCol_PlotHistogram: c_int = 45;
pub const ImGuiCol_PlotHistogramHovered: c_int = 46;
pub const ImGuiCol_TableHeaderBg: c_int = 47;
pub const ImGuiCol_TableBorderStrong: c_int = 48;
pub const ImGuiCol_TableBorderLight: c_int = 49;
pub const ImGuiCol_TableRowBg: c_int = 50;
pub const ImGuiCol_TableRowBgAlt: c_int = 51;
pub const ImGuiCol_TextLink: c_int = 52;
pub const ImGuiCol_TextSelectedBg: c_int = 53;
pub const ImGuiCol_TreeLines: c_int = 54;
pub const ImGuiCol_DragDropTarget: c_int = 55;
pub const ImGuiCol_NavCursor: c_int = 56;
pub const ImGuiCol_NavWindowingHighlight: c_int = 57;
pub const ImGuiCol_NavWindowingDimBg: c_int = 58;
pub const ImGuiCol_ModalWindowDimBg: c_int = 59;
pub const ImGuiCol_COUNT: c_int = 60;
pub const ImGuiCol_TabActive: c_int = 36;
pub const ImGuiCol_TabUnfocused: c_int = 38;
pub const ImGuiCol_TabUnfocusedActive: c_int = 39;
pub const ImGuiCol_NavHighlight: c_int = 56;
pub const ImGuiCol_ = c_uint;
pub const ImGuiStyleVar_Alpha: c_int = 0;
pub const ImGuiStyleVar_DisabledAlpha: c_int = 1;
pub const ImGuiStyleVar_WindowPadding: c_int = 2;
pub const ImGuiStyleVar_WindowRounding: c_int = 3;
pub const ImGuiStyleVar_WindowBorderSize: c_int = 4;
pub const ImGuiStyleVar_WindowMinSize: c_int = 5;
pub const ImGuiStyleVar_WindowTitleAlign: c_int = 6;
pub const ImGuiStyleVar_ChildRounding: c_int = 7;
pub const ImGuiStyleVar_ChildBorderSize: c_int = 8;
pub const ImGuiStyleVar_PopupRounding: c_int = 9;
pub const ImGuiStyleVar_PopupBorderSize: c_int = 10;
pub const ImGuiStyleVar_FramePadding: c_int = 11;
pub const ImGuiStyleVar_FrameRounding: c_int = 12;
pub const ImGuiStyleVar_FrameBorderSize: c_int = 13;
pub const ImGuiStyleVar_ItemSpacing: c_int = 14;
pub const ImGuiStyleVar_ItemInnerSpacing: c_int = 15;
pub const ImGuiStyleVar_IndentSpacing: c_int = 16;
pub const ImGuiStyleVar_CellPadding: c_int = 17;
pub const ImGuiStyleVar_ScrollbarSize: c_int = 18;
pub const ImGuiStyleVar_ScrollbarRounding: c_int = 19;
pub const ImGuiStyleVar_GrabMinSize: c_int = 20;
pub const ImGuiStyleVar_GrabRounding: c_int = 21;
pub const ImGuiStyleVar_ImageBorderSize: c_int = 22;
pub const ImGuiStyleVar_TabRounding: c_int = 23;
pub const ImGuiStyleVar_TabBorderSize: c_int = 24;
pub const ImGuiStyleVar_TabBarBorderSize: c_int = 25;
pub const ImGuiStyleVar_TabBarOverlineSize: c_int = 26;
pub const ImGuiStyleVar_TableAngledHeadersAngle: c_int = 27;
pub const ImGuiStyleVar_TableAngledHeadersTextAlign: c_int = 28;
pub const ImGuiStyleVar_TreeLinesSize: c_int = 29;
pub const ImGuiStyleVar_TreeLinesRounding: c_int = 30;
pub const ImGuiStyleVar_ButtonTextAlign: c_int = 31;
pub const ImGuiStyleVar_SelectableTextAlign: c_int = 32;
pub const ImGuiStyleVar_SeparatorTextBorderSize: c_int = 33;
pub const ImGuiStyleVar_SeparatorTextAlign: c_int = 34;
pub const ImGuiStyleVar_SeparatorTextPadding: c_int = 35;
pub const ImGuiStyleVar_DockingSeparatorSize: c_int = 36;
pub const ImGuiStyleVar_COUNT: c_int = 37;
pub const ImGuiStyleVar_ = c_uint;
pub const ImGuiButtonFlags_None: c_int = 0;
pub const ImGuiButtonFlags_MouseButtonLeft: c_int = 1;
pub const ImGuiButtonFlags_MouseButtonRight: c_int = 2;
pub const ImGuiButtonFlags_MouseButtonMiddle: c_int = 4;
pub const ImGuiButtonFlags_MouseButtonMask_: c_int = 7;
pub const ImGuiButtonFlags_EnableNav: c_int = 8;
pub const ImGuiButtonFlags_ = c_uint;
pub const ImGuiColorEditFlags_None: c_int = 0;
pub const ImGuiColorEditFlags_NoAlpha: c_int = 2;
pub const ImGuiColorEditFlags_NoPicker: c_int = 4;
pub const ImGuiColorEditFlags_NoOptions: c_int = 8;
pub const ImGuiColorEditFlags_NoSmallPreview: c_int = 16;
pub const ImGuiColorEditFlags_NoInputs: c_int = 32;
pub const ImGuiColorEditFlags_NoTooltip: c_int = 64;
pub const ImGuiColorEditFlags_NoLabel: c_int = 128;
pub const ImGuiColorEditFlags_NoSidePreview: c_int = 256;
pub const ImGuiColorEditFlags_NoDragDrop: c_int = 512;
pub const ImGuiColorEditFlags_NoBorder: c_int = 1024;
pub const ImGuiColorEditFlags_AlphaOpaque: c_int = 2048;
pub const ImGuiColorEditFlags_AlphaNoBg: c_int = 4096;
pub const ImGuiColorEditFlags_AlphaPreviewHalf: c_int = 8192;
pub const ImGuiColorEditFlags_AlphaBar: c_int = 65536;
pub const ImGuiColorEditFlags_HDR: c_int = 524288;
pub const ImGuiColorEditFlags_DisplayRGB: c_int = 1048576;
pub const ImGuiColorEditFlags_DisplayHSV: c_int = 2097152;
pub const ImGuiColorEditFlags_DisplayHex: c_int = 4194304;
pub const ImGuiColorEditFlags_Uint8: c_int = 8388608;
pub const ImGuiColorEditFlags_Float: c_int = 16777216;
pub const ImGuiColorEditFlags_PickerHueBar: c_int = 33554432;
pub const ImGuiColorEditFlags_PickerHueWheel: c_int = 67108864;
pub const ImGuiColorEditFlags_InputRGB: c_int = 134217728;
pub const ImGuiColorEditFlags_InputHSV: c_int = 268435456;
pub const ImGuiColorEditFlags_DefaultOptions_: c_int = 177209344;
pub const ImGuiColorEditFlags_AlphaMask_: c_int = 14338;
pub const ImGuiColorEditFlags_DisplayMask_: c_int = 7340032;
pub const ImGuiColorEditFlags_DataTypeMask_: c_int = 25165824;
pub const ImGuiColorEditFlags_PickerMask_: c_int = 100663296;
pub const ImGuiColorEditFlags_InputMask_: c_int = 402653184;
pub const ImGuiColorEditFlags_AlphaPreview: c_int = 0;
pub const ImGuiColorEditFlags_ = c_uint;
pub const ImGuiSliderFlags_None: c_int = 0;
pub const ImGuiSliderFlags_Logarithmic: c_int = 32;
pub const ImGuiSliderFlags_NoRoundToFormat: c_int = 64;
pub const ImGuiSliderFlags_NoInput: c_int = 128;
pub const ImGuiSliderFlags_WrapAround: c_int = 256;
pub const ImGuiSliderFlags_ClampOnInput: c_int = 512;
pub const ImGuiSliderFlags_ClampZeroRange: c_int = 1024;
pub const ImGuiSliderFlags_NoSpeedTweaks: c_int = 2048;
pub const ImGuiSliderFlags_AlwaysClamp: c_int = 1536;
pub const ImGuiSliderFlags_InvalidMask_: c_int = 1879048207;
pub const ImGuiSliderFlags_ = c_uint;
pub const ImGuiMouseButton_Left: c_int = 0;
pub const ImGuiMouseButton_Right: c_int = 1;
pub const ImGuiMouseButton_Middle: c_int = 2;
pub const ImGuiMouseButton_COUNT: c_int = 5;
pub const ImGuiMouseButton_ = c_uint;
pub const ImGuiMouseCursor_None: c_int = -1;
pub const ImGuiMouseCursor_Arrow: c_int = 0;
pub const ImGuiMouseCursor_TextInput: c_int = 1;
pub const ImGuiMouseCursor_ResizeAll: c_int = 2;
pub const ImGuiMouseCursor_ResizeNS: c_int = 3;
pub const ImGuiMouseCursor_ResizeEW: c_int = 4;
pub const ImGuiMouseCursor_ResizeNESW: c_int = 5;
pub const ImGuiMouseCursor_ResizeNWSE: c_int = 6;
pub const ImGuiMouseCursor_Hand: c_int = 7;
pub const ImGuiMouseCursor_Wait: c_int = 8;
pub const ImGuiMouseCursor_Progress: c_int = 9;
pub const ImGuiMouseCursor_NotAllowed: c_int = 10;
pub const ImGuiMouseCursor_COUNT: c_int = 11;
pub const ImGuiMouseCursor_ = c_int;
pub const ImGuiMouseSource_Mouse: c_int = 0;
pub const ImGuiMouseSource_TouchScreen: c_int = 1;
pub const ImGuiMouseSource_Pen: c_int = 2;
pub const ImGuiMouseSource_COUNT: c_int = 3;
const enum_unnamed_5 = c_uint;
pub const ImGuiCond_None: c_int = 0;
pub const ImGuiCond_Always: c_int = 1;
pub const ImGuiCond_Once: c_int = 2;
pub const ImGuiCond_FirstUseEver: c_int = 4;
pub const ImGuiCond_Appearing: c_int = 8;
pub const ImGuiCond_ = c_uint;
pub const ImGuiTableFlags_None: c_int = 0;
pub const ImGuiTableFlags_Resizable: c_int = 1;
pub const ImGuiTableFlags_Reorderable: c_int = 2;
pub const ImGuiTableFlags_Hideable: c_int = 4;
pub const ImGuiTableFlags_Sortable: c_int = 8;
pub const ImGuiTableFlags_NoSavedSettings: c_int = 16;
pub const ImGuiTableFlags_ContextMenuInBody: c_int = 32;
pub const ImGuiTableFlags_RowBg: c_int = 64;
pub const ImGuiTableFlags_BordersInnerH: c_int = 128;
pub const ImGuiTableFlags_BordersOuterH: c_int = 256;
pub const ImGuiTableFlags_BordersInnerV: c_int = 512;
pub const ImGuiTableFlags_BordersOuterV: c_int = 1024;
pub const ImGuiTableFlags_BordersH: c_int = 384;
pub const ImGuiTableFlags_BordersV: c_int = 1536;
pub const ImGuiTableFlags_BordersInner: c_int = 640;
pub const ImGuiTableFlags_BordersOuter: c_int = 1280;
pub const ImGuiTableFlags_Borders: c_int = 1920;
pub const ImGuiTableFlags_NoBordersInBody: c_int = 2048;
pub const ImGuiTableFlags_NoBordersInBodyUntilResize: c_int = 4096;
pub const ImGuiTableFlags_SizingFixedFit: c_int = 8192;
pub const ImGuiTableFlags_SizingFixedSame: c_int = 16384;
pub const ImGuiTableFlags_SizingStretchProp: c_int = 24576;
pub const ImGuiTableFlags_SizingStretchSame: c_int = 32768;
pub const ImGuiTableFlags_NoHostExtendX: c_int = 65536;
pub const ImGuiTableFlags_NoHostExtendY: c_int = 131072;
pub const ImGuiTableFlags_NoKeepColumnsVisible: c_int = 262144;
pub const ImGuiTableFlags_PreciseWidths: c_int = 524288;
pub const ImGuiTableFlags_NoClip: c_int = 1048576;
pub const ImGuiTableFlags_PadOuterX: c_int = 2097152;
pub const ImGuiTableFlags_NoPadOuterX: c_int = 4194304;
pub const ImGuiTableFlags_NoPadInnerX: c_int = 8388608;
pub const ImGuiTableFlags_ScrollX: c_int = 16777216;
pub const ImGuiTableFlags_ScrollY: c_int = 33554432;
pub const ImGuiTableFlags_SortMulti: c_int = 67108864;
pub const ImGuiTableFlags_SortTristate: c_int = 134217728;
pub const ImGuiTableFlags_HighlightHoveredColumn: c_int = 268435456;
pub const ImGuiTableFlags_SizingMask_: c_int = 57344;
pub const ImGuiTableFlags_ = c_uint;
pub const ImGuiTableColumnFlags_None: c_int = 0;
pub const ImGuiTableColumnFlags_Disabled: c_int = 1;
pub const ImGuiTableColumnFlags_DefaultHide: c_int = 2;
pub const ImGuiTableColumnFlags_DefaultSort: c_int = 4;
pub const ImGuiTableColumnFlags_WidthStretch: c_int = 8;
pub const ImGuiTableColumnFlags_WidthFixed: c_int = 16;
pub const ImGuiTableColumnFlags_NoResize: c_int = 32;
pub const ImGuiTableColumnFlags_NoReorder: c_int = 64;
pub const ImGuiTableColumnFlags_NoHide: c_int = 128;
pub const ImGuiTableColumnFlags_NoClip: c_int = 256;
pub const ImGuiTableColumnFlags_NoSort: c_int = 512;
pub const ImGuiTableColumnFlags_NoSortAscending: c_int = 1024;
pub const ImGuiTableColumnFlags_NoSortDescending: c_int = 2048;
pub const ImGuiTableColumnFlags_NoHeaderLabel: c_int = 4096;
pub const ImGuiTableColumnFlags_NoHeaderWidth: c_int = 8192;
pub const ImGuiTableColumnFlags_PreferSortAscending: c_int = 16384;
pub const ImGuiTableColumnFlags_PreferSortDescending: c_int = 32768;
pub const ImGuiTableColumnFlags_IndentEnable: c_int = 65536;
pub const ImGuiTableColumnFlags_IndentDisable: c_int = 131072;
pub const ImGuiTableColumnFlags_AngledHeader: c_int = 262144;
pub const ImGuiTableColumnFlags_IsEnabled: c_int = 16777216;
pub const ImGuiTableColumnFlags_IsVisible: c_int = 33554432;
pub const ImGuiTableColumnFlags_IsSorted: c_int = 67108864;
pub const ImGuiTableColumnFlags_IsHovered: c_int = 134217728;
pub const ImGuiTableColumnFlags_WidthMask_: c_int = 24;
pub const ImGuiTableColumnFlags_IndentMask_: c_int = 196608;
pub const ImGuiTableColumnFlags_StatusMask_: c_int = 251658240;
pub const ImGuiTableColumnFlags_NoDirectResize_: c_int = 1073741824;
pub const ImGuiTableColumnFlags_ = c_uint;
pub const ImGuiTableRowFlags_None: c_int = 0;
pub const ImGuiTableRowFlags_Headers: c_int = 1;
pub const ImGuiTableRowFlags_ = c_uint;
pub const ImGuiTableBgTarget_None: c_int = 0;
pub const ImGuiTableBgTarget_RowBg0: c_int = 1;
pub const ImGuiTableBgTarget_RowBg1: c_int = 2;
pub const ImGuiTableBgTarget_CellBg: c_int = 3;
pub const ImGuiTableBgTarget_ = c_uint;
pub extern fn ImVector_Construct(vector: ?*anyopaque) void;
pub extern fn ImVector_Destruct(vector: ?*anyopaque) void;
pub extern fn ImGuiStyle_ScaleAllSizes(self: [*c]ImGuiStyle, scale_factor: f32) void;
pub extern fn ImGuiIO_AddKeyEvent(self: [*c]ImGuiIO, key: ImGuiKey, down: bool) void;
pub extern fn ImGuiIO_AddKeyAnalogEvent(self: [*c]ImGuiIO, key: ImGuiKey, down: bool, v: f32) void;
pub extern fn ImGuiIO_AddMousePosEvent(self: [*c]ImGuiIO, x: f32, y: f32) void;
pub extern fn ImGuiIO_AddMouseButtonEvent(self: [*c]ImGuiIO, button: c_int, down: bool) void;
pub extern fn ImGuiIO_AddMouseWheelEvent(self: [*c]ImGuiIO, wheel_x: f32, wheel_y: f32) void;
pub extern fn ImGuiIO_AddMouseSourceEvent(self: [*c]ImGuiIO, source: ImGuiMouseSource) void;
pub extern fn ImGuiIO_AddMouseViewportEvent(self: [*c]ImGuiIO, id: ImGuiID) void;
pub extern fn ImGuiIO_AddFocusEvent(self: [*c]ImGuiIO, focused: bool) void;
pub extern fn ImGuiIO_AddInputCharacter(self: [*c]ImGuiIO, c: c_uint) void;
pub extern fn ImGuiIO_AddInputCharacterUTF16(self: [*c]ImGuiIO, c: ImWchar16) void;
pub extern fn ImGuiIO_AddInputCharactersUTF8(self: [*c]ImGuiIO, str: [*c]const u8) void;
pub extern fn ImGuiIO_SetKeyEventNativeData(self: [*c]ImGuiIO, key: ImGuiKey, native_keycode: c_int, native_scancode: c_int) void;
pub extern fn ImGuiIO_SetKeyEventNativeDataEx(self: [*c]ImGuiIO, key: ImGuiKey, native_keycode: c_int, native_scancode: c_int, native_legacy_index: c_int) void;
pub extern fn ImGuiIO_SetAppAcceptingEvents(self: [*c]ImGuiIO, accepting_events: bool) void;
pub extern fn ImGuiIO_ClearEventsQueue(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputKeys(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputMouse(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputCharacters(self: [*c]ImGuiIO) void;
pub extern fn ImGuiInputTextCallbackData_DeleteChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, bytes_count: c_int) void;
pub extern fn ImGuiInputTextCallbackData_InsertChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImGuiInputTextCallbackData_SelectAll(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_ClearSelection(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_HasSelection(self: [*c]const ImGuiInputTextCallbackData) bool;
pub extern fn ImGuiPayload_Clear(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_IsDataType(self: [*c]const ImGuiPayload, @"type": [*c]const u8) bool;
pub extern fn ImGuiPayload_IsPreview(self: [*c]const ImGuiPayload) bool;
pub extern fn ImGuiPayload_IsDelivery(self: [*c]const ImGuiPayload) bool;
pub extern fn ImGuiTextFilter_ImGuiTextRange_empty(self: [*c]const ImGuiTextFilter_ImGuiTextRange) bool;
pub extern fn ImGuiTextFilter_ImGuiTextRange_split(self: [*c]const ImGuiTextFilter_ImGuiTextRange, separator: u8, out: [*c]ImVector_ImGuiTextFilter_ImGuiTextRange) void;
pub extern fn ImGuiTextFilter_Draw(self: [*c]ImGuiTextFilter, label: [*c]const u8, width: f32) bool;
pub extern fn ImGuiTextFilter_PassFilter(self: [*c]const ImGuiTextFilter, text: [*c]const u8, text_end: [*c]const u8) bool;
pub extern fn ImGuiTextFilter_Build(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Clear(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_IsActive(self: [*c]const ImGuiTextFilter) bool;
pub extern fn ImGuiTextBuffer_begin(self: [*c]const ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_end(self: [*c]const ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_size(self: [*c]const ImGuiTextBuffer) c_int;
pub extern fn ImGuiTextBuffer_empty(self: [*c]const ImGuiTextBuffer) bool;
pub extern fn ImGuiTextBuffer_clear(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_resize(self: [*c]ImGuiTextBuffer, size: c_int) void;
pub extern fn ImGuiTextBuffer_reserve(self: [*c]ImGuiTextBuffer, capacity: c_int) void;
pub extern fn ImGuiTextBuffer_c_str(self: [*c]const ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_append(self: [*c]ImGuiTextBuffer, str: [*c]const u8, str_end: [*c]const u8) void;
pub extern fn ImGuiTextBuffer_appendf(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, ...) void;
pub extern fn ImGuiTextBuffer_appendfv(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGuiStorage_Clear(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_GetInt(self: [*c]const ImGuiStorage, key: ImGuiID, default_val: c_int) c_int;
pub extern fn ImGuiStorage_SetInt(self: [*c]ImGuiStorage, key: ImGuiID, val: c_int) void;
pub extern fn ImGuiStorage_GetBool(self: [*c]const ImGuiStorage, key: ImGuiID, default_val: bool) bool;
pub extern fn ImGuiStorage_SetBool(self: [*c]ImGuiStorage, key: ImGuiID, val: bool) void;
pub extern fn ImGuiStorage_GetFloat(self: [*c]const ImGuiStorage, key: ImGuiID, default_val: f32) f32;
pub extern fn ImGuiStorage_SetFloat(self: [*c]ImGuiStorage, key: ImGuiID, val: f32) void;
pub extern fn ImGuiStorage_GetVoidPtr(self: [*c]const ImGuiStorage, key: ImGuiID) ?*anyopaque;
pub extern fn ImGuiStorage_SetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID, val: ?*anyopaque) void;
pub extern fn ImGuiStorage_GetIntRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) [*c]c_int;
pub extern fn ImGuiStorage_GetBoolRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) [*c]bool;
pub extern fn ImGuiStorage_GetFloatRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) [*c]f32;
pub extern fn ImGuiStorage_GetVoidPtrRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: ?*anyopaque) [*c]?*anyopaque;
pub extern fn ImGuiStorage_BuildSortByKey(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_SetAllInt(self: [*c]ImGuiStorage, val: c_int) void;
pub extern fn ImGuiListClipper_Begin(self: [*c]ImGuiListClipper, items_count: c_int, items_height: f32) void;
pub extern fn ImGuiListClipper_End(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Step(self: [*c]ImGuiListClipper) bool;
pub extern fn ImGuiListClipper_IncludeItemByIndex(self: [*c]ImGuiListClipper, item_index: c_int) void;
pub extern fn ImGuiListClipper_IncludeItemsByIndex(self: [*c]ImGuiListClipper, item_begin: c_int, item_end: c_int) void;
pub extern fn ImGuiListClipper_SeekCursorForItem(self: [*c]ImGuiListClipper, item_index: c_int) void;
pub extern fn ImGuiListClipper_IncludeRangeByIndices(self: [*c]ImGuiListClipper, item_begin: c_int, item_end: c_int) void;
pub extern fn ImGuiListClipper_ForceDisplayRangeByIndices(self: [*c]ImGuiListClipper, item_begin: c_int, item_end: c_int) void;
pub extern fn ImColor_SetHSV(self: [*c]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImColor_HSV(h: f32, s: f32, v: f32, a: f32) ImColor;
pub const ImGuiMultiSelectFlags_None: c_int = 0;
pub const ImGuiMultiSelectFlags_SingleSelect: c_int = 1;
pub const ImGuiMultiSelectFlags_NoSelectAll: c_int = 2;
pub const ImGuiMultiSelectFlags_NoRangeSelect: c_int = 4;
pub const ImGuiMultiSelectFlags_NoAutoSelect: c_int = 8;
pub const ImGuiMultiSelectFlags_NoAutoClear: c_int = 16;
pub const ImGuiMultiSelectFlags_NoAutoClearOnReselect: c_int = 32;
pub const ImGuiMultiSelectFlags_BoxSelect1d: c_int = 64;
pub const ImGuiMultiSelectFlags_BoxSelect2d: c_int = 128;
pub const ImGuiMultiSelectFlags_BoxSelectNoScroll: c_int = 256;
pub const ImGuiMultiSelectFlags_ClearOnEscape: c_int = 512;
pub const ImGuiMultiSelectFlags_ClearOnClickVoid: c_int = 1024;
pub const ImGuiMultiSelectFlags_ScopeWindow: c_int = 2048;
pub const ImGuiMultiSelectFlags_ScopeRect: c_int = 4096;
pub const ImGuiMultiSelectFlags_SelectOnClick: c_int = 8192;
pub const ImGuiMultiSelectFlags_SelectOnClickRelease: c_int = 16384;
pub const ImGuiMultiSelectFlags_NavWrapX: c_int = 65536;
pub const ImGuiMultiSelectFlags_ = c_uint;
pub const ImGuiSelectionRequestType_None: c_int = 0;
pub const ImGuiSelectionRequestType_SetAll: c_int = 1;
pub const ImGuiSelectionRequestType_SetRange: c_int = 2;
pub const ImGuiSelectionRequestType = c_uint;
pub extern fn ImGuiSelectionBasicStorage_ApplyRequests(self: [*c]ImGuiSelectionBasicStorage, ms_io: [*c]ImGuiMultiSelectIO) void;
pub extern fn ImGuiSelectionBasicStorage_Contains(self: [*c]const ImGuiSelectionBasicStorage, id: ImGuiID) bool;
pub extern fn ImGuiSelectionBasicStorage_Clear(self: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_Swap(self: [*c]ImGuiSelectionBasicStorage, r: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_SetItemSelected(self: [*c]ImGuiSelectionBasicStorage, id: ImGuiID, selected: bool) void;
pub extern fn ImGuiSelectionBasicStorage_GetNextSelectedItem(self: [*c]ImGuiSelectionBasicStorage, opaque_it: [*c]?*anyopaque, out_id: [*c]ImGuiID) bool;
pub extern fn ImGuiSelectionBasicStorage_GetStorageIdFromIndex(self: [*c]ImGuiSelectionBasicStorage, idx: c_int) ImGuiID;
pub extern fn ImGuiSelectionExternalStorage_ApplyRequests(self: [*c]ImGuiSelectionExternalStorage, ms_io: [*c]ImGuiMultiSelectIO) void;
pub extern fn ImDrawCmd_GetTexID(self: [*c]const ImDrawCmd) ImTextureID;
pub extern fn ImDrawListSplitter_Clear(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_ClearFreeMemory(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Split(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawListSplitter_Merge(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawListSplitter_SetCurrentChannel(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, channel_idx: c_int) void;
pub const ImDrawFlags_None: c_int = 0;
pub const ImDrawFlags_Closed: c_int = 1;
pub const ImDrawFlags_RoundCornersTopLeft: c_int = 16;
pub const ImDrawFlags_RoundCornersTopRight: c_int = 32;
pub const ImDrawFlags_RoundCornersBottomLeft: c_int = 64;
pub const ImDrawFlags_RoundCornersBottomRight: c_int = 128;
pub const ImDrawFlags_RoundCornersNone: c_int = 256;
pub const ImDrawFlags_RoundCornersTop: c_int = 48;
pub const ImDrawFlags_RoundCornersBottom: c_int = 192;
pub const ImDrawFlags_RoundCornersLeft: c_int = 80;
pub const ImDrawFlags_RoundCornersRight: c_int = 160;
pub const ImDrawFlags_RoundCornersAll: c_int = 240;
pub const ImDrawFlags_RoundCornersDefault_: c_int = 240;
pub const ImDrawFlags_RoundCornersMask_: c_int = 496;
pub const ImDrawFlags_ = c_uint;
pub const ImDrawListFlags_None: c_int = 0;
pub const ImDrawListFlags_AntiAliasedLines: c_int = 1;
pub const ImDrawListFlags_AntiAliasedLinesUseTex: c_int = 2;
pub const ImDrawListFlags_AntiAliasedFill: c_int = 4;
pub const ImDrawListFlags_AllowVtxOffset: c_int = 8;
pub const ImDrawListFlags_ = c_uint;
pub extern fn ImDrawList_PushClipRect(self: [*c]ImDrawList, clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn ImDrawList_PushClipRectFullScreen(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PopClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushTextureID(self: [*c]ImDrawList, texture_id: ImTextureID) void;
pub extern fn ImDrawList_PopTextureID(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMin(self: [*c]const ImDrawList) ImVec2;
pub extern fn ImDrawList_GetClipRectMax(self: [*c]const ImDrawList) ImVec2;
pub extern fn ImDrawList_AddLine(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddLineEx(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddRect(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddRectEx(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_AddRectFilled(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddRectFilledEx(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_AddRectFilledMultiColor(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32) void;
pub extern fn ImDrawList_AddQuad(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddQuadEx(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddQuadFilled(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddTriangle(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddTriangleEx(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddTriangleFilled(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddCircle(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32) void;
pub extern fn ImDrawList_AddCircleEx(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddCircleFilled(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddNgon(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddNgonEx(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddNgonFilled(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddEllipse(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddEllipseEx(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32, rot: f32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddEllipseFilled(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddEllipseFilledEx(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32, rot: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddText(self: [*c]ImDrawList, pos: ImVec2, col: ImU32, text_begin: [*c]const u8) void;
pub extern fn ImDrawList_AddTextEx(self: [*c]ImDrawList, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImDrawList_AddTextImFontPtr(self: [*c]ImDrawList, font: [*c]ImFont, font_size: f32, pos: ImVec2, col: ImU32, text_begin: [*c]const u8) void;
pub extern fn ImDrawList_AddTextImFontPtrEx(self: [*c]ImDrawList, font: [*c]ImFont, font_size: f32, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip_rect: [*c]const ImVec4) void;
pub extern fn ImDrawList_AddBezierCubic(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddBezierQuadratic(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddPolyline(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_AddConvexPolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddConcavePolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddImage(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2) void;
pub extern fn ImDrawList_AddImageEx(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageQuad(self: [*c]ImDrawList, user_texture_id: ImTextureID, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2) void;
pub extern fn ImDrawList_AddImageQuadEx(self: [*c]ImDrawList, user_texture_id: ImTextureID, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, uv1: ImVec2, uv2: ImVec2, uv3: ImVec2, uv4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageRounded(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_PathClear(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PathLineTo(self: [*c]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathLineToMergeDuplicate(self: [*c]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathFillConvex(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathFillConcave(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathStroke(self: [*c]ImDrawList, col: ImU32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_PathArcTo(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathArcToFast(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min_of_12: c_int, a_max_of_12: c_int) void;
pub extern fn ImDrawList_PathEllipticalArcTo(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, rot: f32, a_min: f32, a_max: f32) void;
pub extern fn ImDrawList_PathEllipticalArcToEx(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, rot: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathBezierCubicCurveTo(self: [*c]ImDrawList, p2: ImVec2, p3: ImVec2, p4: ImVec2, num_segments: c_int) void;
pub extern fn ImDrawList_PathBezierQuadraticCurveTo(self: [*c]ImDrawList, p2: ImVec2, p3: ImVec2, num_segments: c_int) void;
pub extern fn ImDrawList_PathRect(self: [*c]ImDrawList, rect_min: ImVec2, rect_max: ImVec2, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_AddCallback(self: [*c]ImDrawList, callback: ImDrawCallback, userdata: ?*anyopaque) void;
pub extern fn ImDrawList_AddCallbackEx(self: [*c]ImDrawList, callback: ImDrawCallback, userdata: ?*anyopaque, userdata_size: usize) void;
pub extern fn ImDrawList_AddDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_CloneOutput(self: [*c]const ImDrawList) [*c]ImDrawList;
pub extern fn ImDrawList_ChannelsSplit(self: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawList_ChannelsMerge(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_ChannelsSetCurrent(self: [*c]ImDrawList, n: c_int) void;
pub extern fn ImDrawList_PrimReserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimUnreserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimRect(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimRectUV(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimQuadUV(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, uv_a: ImVec2, uv_b: ImVec2, uv_c: ImVec2, uv_d: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteVtx(self: [*c]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteIdx(self: [*c]ImDrawList, idx: ImDrawIdx) void;
pub extern fn ImDrawList_PrimVtx(self: [*c]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList__ResetForNewFrame(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__ClearFreeMemory(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__PopUnusedDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__TryMergeDrawCmds(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedTextureID(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedVtxOffset(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__SetTextureID(self: [*c]ImDrawList, texture_id: ImTextureID) void;
pub extern fn ImDrawList__CalcCircleAutoSegmentCount(self: [*c]const ImDrawList, radius: f32) c_int;
pub extern fn ImDrawList__PathArcToFastEx(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min_sample: c_int, a_max_sample: c_int, a_step: c_int) void;
pub extern fn ImDrawList__PathArcToN(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawData_Clear(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_AddDrawList(self: [*c]ImDrawData, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawData_DeIndexAllBuffers(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_ScaleClipRects(self: [*c]ImDrawData, fb_scale: ImVec2) void;
pub extern fn ImFontGlyphRangesBuilder_Clear(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_GetBit(self: [*c]const ImFontGlyphRangesBuilder, n: usize) bool;
pub extern fn ImFontGlyphRangesBuilder_SetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) void;
pub extern fn ImFontGlyphRangesBuilder_AddChar(self: [*c]ImFontGlyphRangesBuilder, c: ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_AddText(self: [*c]ImFontGlyphRangesBuilder, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImFontGlyphRangesBuilder_AddRanges(self: [*c]ImFontGlyphRangesBuilder, ranges: [*c]const ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_BuildRanges(self: [*c]ImFontGlyphRangesBuilder, out_ranges: [*c]ImVector_ImWchar) void;
pub extern fn ImFontAtlasCustomRect_IsPacked(self: ?*const ImFontAtlasCustomRect) bool;
pub const ImFontAtlasFlags_None: c_int = 0;
pub const ImFontAtlasFlags_NoPowerOfTwoHeight: c_int = 1;
pub const ImFontAtlasFlags_NoMouseCursors: c_int = 2;
pub const ImFontAtlasFlags_NoBakedLines: c_int = 4;
pub const ImFontAtlasFlags_ = c_uint;
pub extern fn ImFontAtlas_AddFont(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontDefault(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromFileTTF(self: [*c]ImFontAtlas, filename: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryTTF(self: [*c]ImFontAtlas, font_data: ?*anyopaque, font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedTTF(self: [*c]ImFontAtlas, compressed_font_data: ?*const anyopaque, compressed_font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self: [*c]ImFontAtlas, compressed_font_data_base85: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_ClearInputData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearFonts(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearTexData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_Clear(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_Build(self: [*c]ImFontAtlas) bool;
pub extern fn ImFontAtlas_GetTexDataAsAlpha8(self: [*c]ImFontAtlas, out_pixels: [*c][*c]u8, out_width: [*c]c_int, out_height: [*c]c_int, out_bytes_per_pixel: [*c]c_int) void;
pub extern fn ImFontAtlas_GetTexDataAsRGBA32(self: [*c]ImFontAtlas, out_pixels: [*c][*c]u8, out_width: [*c]c_int, out_height: [*c]c_int, out_bytes_per_pixel: [*c]c_int) void;
pub extern fn ImFontAtlas_IsBuilt(self: [*c]const ImFontAtlas) bool;
pub extern fn ImFontAtlas_SetTexID(self: [*c]ImFontAtlas, id: ImTextureID) void;
pub extern fn ImFontAtlas_GetGlyphRangesDefault(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesGreek(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesKorean(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesJapanese(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseFull(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesCyrillic(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesThai(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesVietnamese(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_AddCustomRectRegular(self: [*c]ImFontAtlas, width: c_int, height: c_int) c_int;
pub extern fn ImFontAtlas_AddCustomRectFontGlyph(self: [*c]ImFontAtlas, font: [*c]ImFont, id: ImWchar, width: c_int, height: c_int, advance_x: f32, offset: ImVec2) c_int;
pub extern fn ImFontAtlas_GetCustomRectByIndex(self: [*c]ImFontAtlas, index: c_int) ?*ImFontAtlasCustomRect;
pub extern fn ImFontAtlas_CalcCustomRectUV(self: [*c]const ImFontAtlas, rect: ?*const ImFontAtlasCustomRect, out_uv_min: [*c]ImVec2, out_uv_max: [*c]ImVec2) void;
pub extern fn ImFont_FindGlyph(self: [*c]ImFont, c: ImWchar) ?*ImFontGlyph;
pub extern fn ImFont_FindGlyphNoFallback(self: [*c]ImFont, c: ImWchar) ?*ImFontGlyph;
pub extern fn ImFont_GetCharAdvance(self: [*c]ImFont, c: ImWchar) f32;
pub extern fn ImFont_IsLoaded(self: [*c]const ImFont) bool;
pub extern fn ImFont_GetDebugName(self: [*c]const ImFont) [*c]const u8;
pub extern fn ImFont_CalcTextSizeA(self: [*c]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: [*c]const u8) ImVec2;
pub extern fn ImFont_CalcTextSizeAEx(self: [*c]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: [*c]const u8, text_end: [*c]const u8, remaining: [*c][*c]const u8) ImVec2;
pub extern fn ImFont_CalcWordWrapPositionA(self: [*c]ImFont, scale: f32, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) [*c]const u8;
pub extern fn ImFont_RenderChar(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, c: ImWchar) void;
pub extern fn ImFont_RenderCharEx(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, c: ImWchar, cpu_fine_clip: [*c]const ImVec4) void;
pub extern fn ImFont_RenderText(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, clip_rect: ImVec4, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip: bool) void;
pub extern fn ImFont_BuildLookupTable(self: [*c]ImFont) void;
pub extern fn ImFont_ClearOutputData(self: [*c]ImFont) void;
pub extern fn ImFont_GrowIndex(self: [*c]ImFont, new_size: c_int) void;
pub extern fn ImFont_AddGlyph(self: [*c]ImFont, src_cfg: [*c]const ImFontConfig, c: ImWchar, x0: f32, y0: f32, x1: f32, y1: f32, @"u0": f32, v0: f32, @"u1": f32, v1: f32, advance_x: f32) void;
pub extern fn ImFont_AddRemapChar(self: [*c]ImFont, from_codepoint: ImWchar, to_codepoint: ImWchar, overwrite_dst: bool) void;
pub extern fn ImFont_IsGlyphRangeUnused(self: [*c]ImFont, c_begin: c_uint, c_last: c_uint) bool;
pub const ImGuiViewportFlags_None: c_int = 0;
pub const ImGuiViewportFlags_IsPlatformWindow: c_int = 1;
pub const ImGuiViewportFlags_IsPlatformMonitor: c_int = 2;
pub const ImGuiViewportFlags_OwnedByApp: c_int = 4;
pub const ImGuiViewportFlags_NoDecoration: c_int = 8;
pub const ImGuiViewportFlags_NoTaskBarIcon: c_int = 16;
pub const ImGuiViewportFlags_NoFocusOnAppearing: c_int = 32;
pub const ImGuiViewportFlags_NoFocusOnClick: c_int = 64;
pub const ImGuiViewportFlags_NoInputs: c_int = 128;
pub const ImGuiViewportFlags_NoRendererClear: c_int = 256;
pub const ImGuiViewportFlags_NoAutoMerge: c_int = 512;
pub const ImGuiViewportFlags_TopMost: c_int = 1024;
pub const ImGuiViewportFlags_CanHostOtherWindows: c_int = 2048;
pub const ImGuiViewportFlags_IsMinimized: c_int = 4096;
pub const ImGuiViewportFlags_IsFocused: c_int = 8192;
pub const ImGuiViewportFlags_ = c_uint;
pub extern fn ImGuiViewport_GetCenter(self: [*c]const ImGuiViewport) ImVec2;
pub extern fn ImGuiViewport_GetWorkCenter(self: [*c]const ImGuiViewport) ImVec2;
pub extern fn ImGui_ImageImVec4(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, tint_col: ImVec4, border_col: ImVec4) void;
pub extern fn ImGui_PushButtonRepeat(repeat: bool) void;
pub extern fn ImGui_PopButtonRepeat() void;
pub extern fn ImGui_PushTabStop(tab_stop: bool) void;
pub extern fn ImGui_PopTabStop() void;
pub extern fn ImGui_GetContentRegionMax() ImVec2;
pub extern fn ImGui_GetWindowContentRegionMin() ImVec2;
pub extern fn ImGui_GetWindowContentRegionMax() ImVec2;
pub extern fn ImGui_BeginChildFrame(id: ImGuiID, size: ImVec2) bool;
pub extern fn ImGui_BeginChildFrameEx(id: ImGuiID, size: ImVec2, window_flags: ImGuiWindowFlags) bool;
pub extern fn ImGui_EndChildFrame() void;
pub extern fn ImGui_ShowStackToolWindow(p_open: [*c]bool) void;
pub extern fn ImGui_ComboObsolete(label: [*c]const u8, current_item: [*c]c_int, old_callback: ?*const fn (?*anyopaque, c_int, [*c][*c]const u8) callconv(.c) bool, user_data: ?*anyopaque, items_count: c_int) bool;
pub extern fn ImGui_ComboObsoleteEx(label: [*c]const u8, current_item: [*c]c_int, old_callback: ?*const fn (?*anyopaque, c_int, [*c][*c]const u8) callconv(.c) bool, user_data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn ImGui_ListBoxObsolete(label: [*c]const u8, current_item: [*c]c_int, old_callback: ?*const fn (?*anyopaque, c_int, [*c][*c]const u8) callconv(.c) bool, user_data: ?*anyopaque, items_count: c_int) bool;
pub extern fn ImGui_ListBoxObsoleteEx(label: [*c]const u8, current_item: [*c]c_int, old_callback: ?*const fn (?*anyopaque, c_int, [*c][*c]const u8) callconv(.c) bool, user_data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub extern fn ImGui_SetItemAllowOverlap() void;
pub extern fn ImGui_PushAllowKeyboardFocus(tab_stop: bool) void;
pub extern fn ImGui_PopAllowKeyboardFocus() void;
pub const WGPUFlags = u32;
pub const struct_WGPUAdapterImpl = opaque {};
pub const WGPUAdapter = ?*struct_WGPUAdapterImpl;
pub const struct_WGPUBindGroupImpl = opaque {};
pub const WGPUBindGroup = ?*struct_WGPUBindGroupImpl;
pub const struct_WGPUBindGroupLayoutImpl = opaque {};
pub const WGPUBindGroupLayout = ?*struct_WGPUBindGroupLayoutImpl;
pub const struct_WGPUBufferImpl = opaque {};
pub const WGPUBuffer = ?*struct_WGPUBufferImpl;
pub const struct_WGPUCommandBufferImpl = opaque {};
pub const WGPUCommandBuffer = ?*struct_WGPUCommandBufferImpl;
pub const struct_WGPUCommandEncoderImpl = opaque {};
pub const WGPUCommandEncoder = ?*struct_WGPUCommandEncoderImpl;
pub const struct_WGPUComputePassEncoderImpl = opaque {};
pub const WGPUComputePassEncoder = ?*struct_WGPUComputePassEncoderImpl;
pub const struct_WGPUComputePipelineImpl = opaque {};
pub const WGPUComputePipeline = ?*struct_WGPUComputePipelineImpl;
pub const struct_WGPUInstanceImpl = opaque {};
pub const WGPUInstance = ?*struct_WGPUInstanceImpl;
pub const struct_WGPUPipelineLayoutImpl = opaque {};
pub const WGPUPipelineLayout = ?*struct_WGPUPipelineLayoutImpl;
pub const struct_WGPUQuerySetImpl = opaque {};
pub const WGPUQuerySet = ?*struct_WGPUQuerySetImpl;
pub const struct_WGPUQueueImpl = opaque {};
pub const WGPUQueue = ?*struct_WGPUQueueImpl;
pub const struct_WGPURenderBundleImpl = opaque {};
pub const WGPURenderBundle = ?*struct_WGPURenderBundleImpl;
pub const struct_WGPURenderBundleEncoderImpl = opaque {};
pub const WGPURenderBundleEncoder = ?*struct_WGPURenderBundleEncoderImpl;
pub const struct_WGPURenderPipelineImpl = opaque {};
pub const WGPURenderPipeline = ?*struct_WGPURenderPipelineImpl;
pub const struct_WGPUSamplerImpl = opaque {};
pub const WGPUSampler = ?*struct_WGPUSamplerImpl;
pub const struct_WGPUShaderModuleImpl = opaque {};
pub const WGPUShaderModule = ?*struct_WGPUShaderModuleImpl;
pub const struct_WGPUSurfaceImpl = opaque {};
pub const WGPUSurface = ?*struct_WGPUSurfaceImpl;
pub const struct_WGPUSwapChainImpl = opaque {};
pub const WGPUSwapChain = ?*struct_WGPUSwapChainImpl;
pub const struct_WGPUTextureImpl = opaque {};
pub const WGPUTexture = ?*struct_WGPUTextureImpl;
pub const struct_WGPUTextureViewImpl = opaque {};
pub const WGPUTextureView = ?*struct_WGPUTextureViewImpl;
pub const struct_WGPUChainedStructOut = extern struct {
    next: [*c]struct_WGPUChainedStructOut = @import("std").mem.zeroes([*c]struct_WGPUChainedStructOut),
    sType: WGPUSType = @import("std").mem.zeroes(WGPUSType),
};
pub const WGPUChainedStructOut = struct_WGPUChainedStructOut;
pub const WGPUBackendType_Undefined: c_int = 0;
pub const WGPUBackendType_Null: c_int = 1;
pub const WGPUBackendType_WebGPU: c_int = 2;
pub const WGPUBackendType_D3D11: c_int = 3;
pub const WGPUBackendType_D3D12: c_int = 4;
pub const WGPUBackendType_Metal: c_int = 5;
pub const WGPUBackendType_Vulkan: c_int = 6;
pub const WGPUBackendType_OpenGL: c_int = 7;
pub const WGPUBackendType_OpenGLES: c_int = 8;
pub const WGPUBackendType_Force32: c_int = 2147483647;
pub const enum_WGPUBackendType = c_uint;
pub const WGPUBackendType = enum_WGPUBackendType;
pub const WGPUAdapterType_DiscreteGPU: c_int = 1;
pub const WGPUAdapterType_IntegratedGPU: c_int = 2;
pub const WGPUAdapterType_CPU: c_int = 3;
pub const WGPUAdapterType_Unknown: c_int = 4;
pub const WGPUAdapterType_Force32: c_int = 2147483647;
pub const enum_WGPUAdapterType = c_uint;
pub const WGPUAdapterType = enum_WGPUAdapterType;
pub const struct_WGPUAdapterInfo = extern struct {
    nextInChain: [*c]WGPUChainedStructOut = @import("std").mem.zeroes([*c]WGPUChainedStructOut),
    vendor: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    architecture: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    device: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    description: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    backendType: WGPUBackendType = @import("std").mem.zeroes(WGPUBackendType),
    adapterType: WGPUAdapterType = @import("std").mem.zeroes(WGPUAdapterType),
    vendorID: u32 = @import("std").mem.zeroes(u32),
    deviceID: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUAdapterProperties = extern struct {
    nextInChain: [*c]WGPUChainedStructOut = @import("std").mem.zeroes([*c]WGPUChainedStructOut),
    vendorID: u32 = @import("std").mem.zeroes(u32),
    vendorName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    architecture: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    deviceID: u32 = @import("std").mem.zeroes(u32),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    driverDescription: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    adapterType: WGPUAdapterType = @import("std").mem.zeroes(WGPUAdapterType),
    backendType: WGPUBackendType = @import("std").mem.zeroes(WGPUBackendType),
    compatibilityMode: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const struct_WGPUBindGroupEntry = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    binding: u32 = @import("std").mem.zeroes(u32),
    buffer: WGPUBuffer = @import("std").mem.zeroes(WGPUBuffer),
    offset: u64 = @import("std").mem.zeroes(u64),
    size: u64 = @import("std").mem.zeroes(u64),
    sampler: WGPUSampler = @import("std").mem.zeroes(WGPUSampler),
    textureView: WGPUTextureView = @import("std").mem.zeroes(WGPUTextureView),
};
pub const WGPUBlendOperation_Undefined: c_int = 0;
pub const WGPUBlendOperation_Add: c_int = 1;
pub const WGPUBlendOperation_Subtract: c_int = 2;
pub const WGPUBlendOperation_ReverseSubtract: c_int = 3;
pub const WGPUBlendOperation_Min: c_int = 4;
pub const WGPUBlendOperation_Max: c_int = 5;
pub const WGPUBlendOperation_Force32: c_int = 2147483647;
pub const enum_WGPUBlendOperation = c_uint;
pub const WGPUBlendOperation = enum_WGPUBlendOperation;
pub const WGPUBlendFactor_Undefined: c_int = 0;
pub const WGPUBlendFactor_Zero: c_int = 1;
pub const WGPUBlendFactor_One: c_int = 2;
pub const WGPUBlendFactor_Src: c_int = 3;
pub const WGPUBlendFactor_OneMinusSrc: c_int = 4;
pub const WGPUBlendFactor_SrcAlpha: c_int = 5;
pub const WGPUBlendFactor_OneMinusSrcAlpha: c_int = 6;
pub const WGPUBlendFactor_Dst: c_int = 7;
pub const WGPUBlendFactor_OneMinusDst: c_int = 8;
pub const WGPUBlendFactor_DstAlpha: c_int = 9;
pub const WGPUBlendFactor_OneMinusDstAlpha: c_int = 10;
pub const WGPUBlendFactor_SrcAlphaSaturated: c_int = 11;
pub const WGPUBlendFactor_Constant: c_int = 12;
pub const WGPUBlendFactor_OneMinusConstant: c_int = 13;
pub const WGPUBlendFactor_Force32: c_int = 2147483647;
pub const enum_WGPUBlendFactor = c_uint;
pub const WGPUBlendFactor = enum_WGPUBlendFactor;
pub const struct_WGPUBlendComponent = extern struct {
    operation: WGPUBlendOperation = @import("std").mem.zeroes(WGPUBlendOperation),
    srcFactor: WGPUBlendFactor = @import("std").mem.zeroes(WGPUBlendFactor),
    dstFactor: WGPUBlendFactor = @import("std").mem.zeroes(WGPUBlendFactor),
};
pub const WGPUBufferBindingType_Undefined: c_int = 0;
pub const WGPUBufferBindingType_Uniform: c_int = 1;
pub const WGPUBufferBindingType_Storage: c_int = 2;
pub const WGPUBufferBindingType_ReadOnlyStorage: c_int = 3;
pub const WGPUBufferBindingType_Force32: c_int = 2147483647;
pub const enum_WGPUBufferBindingType = c_uint;
pub const WGPUBufferBindingType = enum_WGPUBufferBindingType;
pub const struct_WGPUBufferBindingLayout = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    type: WGPUBufferBindingType = @import("std").mem.zeroes(WGPUBufferBindingType),
    hasDynamicOffset: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    minBindingSize: u64 = @import("std").mem.zeroes(u64),
};
pub const WGPUBufferUsageFlags = WGPUFlags;
pub const struct_WGPUBufferDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    usage: WGPUBufferUsageFlags = @import("std").mem.zeroes(WGPUBufferUsageFlags),
    size: u64 = @import("std").mem.zeroes(u64),
    mappedAtCreation: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPUCallbackMode_WaitAnyOnly: c_int = 0;
pub const WGPUCallbackMode_AllowProcessEvents: c_int = 1;
pub const WGPUCallbackMode_AllowSpontaneous: c_int = 2;
pub const WGPUCallbackMode_Force32: c_int = 2147483647;
pub const enum_WGPUCallbackMode = c_uint;
pub const WGPUCallbackMode = enum_WGPUCallbackMode;
pub const WGPUBufferMapAsyncStatus_Success: c_int = 0;
pub const WGPUBufferMapAsyncStatus_ValidationError: c_int = 1;
pub const WGPUBufferMapAsyncStatus_Unknown: c_int = 2;
pub const WGPUBufferMapAsyncStatus_DeviceLost: c_int = 3;
pub const WGPUBufferMapAsyncStatus_DestroyedBeforeCallback: c_int = 4;
pub const WGPUBufferMapAsyncStatus_UnmappedBeforeCallback: c_int = 5;
pub const WGPUBufferMapAsyncStatus_MappingAlreadyPending: c_int = 6;
pub const WGPUBufferMapAsyncStatus_OffsetOutOfRange: c_int = 7;
pub const WGPUBufferMapAsyncStatus_SizeOutOfRange: c_int = 8;
pub const WGPUBufferMapAsyncStatus_Force32: c_int = 2147483647;
pub const enum_WGPUBufferMapAsyncStatus = c_uint;
pub const WGPUBufferMapAsyncStatus = enum_WGPUBufferMapAsyncStatus;
pub const WGPUBufferMapCallback = ?*const fn (WGPUBufferMapAsyncStatus, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUBufferMapCallbackInfo = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUBufferMapCallback = @import("std").mem.zeroes(WGPUBufferMapCallback),
    userdata: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct_WGPUColor = extern struct {
    r: f64 = @import("std").mem.zeroes(f64),
    g: f64 = @import("std").mem.zeroes(f64),
    b: f64 = @import("std").mem.zeroes(f64),
    a: f64 = @import("std").mem.zeroes(f64),
};
pub const struct_WGPUCommandBufferDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const struct_WGPUCommandEncoderDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const WGPUCompilationMessageType_Error: c_int = 1;
pub const WGPUCompilationMessageType_Warning: c_int = 2;
pub const WGPUCompilationMessageType_Info: c_int = 3;
pub const WGPUCompilationMessageType_Force32: c_int = 2147483647;
pub const enum_WGPUCompilationMessageType = c_uint;
pub const WGPUCompilationMessageType = enum_WGPUCompilationMessageType;
pub const struct_WGPUCompilationMessage = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    message: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    type: WGPUCompilationMessageType = @import("std").mem.zeroes(WGPUCompilationMessageType),
    lineNum: u64 = @import("std").mem.zeroes(u64),
    linePos: u64 = @import("std").mem.zeroes(u64),
    offset: u64 = @import("std").mem.zeroes(u64),
    length: u64 = @import("std").mem.zeroes(u64),
    utf16LinePos: u64 = @import("std").mem.zeroes(u64),
    utf16Offset: u64 = @import("std").mem.zeroes(u64),
    utf16Length: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_WGPUComputePassTimestampWrites = extern struct {
    querySet: WGPUQuerySet = @import("std").mem.zeroes(WGPUQuerySet),
    beginningOfPassWriteIndex: u32 = @import("std").mem.zeroes(u32),
    endOfPassWriteIndex: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUConstantEntry = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    key: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    value: f64 = @import("std").mem.zeroes(f64),
};
pub const struct_WGPUExtent3D = extern struct {
    width: u32 = @import("std").mem.zeroes(u32),
    height: u32 = @import("std").mem.zeroes(u32),
    depthOrArrayLayers: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUFuture = extern struct {
    id: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_WGPUInstanceFeatures = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    timedWaitAnyEnable: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    timedWaitAnyMaxCount: usize = @import("std").mem.zeroes(usize),
};
pub const struct_WGPULimits = extern struct {
    maxTextureDimension1D: u32 = @import("std").mem.zeroes(u32),
    maxTextureDimension2D: u32 = @import("std").mem.zeroes(u32),
    maxTextureDimension3D: u32 = @import("std").mem.zeroes(u32),
    maxTextureArrayLayers: u32 = @import("std").mem.zeroes(u32),
    maxBindGroups: u32 = @import("std").mem.zeroes(u32),
    maxBindGroupsPlusVertexBuffers: u32 = @import("std").mem.zeroes(u32),
    maxBindingsPerBindGroup: u32 = @import("std").mem.zeroes(u32),
    maxDynamicUniformBuffersPerPipelineLayout: u32 = @import("std").mem.zeroes(u32),
    maxDynamicStorageBuffersPerPipelineLayout: u32 = @import("std").mem.zeroes(u32),
    maxSampledTexturesPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxSamplersPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxStorageBuffersPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxStorageTexturesPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxUniformBuffersPerShaderStage: u32 = @import("std").mem.zeroes(u32),
    maxUniformBufferBindingSize: u64 = @import("std").mem.zeroes(u64),
    maxStorageBufferBindingSize: u64 = @import("std").mem.zeroes(u64),
    minUniformBufferOffsetAlignment: u32 = @import("std").mem.zeroes(u32),
    minStorageBufferOffsetAlignment: u32 = @import("std").mem.zeroes(u32),
    maxVertexBuffers: u32 = @import("std").mem.zeroes(u32),
    maxBufferSize: u64 = @import("std").mem.zeroes(u64),
    maxVertexAttributes: u32 = @import("std").mem.zeroes(u32),
    maxVertexBufferArrayStride: u32 = @import("std").mem.zeroes(u32),
    maxInterStageShaderComponents: u32 = @import("std").mem.zeroes(u32),
    maxInterStageShaderVariables: u32 = @import("std").mem.zeroes(u32),
    maxColorAttachments: u32 = @import("std").mem.zeroes(u32),
    maxColorAttachmentBytesPerSample: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupStorageSize: u32 = @import("std").mem.zeroes(u32),
    maxComputeInvocationsPerWorkgroup: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupSizeX: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupSizeY: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupSizeZ: u32 = @import("std").mem.zeroes(u32),
    maxComputeWorkgroupsPerDimension: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUOrigin3D = extern struct {
    x: u32 = @import("std").mem.zeroes(u32),
    y: u32 = @import("std").mem.zeroes(u32),
    z: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUPipelineLayoutDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    bindGroupLayoutCount: usize = @import("std").mem.zeroes(usize),
    bindGroupLayouts: [*c]const WGPUBindGroupLayout = @import("std").mem.zeroes([*c]const WGPUBindGroupLayout),
};
pub const struct_WGPUPrimitiveDepthClipControl = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    unclippedDepth: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPUPrimitiveTopology_Undefined: c_int = 0;
pub const WGPUPrimitiveTopology_PointList: c_int = 1;
pub const WGPUPrimitiveTopology_LineList: c_int = 2;
pub const WGPUPrimitiveTopology_LineStrip: c_int = 3;
pub const WGPUPrimitiveTopology_TriangleList: c_int = 4;
pub const WGPUPrimitiveTopology_TriangleStrip: c_int = 5;
pub const WGPUPrimitiveTopology_Force32: c_int = 2147483647;
pub const enum_WGPUPrimitiveTopology = c_uint;
pub const WGPUPrimitiveTopology = enum_WGPUPrimitiveTopology;
pub const WGPUIndexFormat_Undefined: c_int = 0;
pub const WGPUIndexFormat_Uint16: c_int = 1;
pub const WGPUIndexFormat_Uint32: c_int = 2;
pub const WGPUIndexFormat_Force32: c_int = 2147483647;
pub const enum_WGPUIndexFormat = c_uint;
pub const WGPUIndexFormat = enum_WGPUIndexFormat;
pub const WGPUFrontFace_Undefined: c_int = 0;
pub const WGPUFrontFace_CCW: c_int = 1;
pub const WGPUFrontFace_CW: c_int = 2;
pub const WGPUFrontFace_Force32: c_int = 2147483647;
pub const enum_WGPUFrontFace = c_uint;
pub const WGPUFrontFace = enum_WGPUFrontFace;
pub const WGPUCullMode_Undefined: c_int = 0;
pub const WGPUCullMode_None: c_int = 1;
pub const WGPUCullMode_Front: c_int = 2;
pub const WGPUCullMode_Back: c_int = 3;
pub const WGPUCullMode_Force32: c_int = 2147483647;
pub const enum_WGPUCullMode = c_uint;
pub const WGPUCullMode = enum_WGPUCullMode;
pub const struct_WGPUPrimitiveState = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    topology: WGPUPrimitiveTopology = @import("std").mem.zeroes(WGPUPrimitiveTopology),
    stripIndexFormat: WGPUIndexFormat = @import("std").mem.zeroes(WGPUIndexFormat),
    frontFace: WGPUFrontFace = @import("std").mem.zeroes(WGPUFrontFace),
    cullMode: WGPUCullMode = @import("std").mem.zeroes(WGPUCullMode),
};
pub const WGPUQueryType_Occlusion: c_int = 1;
pub const WGPUQueryType_Timestamp: c_int = 2;
pub const WGPUQueryType_Force32: c_int = 2147483647;
pub const enum_WGPUQueryType = c_uint;
pub const WGPUQueryType = enum_WGPUQueryType;
pub const struct_WGPUQuerySetDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    type: WGPUQueryType = @import("std").mem.zeroes(WGPUQueryType),
    count: u32 = @import("std").mem.zeroes(u32),
};
pub const struct_WGPUQueueDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const WGPUQueueWorkDoneStatus_Success: c_int = 0;
pub const WGPUQueueWorkDoneStatus_Error: c_int = 1;
pub const WGPUQueueWorkDoneStatus_Unknown: c_int = 2;
pub const WGPUQueueWorkDoneStatus_DeviceLost: c_int = 3;
pub const WGPUQueueWorkDoneStatus_Force32: c_int = 2147483647;
pub const enum_WGPUQueueWorkDoneStatus = c_uint;
pub const WGPUQueueWorkDoneStatus = enum_WGPUQueueWorkDoneStatus;
pub const WGPUQueueWorkDoneCallback = ?*const fn (WGPUQueueWorkDoneStatus, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUQueueWorkDoneCallbackInfo = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPUQueueWorkDoneCallback = @import("std").mem.zeroes(WGPUQueueWorkDoneCallback),
    userdata: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct_WGPURenderBundleDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const struct_WGPURenderBundleEncoderDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    colorFormatCount: usize = @import("std").mem.zeroes(usize),
    colorFormats: [*c]const WGPUTextureFormat = @import("std").mem.zeroes([*c]const WGPUTextureFormat),
    depthStencilFormat: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    sampleCount: u32 = @import("std").mem.zeroes(u32),
    depthReadOnly: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    stencilReadOnly: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPULoadOp_Undefined: c_int = 0;
pub const WGPULoadOp_Clear: c_int = 1;
pub const WGPULoadOp_Load: c_int = 2;
pub const WGPULoadOp_Force32: c_int = 2147483647;
pub const enum_WGPULoadOp = c_uint;
pub const WGPULoadOp = enum_WGPULoadOp;
pub const WGPUStoreOp_Undefined: c_int = 0;
pub const WGPUStoreOp_Store: c_int = 1;
pub const WGPUStoreOp_Discard: c_int = 2;
pub const WGPUStoreOp_Force32: c_int = 2147483647;
pub const enum_WGPUStoreOp = c_uint;
pub const WGPUStoreOp = enum_WGPUStoreOp;
pub const struct_WGPURenderPassDepthStencilAttachment = extern struct {
    view: WGPUTextureView = @import("std").mem.zeroes(WGPUTextureView),
    depthLoadOp: WGPULoadOp = @import("std").mem.zeroes(WGPULoadOp),
    depthStoreOp: WGPUStoreOp = @import("std").mem.zeroes(WGPUStoreOp),
    depthClearValue: f32 = @import("std").mem.zeroes(f32),
    depthReadOnly: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    stencilLoadOp: WGPULoadOp = @import("std").mem.zeroes(WGPULoadOp),
    stencilStoreOp: WGPUStoreOp = @import("std").mem.zeroes(WGPUStoreOp),
    stencilClearValue: u32 = @import("std").mem.zeroes(u32),
    stencilReadOnly: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const struct_WGPURenderPassDescriptorMaxDrawCount = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    maxDrawCount: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_WGPURenderPassTimestampWrites = extern struct {
    querySet: WGPUQuerySet = @import("std").mem.zeroes(WGPUQuerySet),
    beginningOfPassWriteIndex: u32 = @import("std").mem.zeroes(u32),
    endOfPassWriteIndex: u32 = @import("std").mem.zeroes(u32),
};
pub const WGPURequestAdapterStatus_Success: c_int = 0;
pub const WGPURequestAdapterStatus_Unavailable: c_int = 1;
pub const WGPURequestAdapterStatus_Error: c_int = 2;
pub const WGPURequestAdapterStatus_Unknown: c_int = 3;
pub const WGPURequestAdapterStatus_Force32: c_int = 2147483647;
pub const enum_WGPURequestAdapterStatus = c_uint;
pub const WGPURequestAdapterStatus = enum_WGPURequestAdapterStatus;
pub const WGPURequestAdapterCallback = ?*const fn (WGPURequestAdapterStatus, WGPUAdapter, [*c]const u8, ?*anyopaque) callconv(.c) void;
pub const struct_WGPURequestAdapterCallbackInfo = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    mode: WGPUCallbackMode = @import("std").mem.zeroes(WGPUCallbackMode),
    callback: WGPURequestAdapterCallback = @import("std").mem.zeroes(WGPURequestAdapterCallback),
    userdata: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPUPowerPreference_Undefined: c_int = 0;
pub const WGPUPowerPreference_LowPower: c_int = 1;
pub const WGPUPowerPreference_HighPerformance: c_int = 2;
pub const WGPUPowerPreference_Force32: c_int = 2147483647;
pub const enum_WGPUPowerPreference = c_uint;
pub const WGPUPowerPreference = enum_WGPUPowerPreference;
pub const struct_WGPURequestAdapterOptions = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    compatibleSurface: WGPUSurface = @import("std").mem.zeroes(WGPUSurface),
    powerPreference: WGPUPowerPreference = @import("std").mem.zeroes(WGPUPowerPreference),
    backendType: WGPUBackendType = @import("std").mem.zeroes(WGPUBackendType),
    forceFallbackAdapter: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    compatibilityMode: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPUSamplerBindingType_Undefined: c_int = 0;
pub const WGPUSamplerBindingType_Filtering: c_int = 1;
pub const WGPUSamplerBindingType_NonFiltering: c_int = 2;
pub const WGPUSamplerBindingType_Comparison: c_int = 3;
pub const WGPUSamplerBindingType_Force32: c_int = 2147483647;
pub const enum_WGPUSamplerBindingType = c_uint;
pub const WGPUSamplerBindingType = enum_WGPUSamplerBindingType;
pub const struct_WGPUSamplerBindingLayout = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    type: WGPUSamplerBindingType = @import("std").mem.zeroes(WGPUSamplerBindingType),
};
pub const WGPUAddressMode_Undefined: c_int = 0;
pub const WGPUAddressMode_ClampToEdge: c_int = 1;
pub const WGPUAddressMode_Repeat: c_int = 2;
pub const WGPUAddressMode_MirrorRepeat: c_int = 3;
pub const WGPUAddressMode_Force32: c_int = 2147483647;
pub const enum_WGPUAddressMode = c_uint;
pub const WGPUAddressMode = enum_WGPUAddressMode;
pub const WGPUFilterMode_Undefined: c_int = 0;
pub const WGPUFilterMode_Nearest: c_int = 1;
pub const WGPUFilterMode_Linear: c_int = 2;
pub const WGPUFilterMode_Force32: c_int = 2147483647;
pub const enum_WGPUFilterMode = c_uint;
pub const WGPUFilterMode = enum_WGPUFilterMode;
pub const WGPUMipmapFilterMode_Undefined: c_int = 0;
pub const WGPUMipmapFilterMode_Nearest: c_int = 1;
pub const WGPUMipmapFilterMode_Linear: c_int = 2;
pub const WGPUMipmapFilterMode_Force32: c_int = 2147483647;
pub const enum_WGPUMipmapFilterMode = c_uint;
pub const WGPUMipmapFilterMode = enum_WGPUMipmapFilterMode;
pub const WGPUCompareFunction_Undefined: c_int = 0;
pub const WGPUCompareFunction_Never: c_int = 1;
pub const WGPUCompareFunction_Less: c_int = 2;
pub const WGPUCompareFunction_Equal: c_int = 3;
pub const WGPUCompareFunction_LessEqual: c_int = 4;
pub const WGPUCompareFunction_Greater: c_int = 5;
pub const WGPUCompareFunction_NotEqual: c_int = 6;
pub const WGPUCompareFunction_GreaterEqual: c_int = 7;
pub const WGPUCompareFunction_Always: c_int = 8;
pub const WGPUCompareFunction_Force32: c_int = 2147483647;
pub const enum_WGPUCompareFunction = c_uint;
pub const WGPUCompareFunction = enum_WGPUCompareFunction;
pub const struct_WGPUSamplerDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    addressModeU: WGPUAddressMode = @import("std").mem.zeroes(WGPUAddressMode),
    addressModeV: WGPUAddressMode = @import("std").mem.zeroes(WGPUAddressMode),
    addressModeW: WGPUAddressMode = @import("std").mem.zeroes(WGPUAddressMode),
    magFilter: WGPUFilterMode = @import("std").mem.zeroes(WGPUFilterMode),
    minFilter: WGPUFilterMode = @import("std").mem.zeroes(WGPUFilterMode),
    mipmapFilter: WGPUMipmapFilterMode = @import("std").mem.zeroes(WGPUMipmapFilterMode),
    lodMinClamp: f32 = @import("std").mem.zeroes(f32),
    lodMaxClamp: f32 = @import("std").mem.zeroes(f32),
    compare: WGPUCompareFunction = @import("std").mem.zeroes(WGPUCompareFunction),
    maxAnisotropy: u16 = @import("std").mem.zeroes(u16),
};
pub const struct_WGPUShaderModuleSPIRVDescriptor = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    codeSize: u32 = @import("std").mem.zeroes(u32),
    code: [*c]const u32 = @import("std").mem.zeroes([*c]const u32),
};
pub const struct_WGPUShaderModuleWGSLDescriptor = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    code: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const struct_WGPUShaderModuleDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const WGPUStencilOperation_Undefined: c_int = 0;
pub const WGPUStencilOperation_Keep: c_int = 1;
pub const WGPUStencilOperation_Zero: c_int = 2;
pub const WGPUStencilOperation_Replace: c_int = 3;
pub const WGPUStencilOperation_Invert: c_int = 4;
pub const WGPUStencilOperation_IncrementClamp: c_int = 5;
pub const WGPUStencilOperation_DecrementClamp: c_int = 6;
pub const WGPUStencilOperation_IncrementWrap: c_int = 7;
pub const WGPUStencilOperation_DecrementWrap: c_int = 8;
pub const WGPUStencilOperation_Force32: c_int = 2147483647;
pub const enum_WGPUStencilOperation = c_uint;
pub const WGPUStencilOperation = enum_WGPUStencilOperation;
pub const struct_WGPUStencilFaceState = extern struct {
    compare: WGPUCompareFunction = @import("std").mem.zeroes(WGPUCompareFunction),
    failOp: WGPUStencilOperation = @import("std").mem.zeroes(WGPUStencilOperation),
    depthFailOp: WGPUStencilOperation = @import("std").mem.zeroes(WGPUStencilOperation),
    passOp: WGPUStencilOperation = @import("std").mem.zeroes(WGPUStencilOperation),
};
pub const WGPUStorageTextureAccess_Undefined: c_int = 0;
pub const WGPUStorageTextureAccess_WriteOnly: c_int = 1;
pub const WGPUStorageTextureAccess_ReadOnly: c_int = 2;
pub const WGPUStorageTextureAccess_ReadWrite: c_int = 3;
pub const WGPUStorageTextureAccess_Force32: c_int = 2147483647;
pub const enum_WGPUStorageTextureAccess = c_uint;
pub const WGPUStorageTextureAccess = enum_WGPUStorageTextureAccess;
pub const WGPUTextureViewDimension_Undefined: c_int = 0;
pub const WGPUTextureViewDimension_1D: c_int = 1;
pub const WGPUTextureViewDimension_2D: c_int = 2;
pub const WGPUTextureViewDimension_2DArray: c_int = 3;
pub const WGPUTextureViewDimension_Cube: c_int = 4;
pub const WGPUTextureViewDimension_CubeArray: c_int = 5;
pub const WGPUTextureViewDimension_3D: c_int = 6;
pub const WGPUTextureViewDimension_Force32: c_int = 2147483647;
pub const enum_WGPUTextureViewDimension = c_uint;
pub const WGPUTextureViewDimension = enum_WGPUTextureViewDimension;
pub const struct_WGPUStorageTextureBindingLayout = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    access: WGPUStorageTextureAccess = @import("std").mem.zeroes(WGPUStorageTextureAccess),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    viewDimension: WGPUTextureViewDimension = @import("std").mem.zeroes(WGPUTextureViewDimension),
};
pub const WGPUPresentMode_Fifo: c_int = 1;
pub const WGPUPresentMode_Immediate: c_int = 3;
pub const WGPUPresentMode_Mailbox: c_int = 4;
pub const WGPUPresentMode_Force32: c_int = 2147483647;
pub const enum_WGPUPresentMode = c_uint;
pub const WGPUPresentMode = enum_WGPUPresentMode;
pub const WGPUCompositeAlphaMode_Auto: c_int = 0;
pub const WGPUCompositeAlphaMode_Opaque: c_int = 1;
pub const WGPUCompositeAlphaMode_Premultiplied: c_int = 2;
pub const WGPUCompositeAlphaMode_Unpremultiplied: c_int = 3;
pub const WGPUCompositeAlphaMode_Inherit: c_int = 4;
pub const WGPUCompositeAlphaMode_Force32: c_int = 2147483647;
pub const enum_WGPUCompositeAlphaMode = c_uint;
pub const WGPUCompositeAlphaMode = enum_WGPUCompositeAlphaMode;
pub const struct_WGPUSurfaceCapabilities = extern struct {
    nextInChain: [*c]WGPUChainedStructOut = @import("std").mem.zeroes([*c]WGPUChainedStructOut),
    formatCount: usize = @import("std").mem.zeroes(usize),
    formats: [*c]const WGPUTextureFormat = @import("std").mem.zeroes([*c]const WGPUTextureFormat),
    presentModeCount: usize = @import("std").mem.zeroes(usize),
    presentModes: [*c]const WGPUPresentMode = @import("std").mem.zeroes([*c]const WGPUPresentMode),
    alphaModeCount: usize = @import("std").mem.zeroes(usize),
    alphaModes: [*c]const WGPUCompositeAlphaMode = @import("std").mem.zeroes([*c]const WGPUCompositeAlphaMode),
};
pub const WGPUTextureUsageFlags = WGPUFlags;
pub const struct_WGPUSurfaceConfiguration = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    device: WGPUDevice = @import("std").mem.zeroes(WGPUDevice),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    usage: WGPUTextureUsageFlags = @import("std").mem.zeroes(WGPUTextureUsageFlags),
    viewFormatCount: usize = @import("std").mem.zeroes(usize),
    viewFormats: [*c]const WGPUTextureFormat = @import("std").mem.zeroes([*c]const WGPUTextureFormat),
    alphaMode: WGPUCompositeAlphaMode = @import("std").mem.zeroes(WGPUCompositeAlphaMode),
    width: u32 = @import("std").mem.zeroes(u32),
    height: u32 = @import("std").mem.zeroes(u32),
    presentMode: WGPUPresentMode = @import("std").mem.zeroes(WGPUPresentMode),
};
pub const struct_WGPUSurfaceDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const struct_WGPUSurfaceDescriptorFromCanvasHTMLSelector = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    selector: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const WGPUSurfaceGetCurrentTextureStatus_Success: c_int = 0;
pub const WGPUSurfaceGetCurrentTextureStatus_Timeout: c_int = 1;
pub const WGPUSurfaceGetCurrentTextureStatus_Outdated: c_int = 2;
pub const WGPUSurfaceGetCurrentTextureStatus_Lost: c_int = 3;
pub const WGPUSurfaceGetCurrentTextureStatus_OutOfMemory: c_int = 4;
pub const WGPUSurfaceGetCurrentTextureStatus_DeviceLost: c_int = 5;
pub const WGPUSurfaceGetCurrentTextureStatus_Force32: c_int = 2147483647;
pub const enum_WGPUSurfaceGetCurrentTextureStatus = c_uint;
pub const WGPUSurfaceGetCurrentTextureStatus = enum_WGPUSurfaceGetCurrentTextureStatus;
pub const struct_WGPUSurfaceTexture = extern struct {
    texture: WGPUTexture = @import("std").mem.zeroes(WGPUTexture),
    suboptimal: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    status: WGPUSurfaceGetCurrentTextureStatus = @import("std").mem.zeroes(WGPUSurfaceGetCurrentTextureStatus),
};
pub const struct_WGPUSwapChainDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    usage: WGPUTextureUsageFlags = @import("std").mem.zeroes(WGPUTextureUsageFlags),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    width: u32 = @import("std").mem.zeroes(u32),
    height: u32 = @import("std").mem.zeroes(u32),
    presentMode: WGPUPresentMode = @import("std").mem.zeroes(WGPUPresentMode),
};
pub const WGPUTextureSampleType_Undefined: c_int = 0;
pub const WGPUTextureSampleType_Float: c_int = 1;
pub const WGPUTextureSampleType_UnfilterableFloat: c_int = 2;
pub const WGPUTextureSampleType_Depth: c_int = 3;
pub const WGPUTextureSampleType_Sint: c_int = 4;
pub const WGPUTextureSampleType_Uint: c_int = 5;
pub const WGPUTextureSampleType_Force32: c_int = 2147483647;
pub const enum_WGPUTextureSampleType = c_uint;
pub const WGPUTextureSampleType = enum_WGPUTextureSampleType;
pub const struct_WGPUTextureBindingLayout = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    sampleType: WGPUTextureSampleType = @import("std").mem.zeroes(WGPUTextureSampleType),
    viewDimension: WGPUTextureViewDimension = @import("std").mem.zeroes(WGPUTextureViewDimension),
    multisampled: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const struct_WGPUTextureBindingViewDimensionDescriptor = extern struct {
    chain: WGPUChainedStruct = @import("std").mem.zeroes(WGPUChainedStruct),
    textureBindingViewDimension: WGPUTextureViewDimension = @import("std").mem.zeroes(WGPUTextureViewDimension),
};
pub const struct_WGPUTextureDataLayout = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    offset: u64 = @import("std").mem.zeroes(u64),
    bytesPerRow: u32 = @import("std").mem.zeroes(u32),
    rowsPerImage: u32 = @import("std").mem.zeroes(u32),
};
pub const WGPUTextureAspect_Undefined: c_int = 0;
pub const WGPUTextureAspect_All: c_int = 1;
pub const WGPUTextureAspect_StencilOnly: c_int = 2;
pub const WGPUTextureAspect_DepthOnly: c_int = 3;
pub const WGPUTextureAspect_Force32: c_int = 2147483647;
pub const enum_WGPUTextureAspect = c_uint;
pub const WGPUTextureAspect = enum_WGPUTextureAspect;
pub const struct_WGPUTextureViewDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    dimension: WGPUTextureViewDimension = @import("std").mem.zeroes(WGPUTextureViewDimension),
    baseMipLevel: u32 = @import("std").mem.zeroes(u32),
    mipLevelCount: u32 = @import("std").mem.zeroes(u32),
    baseArrayLayer: u32 = @import("std").mem.zeroes(u32),
    arrayLayerCount: u32 = @import("std").mem.zeroes(u32),
    aspect: WGPUTextureAspect = @import("std").mem.zeroes(WGPUTextureAspect),
};
pub const WGPUVertexFormat_Undefined: c_int = 0;
pub const WGPUVertexFormat_Uint8x2: c_int = 1;
pub const WGPUVertexFormat_Uint8x4: c_int = 2;
pub const WGPUVertexFormat_Sint8x2: c_int = 3;
pub const WGPUVertexFormat_Sint8x4: c_int = 4;
pub const WGPUVertexFormat_Unorm8x2: c_int = 5;
pub const WGPUVertexFormat_Unorm8x4: c_int = 6;
pub const WGPUVertexFormat_Snorm8x2: c_int = 7;
pub const WGPUVertexFormat_Snorm8x4: c_int = 8;
pub const WGPUVertexFormat_Uint16x2: c_int = 9;
pub const WGPUVertexFormat_Uint16x4: c_int = 10;
pub const WGPUVertexFormat_Sint16x2: c_int = 11;
pub const WGPUVertexFormat_Sint16x4: c_int = 12;
pub const WGPUVertexFormat_Unorm16x2: c_int = 13;
pub const WGPUVertexFormat_Unorm16x4: c_int = 14;
pub const WGPUVertexFormat_Snorm16x2: c_int = 15;
pub const WGPUVertexFormat_Snorm16x4: c_int = 16;
pub const WGPUVertexFormat_Float16x2: c_int = 17;
pub const WGPUVertexFormat_Float16x4: c_int = 18;
pub const WGPUVertexFormat_Float32: c_int = 19;
pub const WGPUVertexFormat_Float32x2: c_int = 20;
pub const WGPUVertexFormat_Float32x3: c_int = 21;
pub const WGPUVertexFormat_Float32x4: c_int = 22;
pub const WGPUVertexFormat_Uint32: c_int = 23;
pub const WGPUVertexFormat_Uint32x2: c_int = 24;
pub const WGPUVertexFormat_Uint32x3: c_int = 25;
pub const WGPUVertexFormat_Uint32x4: c_int = 26;
pub const WGPUVertexFormat_Sint32: c_int = 27;
pub const WGPUVertexFormat_Sint32x2: c_int = 28;
pub const WGPUVertexFormat_Sint32x3: c_int = 29;
pub const WGPUVertexFormat_Sint32x4: c_int = 30;
pub const WGPUVertexFormat_Unorm10_10_10_2: c_int = 31;
pub const WGPUVertexFormat_Force32: c_int = 2147483647;
pub const enum_WGPUVertexFormat = c_uint;
pub const WGPUVertexFormat = enum_WGPUVertexFormat;
pub const struct_WGPUVertexAttribute = extern struct {
    format: WGPUVertexFormat = @import("std").mem.zeroes(WGPUVertexFormat),
    offset: u64 = @import("std").mem.zeroes(u64),
    shaderLocation: u32 = @import("std").mem.zeroes(u32),
};
pub const WGPUBindGroupEntry = struct_WGPUBindGroupEntry;
pub const struct_WGPUBindGroupDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    layout: WGPUBindGroupLayout = @import("std").mem.zeroes(WGPUBindGroupLayout),
    entryCount: usize = @import("std").mem.zeroes(usize),
    entries: [*c]const WGPUBindGroupEntry = @import("std").mem.zeroes([*c]const WGPUBindGroupEntry),
};
pub const WGPUShaderStageFlags = WGPUFlags;
pub const WGPUBufferBindingLayout = struct_WGPUBufferBindingLayout;
pub const WGPUSamplerBindingLayout = struct_WGPUSamplerBindingLayout;
pub const WGPUTextureBindingLayout = struct_WGPUTextureBindingLayout;
pub const WGPUStorageTextureBindingLayout = struct_WGPUStorageTextureBindingLayout;
pub const struct_WGPUBindGroupLayoutEntry = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    binding: u32 = @import("std").mem.zeroes(u32),
    visibility: WGPUShaderStageFlags = @import("std").mem.zeroes(WGPUShaderStageFlags),
    buffer: WGPUBufferBindingLayout = @import("std").mem.zeroes(WGPUBufferBindingLayout),
    sampler: WGPUSamplerBindingLayout = @import("std").mem.zeroes(WGPUSamplerBindingLayout),
    texture: WGPUTextureBindingLayout = @import("std").mem.zeroes(WGPUTextureBindingLayout),
    storageTexture: WGPUStorageTextureBindingLayout = @import("std").mem.zeroes(WGPUStorageTextureBindingLayout),
};
pub const WGPUBlendComponent = struct_WGPUBlendComponent;
pub const struct_WGPUBlendState = extern struct {
    color: WGPUBlendComponent = @import("std").mem.zeroes(WGPUBlendComponent),
    alpha: WGPUBlendComponent = @import("std").mem.zeroes(WGPUBlendComponent),
};
pub const WGPUCompilationMessage = struct_WGPUCompilationMessage;
pub const struct_WGPUCompilationInfo = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    messageCount: usize = @import("std").mem.zeroes(usize),
    messages: [*c]const WGPUCompilationMessage = @import("std").mem.zeroes([*c]const WGPUCompilationMessage),
};
pub const WGPUComputePassTimestampWrites = struct_WGPUComputePassTimestampWrites;
pub const struct_WGPUComputePassDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    timestampWrites: [*c]const WGPUComputePassTimestampWrites = @import("std").mem.zeroes([*c]const WGPUComputePassTimestampWrites),
};
pub const WGPUStencilFaceState = struct_WGPUStencilFaceState;
pub const struct_WGPUDepthStencilState = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    depthWriteEnabled: WGPUBool = @import("std").mem.zeroes(WGPUBool),
    depthCompare: WGPUCompareFunction = @import("std").mem.zeroes(WGPUCompareFunction),
    stencilFront: WGPUStencilFaceState = @import("std").mem.zeroes(WGPUStencilFaceState),
    stencilBack: WGPUStencilFaceState = @import("std").mem.zeroes(WGPUStencilFaceState),
    stencilReadMask: u32 = @import("std").mem.zeroes(u32),
    stencilWriteMask: u32 = @import("std").mem.zeroes(u32),
    depthBias: i32 = @import("std").mem.zeroes(i32),
    depthBiasSlopeScale: f32 = @import("std").mem.zeroes(f32),
    depthBiasClamp: f32 = @import("std").mem.zeroes(f32),
};
pub const WGPUFuture = struct_WGPUFuture;
pub const struct_WGPUFutureWaitInfo = extern struct {
    future: WGPUFuture = @import("std").mem.zeroes(WGPUFuture),
    completed: WGPUBool = @import("std").mem.zeroes(WGPUBool),
};
pub const WGPUTextureDataLayout = struct_WGPUTextureDataLayout;
pub const struct_WGPUImageCopyBuffer = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    layout: WGPUTextureDataLayout = @import("std").mem.zeroes(WGPUTextureDataLayout),
    buffer: WGPUBuffer = @import("std").mem.zeroes(WGPUBuffer),
};
pub const WGPUOrigin3D = struct_WGPUOrigin3D;
pub const struct_WGPUImageCopyTexture = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    texture: WGPUTexture = @import("std").mem.zeroes(WGPUTexture),
    mipLevel: u32 = @import("std").mem.zeroes(u32),
    origin: WGPUOrigin3D = @import("std").mem.zeroes(WGPUOrigin3D),
    aspect: WGPUTextureAspect = @import("std").mem.zeroes(WGPUTextureAspect),
};
pub const WGPUInstanceFeatures = struct_WGPUInstanceFeatures;
pub const struct_WGPUInstanceDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    features: WGPUInstanceFeatures = @import("std").mem.zeroes(WGPUInstanceFeatures),
};
pub const WGPUConstantEntry = struct_WGPUConstantEntry;
pub const struct_WGPUProgrammableStageDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    module: WGPUShaderModule = @import("std").mem.zeroes(WGPUShaderModule),
    entryPoint: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    constantCount: usize = @import("std").mem.zeroes(usize),
    constants: [*c]const WGPUConstantEntry = @import("std").mem.zeroes([*c]const WGPUConstantEntry),
};
pub const WGPUColor = struct_WGPUColor;
pub const struct_WGPURenderPassColorAttachment = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    view: WGPUTextureView = @import("std").mem.zeroes(WGPUTextureView),
    depthSlice: u32 = @import("std").mem.zeroes(u32),
    resolveTarget: WGPUTextureView = @import("std").mem.zeroes(WGPUTextureView),
    loadOp: WGPULoadOp = @import("std").mem.zeroes(WGPULoadOp),
    storeOp: WGPUStoreOp = @import("std").mem.zeroes(WGPUStoreOp),
    clearValue: WGPUColor = @import("std").mem.zeroes(WGPUColor),
};
pub const WGPULimits = struct_WGPULimits;
pub const struct_WGPURequiredLimits = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    limits: WGPULimits = @import("std").mem.zeroes(WGPULimits),
};
pub const struct_WGPUSupportedLimits = extern struct {
    nextInChain: [*c]WGPUChainedStructOut = @import("std").mem.zeroes([*c]WGPUChainedStructOut),
    limits: WGPULimits = @import("std").mem.zeroes(WGPULimits),
};
pub const WGPUTextureDimension_Undefined: c_int = 0;
pub const WGPUTextureDimension_1D: c_int = 1;
pub const WGPUTextureDimension_2D: c_int = 2;
pub const WGPUTextureDimension_3D: c_int = 3;
pub const WGPUTextureDimension_Force32: c_int = 2147483647;
pub const enum_WGPUTextureDimension = c_uint;
pub const WGPUTextureDimension = enum_WGPUTextureDimension;
pub const WGPUExtent3D = struct_WGPUExtent3D;
pub const struct_WGPUTextureDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    usage: WGPUTextureUsageFlags = @import("std").mem.zeroes(WGPUTextureUsageFlags),
    dimension: WGPUTextureDimension = @import("std").mem.zeroes(WGPUTextureDimension),
    size: WGPUExtent3D = @import("std").mem.zeroes(WGPUExtent3D),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    mipLevelCount: u32 = @import("std").mem.zeroes(u32),
    sampleCount: u32 = @import("std").mem.zeroes(u32),
    viewFormatCount: usize = @import("std").mem.zeroes(usize),
    viewFormats: [*c]const WGPUTextureFormat = @import("std").mem.zeroes([*c]const WGPUTextureFormat),
};
pub const WGPUVertexStepMode_Undefined: c_int = 0;
pub const WGPUVertexStepMode_VertexBufferNotUsed: c_int = 1;
pub const WGPUVertexStepMode_Vertex: c_int = 2;
pub const WGPUVertexStepMode_Instance: c_int = 3;
pub const WGPUVertexStepMode_Force32: c_int = 2147483647;
pub const enum_WGPUVertexStepMode = c_uint;
pub const WGPUVertexStepMode = enum_WGPUVertexStepMode;
pub const WGPUVertexAttribute = struct_WGPUVertexAttribute;
pub const struct_WGPUVertexBufferLayout = extern struct {
    arrayStride: u64 = @import("std").mem.zeroes(u64),
    stepMode: WGPUVertexStepMode = @import("std").mem.zeroes(WGPUVertexStepMode),
    attributeCount: usize = @import("std").mem.zeroes(usize),
    attributes: [*c]const WGPUVertexAttribute = @import("std").mem.zeroes([*c]const WGPUVertexAttribute),
};
pub const WGPUBindGroupLayoutEntry = struct_WGPUBindGroupLayoutEntry;
pub const struct_WGPUBindGroupLayoutDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    entryCount: usize = @import("std").mem.zeroes(usize),
    entries: [*c]const WGPUBindGroupLayoutEntry = @import("std").mem.zeroes([*c]const WGPUBindGroupLayoutEntry),
};
pub const WGPUBlendState = struct_WGPUBlendState;
pub const WGPUColorWriteMaskFlags = WGPUFlags;
pub const struct_WGPUColorTargetState = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    format: WGPUTextureFormat = @import("std").mem.zeroes(WGPUTextureFormat),
    blend: [*c]const WGPUBlendState = @import("std").mem.zeroes([*c]const WGPUBlendState),
    writeMask: WGPUColorWriteMaskFlags = @import("std").mem.zeroes(WGPUColorWriteMaskFlags),
};
pub const WGPUProgrammableStageDescriptor = struct_WGPUProgrammableStageDescriptor;
pub const struct_WGPUComputePipelineDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    layout: WGPUPipelineLayout = @import("std").mem.zeroes(WGPUPipelineLayout),
    compute: WGPUProgrammableStageDescriptor = @import("std").mem.zeroes(WGPUProgrammableStageDescriptor),
};
pub const WGPUFeatureName_Undefined: c_int = 0;
pub const WGPUFeatureName_DepthClipControl: c_int = 1;
pub const WGPUFeatureName_Depth32FloatStencil8: c_int = 2;
pub const WGPUFeatureName_TimestampQuery: c_int = 3;
pub const WGPUFeatureName_TextureCompressionBC: c_int = 4;
pub const WGPUFeatureName_TextureCompressionETC2: c_int = 5;
pub const WGPUFeatureName_TextureCompressionASTC: c_int = 6;
pub const WGPUFeatureName_IndirectFirstInstance: c_int = 7;
pub const WGPUFeatureName_ShaderF16: c_int = 8;
pub const WGPUFeatureName_RG11B10UfloatRenderable: c_int = 9;
pub const WGPUFeatureName_BGRA8UnormStorage: c_int = 10;
pub const WGPUFeatureName_Float32Filterable: c_int = 11;
pub const WGPUFeatureName_Force32: c_int = 2147483647;
pub const enum_WGPUFeatureName = c_uint;
pub const WGPUFeatureName = enum_WGPUFeatureName;
pub const WGPURequiredLimits = struct_WGPURequiredLimits;
pub const WGPUQueueDescriptor = struct_WGPUQueueDescriptor;
pub const WGPUDeviceLostReason_Undefined: c_int = 1;
pub const WGPUDeviceLostReason_Unknown: c_int = 1;
pub const WGPUDeviceLostReason_Destroyed: c_int = 2;
pub const WGPUDeviceLostReason_Force32: c_int = 2147483647;
pub const enum_WGPUDeviceLostReason = c_uint;
pub const WGPUDeviceLostReason = enum_WGPUDeviceLostReason;
pub const WGPUDeviceLostCallback = ?*const fn (WGPUDeviceLostReason, [*c]const u8, ?*anyopaque) callconv(.c) void;
pub const struct_WGPUDeviceDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    requiredFeatureCount: usize = @import("std").mem.zeroes(usize),
    requiredFeatures: [*c]const WGPUFeatureName = @import("std").mem.zeroes([*c]const WGPUFeatureName),
    requiredLimits: [*c]const WGPURequiredLimits = @import("std").mem.zeroes([*c]const WGPURequiredLimits),
    defaultQueue: WGPUQueueDescriptor = @import("std").mem.zeroes(WGPUQueueDescriptor),
    deviceLostCallback: WGPUDeviceLostCallback = @import("std").mem.zeroes(WGPUDeviceLostCallback),
    deviceLostUserdata: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const WGPURenderPassColorAttachment = struct_WGPURenderPassColorAttachment;
pub const WGPURenderPassDepthStencilAttachment = struct_WGPURenderPassDepthStencilAttachment;
pub const WGPURenderPassTimestampWrites = struct_WGPURenderPassTimestampWrites;
pub const struct_WGPURenderPassDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    colorAttachmentCount: usize = @import("std").mem.zeroes(usize),
    colorAttachments: [*c]const WGPURenderPassColorAttachment = @import("std").mem.zeroes([*c]const WGPURenderPassColorAttachment),
    depthStencilAttachment: [*c]const WGPURenderPassDepthStencilAttachment = @import("std").mem.zeroes([*c]const WGPURenderPassDepthStencilAttachment),
    occlusionQuerySet: WGPUQuerySet = @import("std").mem.zeroes(WGPUQuerySet),
    timestampWrites: [*c]const WGPURenderPassTimestampWrites = @import("std").mem.zeroes([*c]const WGPURenderPassTimestampWrites),
};
pub const WGPUVertexBufferLayout = struct_WGPUVertexBufferLayout;
pub const struct_WGPUVertexState = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    module: WGPUShaderModule = @import("std").mem.zeroes(WGPUShaderModule),
    entryPoint: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    constantCount: usize = @import("std").mem.zeroes(usize),
    constants: [*c]const WGPUConstantEntry = @import("std").mem.zeroes([*c]const WGPUConstantEntry),
    bufferCount: usize = @import("std").mem.zeroes(usize),
    buffers: [*c]const WGPUVertexBufferLayout = @import("std").mem.zeroes([*c]const WGPUVertexBufferLayout),
};
pub const WGPUColorTargetState = struct_WGPUColorTargetState;
pub const struct_WGPUFragmentState = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    module: WGPUShaderModule = @import("std").mem.zeroes(WGPUShaderModule),
    entryPoint: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    constantCount: usize = @import("std").mem.zeroes(usize),
    constants: [*c]const WGPUConstantEntry = @import("std").mem.zeroes([*c]const WGPUConstantEntry),
    targetCount: usize = @import("std").mem.zeroes(usize),
    targets: [*c]const WGPUColorTargetState = @import("std").mem.zeroes([*c]const WGPUColorTargetState),
};
pub const WGPUVertexState = struct_WGPUVertexState;
pub const WGPUPrimitiveState = struct_WGPUPrimitiveState;
pub const WGPUDepthStencilState = struct_WGPUDepthStencilState;
pub const WGPUFragmentState = struct_WGPUFragmentState;
pub const struct_WGPURenderPipelineDescriptor = extern struct {
    nextInChain: [*c]const WGPUChainedStruct = @import("std").mem.zeroes([*c]const WGPUChainedStruct),
    label: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    layout: WGPUPipelineLayout = @import("std").mem.zeroes(WGPUPipelineLayout),
    vertex: WGPUVertexState = @import("std").mem.zeroes(WGPUVertexState),
    primitive: WGPUPrimitiveState = @import("std").mem.zeroes(WGPUPrimitiveState),
    depthStencil: [*c]const WGPUDepthStencilState = @import("std").mem.zeroes([*c]const WGPUDepthStencilState),
    multisample: WGPUMultisampleState = @import("std").mem.zeroes(WGPUMultisampleState),
    fragment: [*c]const WGPUFragmentState = @import("std").mem.zeroes([*c]const WGPUFragmentState),
};
pub const WGPUWGSLFeatureName_Undefined: c_int = 0;
pub const WGPUWGSLFeatureName_ReadonlyAndReadwriteStorageTextures: c_int = 1;
pub const WGPUWGSLFeatureName_Packed4x8IntegerDotProduct: c_int = 2;
pub const WGPUWGSLFeatureName_UnrestrictedPointerParameters: c_int = 3;
pub const WGPUWGSLFeatureName_PointerCompositeAccess: c_int = 4;
pub const WGPUWGSLFeatureName_Force32: c_int = 2147483647;
pub const enum_WGPUWGSLFeatureName = c_uint;
pub const WGPUWGSLFeatureName = enum_WGPUWGSLFeatureName;
pub const WGPUBufferMapState_Unmapped: c_int = 1;
pub const WGPUBufferMapState_Pending: c_int = 2;
pub const WGPUBufferMapState_Mapped: c_int = 3;
pub const WGPUBufferMapState_Force32: c_int = 2147483647;
pub const enum_WGPUBufferMapState = c_uint;
pub const WGPUBufferMapState = enum_WGPUBufferMapState;
pub const WGPUCompilationInfoRequestStatus_Success: c_int = 0;
pub const WGPUCompilationInfoRequestStatus_Error: c_int = 1;
pub const WGPUCompilationInfoRequestStatus_DeviceLost: c_int = 2;
pub const WGPUCompilationInfoRequestStatus_Unknown: c_int = 3;
pub const WGPUCompilationInfoRequestStatus_Force32: c_int = 2147483647;
pub const enum_WGPUCompilationInfoRequestStatus = c_uint;
pub const WGPUCompilationInfoRequestStatus = enum_WGPUCompilationInfoRequestStatus;
pub const WGPUCreatePipelineAsyncStatus_Success: c_int = 0;
pub const WGPUCreatePipelineAsyncStatus_ValidationError: c_int = 1;
pub const WGPUCreatePipelineAsyncStatus_InternalError: c_int = 2;
pub const WGPUCreatePipelineAsyncStatus_DeviceLost: c_int = 3;
pub const WGPUCreatePipelineAsyncStatus_DeviceDestroyed: c_int = 4;
pub const WGPUCreatePipelineAsyncStatus_Unknown: c_int = 5;
pub const WGPUCreatePipelineAsyncStatus_Force32: c_int = 2147483647;
pub const enum_WGPUCreatePipelineAsyncStatus = c_uint;
pub const WGPUCreatePipelineAsyncStatus = enum_WGPUCreatePipelineAsyncStatus;
pub const WGPUErrorFilter_Validation: c_int = 1;
pub const WGPUErrorFilter_OutOfMemory: c_int = 2;
pub const WGPUErrorFilter_Internal: c_int = 3;
pub const WGPUErrorFilter_Force32: c_int = 2147483647;
pub const enum_WGPUErrorFilter = c_uint;
pub const WGPUErrorFilter = enum_WGPUErrorFilter;
pub const WGPUErrorType_NoError: c_int = 0;
pub const WGPUErrorType_Validation: c_int = 1;
pub const WGPUErrorType_OutOfMemory: c_int = 2;
pub const WGPUErrorType_Internal: c_int = 3;
pub const WGPUErrorType_Unknown: c_int = 4;
pub const WGPUErrorType_DeviceLost: c_int = 5;
pub const WGPUErrorType_Force32: c_int = 2147483647;
pub const enum_WGPUErrorType = c_uint;
pub const WGPUErrorType = enum_WGPUErrorType;
pub const WGPURequestDeviceStatus_Success: c_int = 0;
pub const WGPURequestDeviceStatus_Error: c_int = 1;
pub const WGPURequestDeviceStatus_Unknown: c_int = 2;
pub const WGPURequestDeviceStatus_Force32: c_int = 2147483647;
pub const enum_WGPURequestDeviceStatus = c_uint;
pub const WGPURequestDeviceStatus = enum_WGPURequestDeviceStatus;
pub const WGPUWaitStatus_Success: c_int = 0;
pub const WGPUWaitStatus_TimedOut: c_int = 1;
pub const WGPUWaitStatus_UnsupportedTimeout: c_int = 2;
pub const WGPUWaitStatus_UnsupportedCount: c_int = 3;
pub const WGPUWaitStatus_UnsupportedMixedSources: c_int = 4;
pub const WGPUWaitStatus_Unknown: c_int = 5;
pub const WGPUWaitStatus_Force32: c_int = 2147483647;
pub const enum_WGPUWaitStatus = c_uint;
pub const WGPUWaitStatus = enum_WGPUWaitStatus;
pub const WGPUBufferUsage_None: c_int = 0;
pub const WGPUBufferUsage_MapRead: c_int = 1;
pub const WGPUBufferUsage_MapWrite: c_int = 2;
pub const WGPUBufferUsage_CopySrc: c_int = 4;
pub const WGPUBufferUsage_CopyDst: c_int = 8;
pub const WGPUBufferUsage_Index: c_int = 16;
pub const WGPUBufferUsage_Vertex: c_int = 32;
pub const WGPUBufferUsage_Uniform: c_int = 64;
pub const WGPUBufferUsage_Storage: c_int = 128;
pub const WGPUBufferUsage_Indirect: c_int = 256;
pub const WGPUBufferUsage_QueryResolve: c_int = 512;
pub const WGPUBufferUsage_Force32: c_int = 2147483647;
pub const enum_WGPUBufferUsage = c_uint;
pub const WGPUBufferUsage = enum_WGPUBufferUsage;
pub const WGPUColorWriteMask_None: c_int = 0;
pub const WGPUColorWriteMask_Red: c_int = 1;
pub const WGPUColorWriteMask_Green: c_int = 2;
pub const WGPUColorWriteMask_Blue: c_int = 4;
pub const WGPUColorWriteMask_Alpha: c_int = 8;
pub const WGPUColorWriteMask_All: c_int = 15;
pub const WGPUColorWriteMask_Force32: c_int = 2147483647;
pub const enum_WGPUColorWriteMask = c_uint;
pub const WGPUColorWriteMask = enum_WGPUColorWriteMask;
pub const WGPUMapMode_None: c_int = 0;
pub const WGPUMapMode_Read: c_int = 1;
pub const WGPUMapMode_Write: c_int = 2;
pub const WGPUMapMode_Force32: c_int = 2147483647;
pub const enum_WGPUMapMode = c_uint;
pub const WGPUMapMode = enum_WGPUMapMode;
pub const WGPUMapModeFlags = WGPUFlags;
pub const WGPUShaderStage_None: c_int = 0;
pub const WGPUShaderStage_Vertex: c_int = 1;
pub const WGPUShaderStage_Fragment: c_int = 2;
pub const WGPUShaderStage_Compute: c_int = 4;
pub const WGPUShaderStage_Force32: c_int = 2147483647;
pub const enum_WGPUShaderStage = c_uint;
pub const WGPUShaderStage = enum_WGPUShaderStage;
pub const WGPUTextureUsage_None: c_int = 0;
pub const WGPUTextureUsage_CopySrc: c_int = 1;
pub const WGPUTextureUsage_CopyDst: c_int = 2;
pub const WGPUTextureUsage_TextureBinding: c_int = 4;
pub const WGPUTextureUsage_StorageBinding: c_int = 8;
pub const WGPUTextureUsage_RenderAttachment: c_int = 16;
pub const WGPUTextureUsage_Force32: c_int = 2147483647;
pub const enum_WGPUTextureUsage = c_uint;
pub const WGPUTextureUsage = enum_WGPUTextureUsage;
pub const WGPUCompilationInfoCallback = ?*const fn (WGPUCompilationInfoRequestStatus, [*c]const struct_WGPUCompilationInfo, ?*anyopaque) callconv(.c) void;
pub const WGPUCreateComputePipelineAsyncCallback = ?*const fn (WGPUCreatePipelineAsyncStatus, WGPUComputePipeline, [*c]const u8, ?*anyopaque) callconv(.c) void;
pub const WGPUCreateRenderPipelineAsyncCallback = ?*const fn (WGPUCreatePipelineAsyncStatus, WGPURenderPipeline, [*c]const u8, ?*anyopaque) callconv(.c) void;
pub const WGPUErrorCallback = ?*const fn (WGPUErrorType, [*c]const u8, ?*anyopaque) callconv(.c) void;
pub const WGPUProc = ?*const fn () callconv(.c) void;
pub const WGPURequestDeviceCallback = ?*const fn (WGPURequestDeviceStatus, WGPUDevice, [*c]const u8, ?*anyopaque) callconv(.c) void;
pub const WGPUAdapterInfo = struct_WGPUAdapterInfo;
pub const WGPUAdapterProperties = struct_WGPUAdapterProperties;
pub const WGPUBufferDescriptor = struct_WGPUBufferDescriptor;
pub const WGPUBufferMapCallbackInfo = struct_WGPUBufferMapCallbackInfo;
pub const WGPUCommandBufferDescriptor = struct_WGPUCommandBufferDescriptor;
pub const WGPUCommandEncoderDescriptor = struct_WGPUCommandEncoderDescriptor;
pub const WGPUPipelineLayoutDescriptor = struct_WGPUPipelineLayoutDescriptor;
pub const WGPUPrimitiveDepthClipControl = struct_WGPUPrimitiveDepthClipControl;
pub const WGPUQuerySetDescriptor = struct_WGPUQuerySetDescriptor;
pub const WGPUQueueWorkDoneCallbackInfo = struct_WGPUQueueWorkDoneCallbackInfo;
pub const WGPURenderBundleDescriptor = struct_WGPURenderBundleDescriptor;
pub const WGPURenderBundleEncoderDescriptor = struct_WGPURenderBundleEncoderDescriptor;
pub const WGPURenderPassDescriptorMaxDrawCount = struct_WGPURenderPassDescriptorMaxDrawCount;
pub const WGPURequestAdapterCallbackInfo = struct_WGPURequestAdapterCallbackInfo;
pub const WGPURequestAdapterOptions = struct_WGPURequestAdapterOptions;
pub const WGPUSamplerDescriptor = struct_WGPUSamplerDescriptor;
pub const WGPUShaderModuleSPIRVDescriptor = struct_WGPUShaderModuleSPIRVDescriptor;
pub const WGPUShaderModuleWGSLDescriptor = struct_WGPUShaderModuleWGSLDescriptor;
pub const WGPUShaderModuleDescriptor = struct_WGPUShaderModuleDescriptor;
pub const WGPUSurfaceCapabilities = struct_WGPUSurfaceCapabilities;
pub const WGPUSurfaceConfiguration = struct_WGPUSurfaceConfiguration;
pub const WGPUSurfaceDescriptor = struct_WGPUSurfaceDescriptor;
pub const WGPUSurfaceDescriptorFromCanvasHTMLSelector = struct_WGPUSurfaceDescriptorFromCanvasHTMLSelector;
pub const WGPUSurfaceTexture = struct_WGPUSurfaceTexture;
pub const WGPUSwapChainDescriptor = struct_WGPUSwapChainDescriptor;
pub const WGPUTextureBindingViewDimensionDescriptor = struct_WGPUTextureBindingViewDimensionDescriptor;
pub const WGPUTextureViewDescriptor = struct_WGPUTextureViewDescriptor;
pub const WGPUBindGroupDescriptor = struct_WGPUBindGroupDescriptor;
pub const WGPUCompilationInfo = struct_WGPUCompilationInfo;
pub const WGPUComputePassDescriptor = struct_WGPUComputePassDescriptor;
pub const WGPUFutureWaitInfo = struct_WGPUFutureWaitInfo;
pub const WGPUImageCopyBuffer = struct_WGPUImageCopyBuffer;
pub const WGPUImageCopyTexture = struct_WGPUImageCopyTexture;
pub const WGPUInstanceDescriptor = struct_WGPUInstanceDescriptor;
pub const WGPUSupportedLimits = struct_WGPUSupportedLimits;
pub const WGPUTextureDescriptor = struct_WGPUTextureDescriptor;
pub const WGPUBindGroupLayoutDescriptor = struct_WGPUBindGroupLayoutDescriptor;
pub const WGPUComputePipelineDescriptor = struct_WGPUComputePipelineDescriptor;
pub const WGPUDeviceDescriptor = struct_WGPUDeviceDescriptor;
pub const WGPURenderPassDescriptor = struct_WGPURenderPassDescriptor;
pub const WGPURenderPipelineDescriptor = struct_WGPURenderPipelineDescriptor;
pub const WGPUProcAdapterInfoFreeMembers = ?*const fn (WGPUAdapterInfo) callconv(.c) void;
pub const WGPUProcAdapterPropertiesFreeMembers = ?*const fn (WGPUAdapterProperties) callconv(.c) void;
pub const WGPUProcCreateInstance = ?*const fn ([*c]const WGPUInstanceDescriptor) callconv(.c) WGPUInstance;
pub const WGPUProcGetInstanceFeatures = ?*const fn ([*c]WGPUInstanceFeatures) callconv(.c) WGPUBool;
pub const WGPUProcGetProcAddress = ?*const fn (WGPUDevice, [*c]const u8) callconv(.c) WGPUProc;
pub const WGPUProcSurfaceCapabilitiesFreeMembers = ?*const fn (WGPUSurfaceCapabilities) callconv(.c) void;
pub const WGPUProcAdapterEnumerateFeatures = ?*const fn (WGPUAdapter, [*c]WGPUFeatureName) callconv(.c) usize;
pub const WGPUProcAdapterGetInfo = ?*const fn (WGPUAdapter, [*c]WGPUAdapterInfo) callconv(.c) void;
pub const WGPUProcAdapterGetLimits = ?*const fn (WGPUAdapter, [*c]WGPUSupportedLimits) callconv(.c) WGPUBool;
pub const WGPUProcAdapterGetProperties = ?*const fn (WGPUAdapter, [*c]WGPUAdapterProperties) callconv(.c) void;
pub const WGPUProcAdapterHasFeature = ?*const fn (WGPUAdapter, WGPUFeatureName) callconv(.c) WGPUBool;
pub const WGPUProcAdapterRequestDevice = ?*const fn (WGPUAdapter, [*c]const WGPUDeviceDescriptor, WGPURequestDeviceCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcAdapterReference = ?*const fn (WGPUAdapter) callconv(.c) void;
pub const WGPUProcAdapterRelease = ?*const fn (WGPUAdapter) callconv(.c) void;
pub const WGPUProcBindGroupSetLabel = ?*const fn (WGPUBindGroup, [*c]const u8) callconv(.c) void;
pub const WGPUProcBindGroupReference = ?*const fn (WGPUBindGroup) callconv(.c) void;
pub const WGPUProcBindGroupRelease = ?*const fn (WGPUBindGroup) callconv(.c) void;
pub const WGPUProcBindGroupLayoutSetLabel = ?*const fn (WGPUBindGroupLayout, [*c]const u8) callconv(.c) void;
pub const WGPUProcBindGroupLayoutReference = ?*const fn (WGPUBindGroupLayout) callconv(.c) void;
pub const WGPUProcBindGroupLayoutRelease = ?*const fn (WGPUBindGroupLayout) callconv(.c) void;
pub const WGPUProcBufferDestroy = ?*const fn (WGPUBuffer) callconv(.c) void;
pub const WGPUProcBufferGetConstMappedRange = ?*const fn (WGPUBuffer, usize, usize) callconv(.c) ?*const anyopaque;
pub const WGPUProcBufferGetMapState = ?*const fn (WGPUBuffer) callconv(.c) WGPUBufferMapState;
pub const WGPUProcBufferGetMappedRange = ?*const fn (WGPUBuffer, usize, usize) callconv(.c) ?*anyopaque;
pub const WGPUProcBufferGetSize = ?*const fn (WGPUBuffer) callconv(.c) u64;
pub const WGPUProcBufferGetUsage = ?*const fn (WGPUBuffer) callconv(.c) WGPUBufferUsageFlags;
pub const WGPUProcBufferMapAsync = ?*const fn (WGPUBuffer, WGPUMapModeFlags, usize, usize, WGPUBufferMapCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcBufferSetLabel = ?*const fn (WGPUBuffer, [*c]const u8) callconv(.c) void;
pub const WGPUProcBufferUnmap = ?*const fn (WGPUBuffer) callconv(.c) void;
pub const WGPUProcBufferReference = ?*const fn (WGPUBuffer) callconv(.c) void;
pub const WGPUProcBufferRelease = ?*const fn (WGPUBuffer) callconv(.c) void;
pub const WGPUProcCommandBufferSetLabel = ?*const fn (WGPUCommandBuffer, [*c]const u8) callconv(.c) void;
pub const WGPUProcCommandBufferReference = ?*const fn (WGPUCommandBuffer) callconv(.c) void;
pub const WGPUProcCommandBufferRelease = ?*const fn (WGPUCommandBuffer) callconv(.c) void;
pub const WGPUProcCommandEncoderBeginComputePass = ?*const fn (WGPUCommandEncoder, [*c]const WGPUComputePassDescriptor) callconv(.c) WGPUComputePassEncoder;
pub const WGPUProcCommandEncoderBeginRenderPass = ?*const fn (WGPUCommandEncoder, [*c]const WGPURenderPassDescriptor) callconv(.c) WGPURenderPassEncoder;
pub const WGPUProcCommandEncoderClearBuffer = ?*const fn (WGPUCommandEncoder, WGPUBuffer, u64, u64) callconv(.c) void;
pub const WGPUProcCommandEncoderCopyBufferToBuffer = ?*const fn (WGPUCommandEncoder, WGPUBuffer, u64, WGPUBuffer, u64, u64) callconv(.c) void;
pub const WGPUProcCommandEncoderCopyBufferToTexture = ?*const fn (WGPUCommandEncoder, [*c]const WGPUImageCopyBuffer, [*c]const WGPUImageCopyTexture, [*c]const WGPUExtent3D) callconv(.c) void;
pub const WGPUProcCommandEncoderCopyTextureToBuffer = ?*const fn (WGPUCommandEncoder, [*c]const WGPUImageCopyTexture, [*c]const WGPUImageCopyBuffer, [*c]const WGPUExtent3D) callconv(.c) void;
pub const WGPUProcCommandEncoderCopyTextureToTexture = ?*const fn (WGPUCommandEncoder, [*c]const WGPUImageCopyTexture, [*c]const WGPUImageCopyTexture, [*c]const WGPUExtent3D) callconv(.c) void;
pub const WGPUProcCommandEncoderFinish = ?*const fn (WGPUCommandEncoder, [*c]const WGPUCommandBufferDescriptor) callconv(.c) WGPUCommandBuffer;
pub const WGPUProcCommandEncoderInsertDebugMarker = ?*const fn (WGPUCommandEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcCommandEncoderPopDebugGroup = ?*const fn (WGPUCommandEncoder) callconv(.c) void;
pub const WGPUProcCommandEncoderPushDebugGroup = ?*const fn (WGPUCommandEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcCommandEncoderResolveQuerySet = ?*const fn (WGPUCommandEncoder, WGPUQuerySet, u32, u32, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcCommandEncoderSetLabel = ?*const fn (WGPUCommandEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcCommandEncoderWriteTimestamp = ?*const fn (WGPUCommandEncoder, WGPUQuerySet, u32) callconv(.c) void;
pub const WGPUProcCommandEncoderReference = ?*const fn (WGPUCommandEncoder) callconv(.c) void;
pub const WGPUProcCommandEncoderRelease = ?*const fn (WGPUCommandEncoder) callconv(.c) void;
pub const WGPUProcComputePassEncoderDispatchWorkgroups = ?*const fn (WGPUComputePassEncoder, u32, u32, u32) callconv(.c) void;
pub const WGPUProcComputePassEncoderDispatchWorkgroupsIndirect = ?*const fn (WGPUComputePassEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcComputePassEncoderEnd = ?*const fn (WGPUComputePassEncoder) callconv(.c) void;
pub const WGPUProcComputePassEncoderInsertDebugMarker = ?*const fn (WGPUComputePassEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcComputePassEncoderPopDebugGroup = ?*const fn (WGPUComputePassEncoder) callconv(.c) void;
pub const WGPUProcComputePassEncoderPushDebugGroup = ?*const fn (WGPUComputePassEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcComputePassEncoderSetBindGroup = ?*const fn (WGPUComputePassEncoder, u32, WGPUBindGroup, usize, [*c]const u32) callconv(.c) void;
pub const WGPUProcComputePassEncoderSetLabel = ?*const fn (WGPUComputePassEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcComputePassEncoderSetPipeline = ?*const fn (WGPUComputePassEncoder, WGPUComputePipeline) callconv(.c) void;
pub const WGPUProcComputePassEncoderWriteTimestamp = ?*const fn (WGPUComputePassEncoder, WGPUQuerySet, u32) callconv(.c) void;
pub const WGPUProcComputePassEncoderReference = ?*const fn (WGPUComputePassEncoder) callconv(.c) void;
pub const WGPUProcComputePassEncoderRelease = ?*const fn (WGPUComputePassEncoder) callconv(.c) void;
pub const WGPUProcComputePipelineGetBindGroupLayout = ?*const fn (WGPUComputePipeline, u32) callconv(.c) WGPUBindGroupLayout;
pub const WGPUProcComputePipelineSetLabel = ?*const fn (WGPUComputePipeline, [*c]const u8) callconv(.c) void;
pub const WGPUProcComputePipelineReference = ?*const fn (WGPUComputePipeline) callconv(.c) void;
pub const WGPUProcComputePipelineRelease = ?*const fn (WGPUComputePipeline) callconv(.c) void;
pub const WGPUProcDeviceCreateBindGroup = ?*const fn (WGPUDevice, [*c]const WGPUBindGroupDescriptor) callconv(.c) WGPUBindGroup;
pub const WGPUProcDeviceCreateBindGroupLayout = ?*const fn (WGPUDevice, [*c]const WGPUBindGroupLayoutDescriptor) callconv(.c) WGPUBindGroupLayout;
pub const WGPUProcDeviceCreateBuffer = ?*const fn (WGPUDevice, [*c]const WGPUBufferDescriptor) callconv(.c) WGPUBuffer;
pub const WGPUProcDeviceCreateCommandEncoder = ?*const fn (WGPUDevice, [*c]const WGPUCommandEncoderDescriptor) callconv(.c) WGPUCommandEncoder;
pub const WGPUProcDeviceCreateComputePipeline = ?*const fn (WGPUDevice, [*c]const WGPUComputePipelineDescriptor) callconv(.c) WGPUComputePipeline;
pub const WGPUProcDeviceCreateComputePipelineAsync = ?*const fn (WGPUDevice, [*c]const WGPUComputePipelineDescriptor, WGPUCreateComputePipelineAsyncCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcDeviceCreatePipelineLayout = ?*const fn (WGPUDevice, [*c]const WGPUPipelineLayoutDescriptor) callconv(.c) WGPUPipelineLayout;
pub const WGPUProcDeviceCreateQuerySet = ?*const fn (WGPUDevice, [*c]const WGPUQuerySetDescriptor) callconv(.c) WGPUQuerySet;
pub const WGPUProcDeviceCreateRenderBundleEncoder = ?*const fn (WGPUDevice, [*c]const WGPURenderBundleEncoderDescriptor) callconv(.c) WGPURenderBundleEncoder;
pub const WGPUProcDeviceCreateRenderPipeline = ?*const fn (WGPUDevice, [*c]const WGPURenderPipelineDescriptor) callconv(.c) WGPURenderPipeline;
pub const WGPUProcDeviceCreateRenderPipelineAsync = ?*const fn (WGPUDevice, [*c]const WGPURenderPipelineDescriptor, WGPUCreateRenderPipelineAsyncCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcDeviceCreateSampler = ?*const fn (WGPUDevice, [*c]const WGPUSamplerDescriptor) callconv(.c) WGPUSampler;
pub const WGPUProcDeviceCreateShaderModule = ?*const fn (WGPUDevice, [*c]const WGPUShaderModuleDescriptor) callconv(.c) WGPUShaderModule;
pub const WGPUProcDeviceCreateSwapChain = ?*const fn (WGPUDevice, WGPUSurface, [*c]const WGPUSwapChainDescriptor) callconv(.c) WGPUSwapChain;
pub const WGPUProcDeviceCreateTexture = ?*const fn (WGPUDevice, [*c]const WGPUTextureDescriptor) callconv(.c) WGPUTexture;
pub const WGPUProcDeviceDestroy = ?*const fn (WGPUDevice) callconv(.c) void;
pub const WGPUProcDeviceEnumerateFeatures = ?*const fn (WGPUDevice, [*c]WGPUFeatureName) callconv(.c) usize;
pub const WGPUProcDeviceGetLimits = ?*const fn (WGPUDevice, [*c]WGPUSupportedLimits) callconv(.c) WGPUBool;
pub const WGPUProcDeviceGetQueue = ?*const fn (WGPUDevice) callconv(.c) WGPUQueue;
pub const WGPUProcDeviceHasFeature = ?*const fn (WGPUDevice, WGPUFeatureName) callconv(.c) WGPUBool;
pub const WGPUProcDevicePopErrorScope = ?*const fn (WGPUDevice, WGPUErrorCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcDevicePushErrorScope = ?*const fn (WGPUDevice, WGPUErrorFilter) callconv(.c) void;
pub const WGPUProcDeviceSetLabel = ?*const fn (WGPUDevice, [*c]const u8) callconv(.c) void;
pub const WGPUProcDeviceSetUncapturedErrorCallback = ?*const fn (WGPUDevice, WGPUErrorCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcDeviceReference = ?*const fn (WGPUDevice) callconv(.c) void;
pub const WGPUProcDeviceRelease = ?*const fn (WGPUDevice) callconv(.c) void;
pub const WGPUProcInstanceCreateSurface = ?*const fn (WGPUInstance, [*c]const WGPUSurfaceDescriptor) callconv(.c) WGPUSurface;
pub const WGPUProcInstanceHasWGSLLanguageFeature = ?*const fn (WGPUInstance, WGPUWGSLFeatureName) callconv(.c) WGPUBool;
pub const WGPUProcInstanceProcessEvents = ?*const fn (WGPUInstance) callconv(.c) void;
pub const WGPUProcInstanceRequestAdapter = ?*const fn (WGPUInstance, [*c]const WGPURequestAdapterOptions, WGPURequestAdapterCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcInstanceWaitAny = ?*const fn (WGPUInstance, usize, [*c]WGPUFutureWaitInfo, u64) callconv(.c) WGPUWaitStatus;
pub const WGPUProcInstanceReference = ?*const fn (WGPUInstance) callconv(.c) void;
pub const WGPUProcInstanceRelease = ?*const fn (WGPUInstance) callconv(.c) void;
pub const WGPUProcPipelineLayoutSetLabel = ?*const fn (WGPUPipelineLayout, [*c]const u8) callconv(.c) void;
pub const WGPUProcPipelineLayoutReference = ?*const fn (WGPUPipelineLayout) callconv(.c) void;
pub const WGPUProcPipelineLayoutRelease = ?*const fn (WGPUPipelineLayout) callconv(.c) void;
pub const WGPUProcQuerySetDestroy = ?*const fn (WGPUQuerySet) callconv(.c) void;
pub const WGPUProcQuerySetGetCount = ?*const fn (WGPUQuerySet) callconv(.c) u32;
pub const WGPUProcQuerySetGetType = ?*const fn (WGPUQuerySet) callconv(.c) WGPUQueryType;
pub const WGPUProcQuerySetSetLabel = ?*const fn (WGPUQuerySet, [*c]const u8) callconv(.c) void;
pub const WGPUProcQuerySetReference = ?*const fn (WGPUQuerySet) callconv(.c) void;
pub const WGPUProcQuerySetRelease = ?*const fn (WGPUQuerySet) callconv(.c) void;
pub const WGPUProcQueueOnSubmittedWorkDone = ?*const fn (WGPUQueue, WGPUQueueWorkDoneCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcQueueSetLabel = ?*const fn (WGPUQueue, [*c]const u8) callconv(.c) void;
pub const WGPUProcQueueSubmit = ?*const fn (WGPUQueue, usize, [*c]const WGPUCommandBuffer) callconv(.c) void;
pub const WGPUProcQueueWriteBuffer = ?*const fn (WGPUQueue, WGPUBuffer, u64, ?*const anyopaque, usize) callconv(.c) void;
pub const WGPUProcQueueWriteTexture = ?*const fn (WGPUQueue, [*c]const WGPUImageCopyTexture, ?*const anyopaque, usize, [*c]const WGPUTextureDataLayout, [*c]const WGPUExtent3D) callconv(.c) void;
pub const WGPUProcQueueReference = ?*const fn (WGPUQueue) callconv(.c) void;
pub const WGPUProcQueueRelease = ?*const fn (WGPUQueue) callconv(.c) void;
pub const WGPUProcRenderBundleSetLabel = ?*const fn (WGPURenderBundle, [*c]const u8) callconv(.c) void;
pub const WGPUProcRenderBundleReference = ?*const fn (WGPURenderBundle) callconv(.c) void;
pub const WGPUProcRenderBundleRelease = ?*const fn (WGPURenderBundle) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderDraw = ?*const fn (WGPURenderBundleEncoder, u32, u32, u32, u32) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderDrawIndexed = ?*const fn (WGPURenderBundleEncoder, u32, u32, u32, i32, u32) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderDrawIndexedIndirect = ?*const fn (WGPURenderBundleEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderDrawIndirect = ?*const fn (WGPURenderBundleEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderFinish = ?*const fn (WGPURenderBundleEncoder, [*c]const WGPURenderBundleDescriptor) callconv(.c) WGPURenderBundle;
pub const WGPUProcRenderBundleEncoderInsertDebugMarker = ?*const fn (WGPURenderBundleEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderPopDebugGroup = ?*const fn (WGPURenderBundleEncoder) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderPushDebugGroup = ?*const fn (WGPURenderBundleEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetBindGroup = ?*const fn (WGPURenderBundleEncoder, u32, WGPUBindGroup, usize, [*c]const u32) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetIndexBuffer = ?*const fn (WGPURenderBundleEncoder, WGPUBuffer, WGPUIndexFormat, u64, u64) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetLabel = ?*const fn (WGPURenderBundleEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetPipeline = ?*const fn (WGPURenderBundleEncoder, WGPURenderPipeline) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderSetVertexBuffer = ?*const fn (WGPURenderBundleEncoder, u32, WGPUBuffer, u64, u64) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderReference = ?*const fn (WGPURenderBundleEncoder) callconv(.c) void;
pub const WGPUProcRenderBundleEncoderRelease = ?*const fn (WGPURenderBundleEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderBeginOcclusionQuery = ?*const fn (WGPURenderPassEncoder, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderDraw = ?*const fn (WGPURenderPassEncoder, u32, u32, u32, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderDrawIndexed = ?*const fn (WGPURenderPassEncoder, u32, u32, u32, i32, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderDrawIndexedIndirect = ?*const fn (WGPURenderPassEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderDrawIndirect = ?*const fn (WGPURenderPassEncoder, WGPUBuffer, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderEnd = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderEndOcclusionQuery = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderExecuteBundles = ?*const fn (WGPURenderPassEncoder, usize, [*c]const WGPURenderBundle) callconv(.c) void;
pub const WGPUProcRenderPassEncoderInsertDebugMarker = ?*const fn (WGPURenderPassEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcRenderPassEncoderPopDebugGroup = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderPushDebugGroup = ?*const fn (WGPURenderPassEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetBindGroup = ?*const fn (WGPURenderPassEncoder, u32, WGPUBindGroup, usize, [*c]const u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetBlendConstant = ?*const fn (WGPURenderPassEncoder, [*c]const WGPUColor) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetIndexBuffer = ?*const fn (WGPURenderPassEncoder, WGPUBuffer, WGPUIndexFormat, u64, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetLabel = ?*const fn (WGPURenderPassEncoder, [*c]const u8) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetPipeline = ?*const fn (WGPURenderPassEncoder, WGPURenderPipeline) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetScissorRect = ?*const fn (WGPURenderPassEncoder, u32, u32, u32, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetStencilReference = ?*const fn (WGPURenderPassEncoder, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetVertexBuffer = ?*const fn (WGPURenderPassEncoder, u32, WGPUBuffer, u64, u64) callconv(.c) void;
pub const WGPUProcRenderPassEncoderSetViewport = ?*const fn (WGPURenderPassEncoder, f32, f32, f32, f32, f32, f32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderWriteTimestamp = ?*const fn (WGPURenderPassEncoder, WGPUQuerySet, u32) callconv(.c) void;
pub const WGPUProcRenderPassEncoderReference = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPassEncoderRelease = ?*const fn (WGPURenderPassEncoder) callconv(.c) void;
pub const WGPUProcRenderPipelineGetBindGroupLayout = ?*const fn (WGPURenderPipeline, u32) callconv(.c) WGPUBindGroupLayout;
pub const WGPUProcRenderPipelineSetLabel = ?*const fn (WGPURenderPipeline, [*c]const u8) callconv(.c) void;
pub const WGPUProcRenderPipelineReference = ?*const fn (WGPURenderPipeline) callconv(.c) void;
pub const WGPUProcRenderPipelineRelease = ?*const fn (WGPURenderPipeline) callconv(.c) void;
pub const WGPUProcSamplerSetLabel = ?*const fn (WGPUSampler, [*c]const u8) callconv(.c) void;
pub const WGPUProcSamplerReference = ?*const fn (WGPUSampler) callconv(.c) void;
pub const WGPUProcSamplerRelease = ?*const fn (WGPUSampler) callconv(.c) void;
pub const WGPUProcShaderModuleGetCompilationInfo = ?*const fn (WGPUShaderModule, WGPUCompilationInfoCallback, ?*anyopaque) callconv(.c) void;
pub const WGPUProcShaderModuleSetLabel = ?*const fn (WGPUShaderModule, [*c]const u8) callconv(.c) void;
pub const WGPUProcShaderModuleReference = ?*const fn (WGPUShaderModule) callconv(.c) void;
pub const WGPUProcShaderModuleRelease = ?*const fn (WGPUShaderModule) callconv(.c) void;
pub const WGPUProcSurfaceConfigure = ?*const fn (WGPUSurface, [*c]const WGPUSurfaceConfiguration) callconv(.c) void;
pub const WGPUProcSurfaceGetCapabilities = ?*const fn (WGPUSurface, WGPUAdapter, [*c]WGPUSurfaceCapabilities) callconv(.c) void;
pub const WGPUProcSurfaceGetCurrentTexture = ?*const fn (WGPUSurface, [*c]WGPUSurfaceTexture) callconv(.c) void;
pub const WGPUProcSurfaceGetPreferredFormat = ?*const fn (WGPUSurface, WGPUAdapter) callconv(.c) WGPUTextureFormat;
pub const WGPUProcSurfacePresent = ?*const fn (WGPUSurface) callconv(.c) void;
pub const WGPUProcSurfaceUnconfigure = ?*const fn (WGPUSurface) callconv(.c) void;
pub const WGPUProcSurfaceReference = ?*const fn (WGPUSurface) callconv(.c) void;
pub const WGPUProcSurfaceRelease = ?*const fn (WGPUSurface) callconv(.c) void;
pub const WGPUProcSwapChainGetCurrentTexture = ?*const fn (WGPUSwapChain) callconv(.c) WGPUTexture;
pub const WGPUProcSwapChainGetCurrentTextureView = ?*const fn (WGPUSwapChain) callconv(.c) WGPUTextureView;
pub const WGPUProcSwapChainPresent = ?*const fn (WGPUSwapChain) callconv(.c) void;
pub const WGPUProcSwapChainReference = ?*const fn (WGPUSwapChain) callconv(.c) void;
pub const WGPUProcSwapChainRelease = ?*const fn (WGPUSwapChain) callconv(.c) void;
pub const WGPUProcTextureCreateView = ?*const fn (WGPUTexture, [*c]const WGPUTextureViewDescriptor) callconv(.c) WGPUTextureView;
pub const WGPUProcTextureDestroy = ?*const fn (WGPUTexture) callconv(.c) void;
pub const WGPUProcTextureGetDepthOrArrayLayers = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureGetDimension = ?*const fn (WGPUTexture) callconv(.c) WGPUTextureDimension;
pub const WGPUProcTextureGetFormat = ?*const fn (WGPUTexture) callconv(.c) WGPUTextureFormat;
pub const WGPUProcTextureGetHeight = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureGetMipLevelCount = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureGetSampleCount = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureGetUsage = ?*const fn (WGPUTexture) callconv(.c) WGPUTextureUsageFlags;
pub const WGPUProcTextureGetWidth = ?*const fn (WGPUTexture) callconv(.c) u32;
pub const WGPUProcTextureSetLabel = ?*const fn (WGPUTexture, [*c]const u8) callconv(.c) void;
pub const WGPUProcTextureReference = ?*const fn (WGPUTexture) callconv(.c) void;
pub const WGPUProcTextureRelease = ?*const fn (WGPUTexture) callconv(.c) void;
pub const WGPUProcTextureViewSetLabel = ?*const fn (WGPUTextureView, [*c]const u8) callconv(.c) void;
pub const WGPUProcTextureViewReference = ?*const fn (WGPUTextureView) callconv(.c) void;
pub const WGPUProcTextureViewRelease = ?*const fn (WGPUTextureView) callconv(.c) void;
pub extern fn wgpuAdapterInfoFreeMembers(value: WGPUAdapterInfo) void;
pub extern fn wgpuAdapterPropertiesFreeMembers(value: WGPUAdapterProperties) void;
pub extern fn wgpuCreateInstance(descriptor: [*c]const WGPUInstanceDescriptor) WGPUInstance;
pub extern fn wgpuGetInstanceFeatures(features: [*c]WGPUInstanceFeatures) WGPUBool;
pub extern fn wgpuGetProcAddress(device: WGPUDevice, procName: [*c]const u8) WGPUProc;
pub extern fn wgpuSurfaceCapabilitiesFreeMembers(value: WGPUSurfaceCapabilities) void;
pub extern fn wgpuAdapterEnumerateFeatures(adapter: WGPUAdapter, features: [*c]WGPUFeatureName) usize;
pub extern fn wgpuAdapterGetInfo(adapter: WGPUAdapter, info: [*c]WGPUAdapterInfo) void;
pub extern fn wgpuAdapterGetLimits(adapter: WGPUAdapter, limits: [*c]WGPUSupportedLimits) WGPUBool;
pub extern fn wgpuAdapterGetProperties(adapter: WGPUAdapter, properties: [*c]WGPUAdapterProperties) void;
pub extern fn wgpuAdapterHasFeature(adapter: WGPUAdapter, feature: WGPUFeatureName) WGPUBool;
pub extern fn wgpuAdapterRequestDevice(adapter: WGPUAdapter, descriptor: [*c]const WGPUDeviceDescriptor, callback: WGPURequestDeviceCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuAdapterReference(adapter: WGPUAdapter) void;
pub extern fn wgpuAdapterRelease(adapter: WGPUAdapter) void;
pub extern fn wgpuBindGroupSetLabel(bindGroup: WGPUBindGroup, label: [*c]const u8) void;
pub extern fn wgpuBindGroupReference(bindGroup: WGPUBindGroup) void;
pub extern fn wgpuBindGroupRelease(bindGroup: WGPUBindGroup) void;
pub extern fn wgpuBindGroupLayoutSetLabel(bindGroupLayout: WGPUBindGroupLayout, label: [*c]const u8) void;
pub extern fn wgpuBindGroupLayoutReference(bindGroupLayout: WGPUBindGroupLayout) void;
pub extern fn wgpuBindGroupLayoutRelease(bindGroupLayout: WGPUBindGroupLayout) void;
pub extern fn wgpuBufferDestroy(buffer: WGPUBuffer) void;
pub extern fn wgpuBufferGetConstMappedRange(buffer: WGPUBuffer, offset: usize, size: usize) ?*const anyopaque;
pub extern fn wgpuBufferGetMapState(buffer: WGPUBuffer) WGPUBufferMapState;
pub extern fn wgpuBufferGetMappedRange(buffer: WGPUBuffer, offset: usize, size: usize) ?*anyopaque;
pub extern fn wgpuBufferGetSize(buffer: WGPUBuffer) u64;
pub extern fn wgpuBufferGetUsage(buffer: WGPUBuffer) WGPUBufferUsageFlags;
pub extern fn wgpuBufferMapAsync(buffer: WGPUBuffer, mode: WGPUMapModeFlags, offset: usize, size: usize, callback: WGPUBufferMapCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuBufferSetLabel(buffer: WGPUBuffer, label: [*c]const u8) void;
pub extern fn wgpuBufferUnmap(buffer: WGPUBuffer) void;
pub extern fn wgpuBufferReference(buffer: WGPUBuffer) void;
pub extern fn wgpuBufferRelease(buffer: WGPUBuffer) void;
pub extern fn wgpuCommandBufferSetLabel(commandBuffer: WGPUCommandBuffer, label: [*c]const u8) void;
pub extern fn wgpuCommandBufferReference(commandBuffer: WGPUCommandBuffer) void;
pub extern fn wgpuCommandBufferRelease(commandBuffer: WGPUCommandBuffer) void;
pub extern fn wgpuCommandEncoderBeginComputePass(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPUComputePassDescriptor) WGPUComputePassEncoder;
pub extern fn wgpuCommandEncoderBeginRenderPass(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPURenderPassDescriptor) WGPURenderPassEncoder;
pub extern fn wgpuCommandEncoderClearBuffer(commandEncoder: WGPUCommandEncoder, buffer: WGPUBuffer, offset: u64, size: u64) void;
pub extern fn wgpuCommandEncoderCopyBufferToBuffer(commandEncoder: WGPUCommandEncoder, source: WGPUBuffer, sourceOffset: u64, destination: WGPUBuffer, destinationOffset: u64, size: u64) void;
pub extern fn wgpuCommandEncoderCopyBufferToTexture(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUImageCopyBuffer, destination: [*c]const WGPUImageCopyTexture, copySize: [*c]const WGPUExtent3D) void;
pub extern fn wgpuCommandEncoderCopyTextureToBuffer(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUImageCopyTexture, destination: [*c]const WGPUImageCopyBuffer, copySize: [*c]const WGPUExtent3D) void;
pub extern fn wgpuCommandEncoderCopyTextureToTexture(commandEncoder: WGPUCommandEncoder, source: [*c]const WGPUImageCopyTexture, destination: [*c]const WGPUImageCopyTexture, copySize: [*c]const WGPUExtent3D) void;
pub extern fn wgpuCommandEncoderFinish(commandEncoder: WGPUCommandEncoder, descriptor: [*c]const WGPUCommandBufferDescriptor) WGPUCommandBuffer;
pub extern fn wgpuCommandEncoderInsertDebugMarker(commandEncoder: WGPUCommandEncoder, markerLabel: [*c]const u8) void;
pub extern fn wgpuCommandEncoderPopDebugGroup(commandEncoder: WGPUCommandEncoder) void;
pub extern fn wgpuCommandEncoderPushDebugGroup(commandEncoder: WGPUCommandEncoder, groupLabel: [*c]const u8) void;
pub extern fn wgpuCommandEncoderResolveQuerySet(commandEncoder: WGPUCommandEncoder, querySet: WGPUQuerySet, firstQuery: u32, queryCount: u32, destination: WGPUBuffer, destinationOffset: u64) void;
pub extern fn wgpuCommandEncoderSetLabel(commandEncoder: WGPUCommandEncoder, label: [*c]const u8) void;
pub extern fn wgpuCommandEncoderWriteTimestamp(commandEncoder: WGPUCommandEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;
pub extern fn wgpuCommandEncoderReference(commandEncoder: WGPUCommandEncoder) void;
pub extern fn wgpuCommandEncoderRelease(commandEncoder: WGPUCommandEncoder) void;
pub extern fn wgpuComputePassEncoderDispatchWorkgroups(computePassEncoder: WGPUComputePassEncoder, workgroupCountX: u32, workgroupCountY: u32, workgroupCountZ: u32) void;
pub extern fn wgpuComputePassEncoderDispatchWorkgroupsIndirect(computePassEncoder: WGPUComputePassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuComputePassEncoderEnd(computePassEncoder: WGPUComputePassEncoder) void;
pub extern fn wgpuComputePassEncoderInsertDebugMarker(computePassEncoder: WGPUComputePassEncoder, markerLabel: [*c]const u8) void;
pub extern fn wgpuComputePassEncoderPopDebugGroup(computePassEncoder: WGPUComputePassEncoder) void;
pub extern fn wgpuComputePassEncoderPushDebugGroup(computePassEncoder: WGPUComputePassEncoder, groupLabel: [*c]const u8) void;
pub extern fn wgpuComputePassEncoderSetBindGroup(computePassEncoder: WGPUComputePassEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;
pub extern fn wgpuComputePassEncoderSetLabel(computePassEncoder: WGPUComputePassEncoder, label: [*c]const u8) void;
pub extern fn wgpuComputePassEncoderSetPipeline(computePassEncoder: WGPUComputePassEncoder, pipeline: WGPUComputePipeline) void;
pub extern fn wgpuComputePassEncoderWriteTimestamp(computePassEncoder: WGPUComputePassEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;
pub extern fn wgpuComputePassEncoderReference(computePassEncoder: WGPUComputePassEncoder) void;
pub extern fn wgpuComputePassEncoderRelease(computePassEncoder: WGPUComputePassEncoder) void;
pub extern fn wgpuComputePipelineGetBindGroupLayout(computePipeline: WGPUComputePipeline, groupIndex: u32) WGPUBindGroupLayout;
pub extern fn wgpuComputePipelineSetLabel(computePipeline: WGPUComputePipeline, label: [*c]const u8) void;
pub extern fn wgpuComputePipelineReference(computePipeline: WGPUComputePipeline) void;
pub extern fn wgpuComputePipelineRelease(computePipeline: WGPUComputePipeline) void;
pub extern fn wgpuDeviceCreateBindGroup(device: WGPUDevice, descriptor: [*c]const WGPUBindGroupDescriptor) WGPUBindGroup;
pub extern fn wgpuDeviceCreateBindGroupLayout(device: WGPUDevice, descriptor: [*c]const WGPUBindGroupLayoutDescriptor) WGPUBindGroupLayout;
pub extern fn wgpuDeviceCreateBuffer(device: WGPUDevice, descriptor: [*c]const WGPUBufferDescriptor) WGPUBuffer;
pub extern fn wgpuDeviceCreateCommandEncoder(device: WGPUDevice, descriptor: [*c]const WGPUCommandEncoderDescriptor) WGPUCommandEncoder;
pub extern fn wgpuDeviceCreateComputePipeline(device: WGPUDevice, descriptor: [*c]const WGPUComputePipelineDescriptor) WGPUComputePipeline;
pub extern fn wgpuDeviceCreateComputePipelineAsync(device: WGPUDevice, descriptor: [*c]const WGPUComputePipelineDescriptor, callback: WGPUCreateComputePipelineAsyncCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuDeviceCreatePipelineLayout(device: WGPUDevice, descriptor: [*c]const WGPUPipelineLayoutDescriptor) WGPUPipelineLayout;
pub extern fn wgpuDeviceCreateQuerySet(device: WGPUDevice, descriptor: [*c]const WGPUQuerySetDescriptor) WGPUQuerySet;
pub extern fn wgpuDeviceCreateRenderBundleEncoder(device: WGPUDevice, descriptor: [*c]const WGPURenderBundleEncoderDescriptor) WGPURenderBundleEncoder;
pub extern fn wgpuDeviceCreateRenderPipeline(device: WGPUDevice, descriptor: [*c]const WGPURenderPipelineDescriptor) WGPURenderPipeline;
pub extern fn wgpuDeviceCreateRenderPipelineAsync(device: WGPUDevice, descriptor: [*c]const WGPURenderPipelineDescriptor, callback: WGPUCreateRenderPipelineAsyncCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuDeviceCreateSampler(device: WGPUDevice, descriptor: [*c]const WGPUSamplerDescriptor) WGPUSampler;
pub extern fn wgpuDeviceCreateShaderModule(device: WGPUDevice, descriptor: [*c]const WGPUShaderModuleDescriptor) WGPUShaderModule;
pub extern fn wgpuDeviceCreateSwapChain(device: WGPUDevice, surface: WGPUSurface, descriptor: [*c]const WGPUSwapChainDescriptor) WGPUSwapChain;
pub extern fn wgpuDeviceCreateTexture(device: WGPUDevice, descriptor: [*c]const WGPUTextureDescriptor) WGPUTexture;
pub extern fn wgpuDeviceDestroy(device: WGPUDevice) void;
pub extern fn wgpuDeviceEnumerateFeatures(device: WGPUDevice, features: [*c]WGPUFeatureName) usize;
pub extern fn wgpuDeviceGetLimits(device: WGPUDevice, limits: [*c]WGPUSupportedLimits) WGPUBool;
pub extern fn wgpuDeviceGetQueue(device: WGPUDevice) WGPUQueue;
pub extern fn wgpuDeviceHasFeature(device: WGPUDevice, feature: WGPUFeatureName) WGPUBool;
pub extern fn wgpuDevicePopErrorScope(device: WGPUDevice, callback: WGPUErrorCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuDevicePushErrorScope(device: WGPUDevice, filter: WGPUErrorFilter) void;
pub extern fn wgpuDeviceSetLabel(device: WGPUDevice, label: [*c]const u8) void;
pub extern fn wgpuDeviceSetUncapturedErrorCallback(device: WGPUDevice, callback: WGPUErrorCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuDeviceReference(device: WGPUDevice) void;
pub extern fn wgpuDeviceRelease(device: WGPUDevice) void;
pub extern fn wgpuInstanceCreateSurface(instance: WGPUInstance, descriptor: [*c]const WGPUSurfaceDescriptor) WGPUSurface;
pub extern fn wgpuInstanceHasWGSLLanguageFeature(instance: WGPUInstance, feature: WGPUWGSLFeatureName) WGPUBool;
pub extern fn wgpuInstanceProcessEvents(instance: WGPUInstance) void;
pub extern fn wgpuInstanceRequestAdapter(instance: WGPUInstance, options: [*c]const WGPURequestAdapterOptions, callback: WGPURequestAdapterCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuInstanceReference(instance: WGPUInstance) void;
pub extern fn wgpuInstanceRelease(instance: WGPUInstance) void;
pub extern fn wgpuPipelineLayoutSetLabel(pipelineLayout: WGPUPipelineLayout, label: [*c]const u8) void;
pub extern fn wgpuPipelineLayoutReference(pipelineLayout: WGPUPipelineLayout) void;
pub extern fn wgpuPipelineLayoutRelease(pipelineLayout: WGPUPipelineLayout) void;
pub extern fn wgpuQuerySetDestroy(querySet: WGPUQuerySet) void;
pub extern fn wgpuQuerySetGetCount(querySet: WGPUQuerySet) u32;
pub extern fn wgpuQuerySetGetType(querySet: WGPUQuerySet) WGPUQueryType;
pub extern fn wgpuQuerySetSetLabel(querySet: WGPUQuerySet, label: [*c]const u8) void;
pub extern fn wgpuQuerySetReference(querySet: WGPUQuerySet) void;
pub extern fn wgpuQuerySetRelease(querySet: WGPUQuerySet) void;
pub extern fn wgpuQueueOnSubmittedWorkDone(queue: WGPUQueue, callback: WGPUQueueWorkDoneCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuQueueSetLabel(queue: WGPUQueue, label: [*c]const u8) void;
pub extern fn wgpuQueueSubmit(queue: WGPUQueue, commandCount: usize, commands: [*c]const WGPUCommandBuffer) void;
pub extern fn wgpuQueueWriteBuffer(queue: WGPUQueue, buffer: WGPUBuffer, bufferOffset: u64, data: ?*const anyopaque, size: usize) void;
pub extern fn wgpuQueueWriteTexture(queue: WGPUQueue, destination: [*c]const WGPUImageCopyTexture, data: ?*const anyopaque, dataSize: usize, dataLayout: [*c]const WGPUTextureDataLayout, writeSize: [*c]const WGPUExtent3D) void;
pub extern fn wgpuQueueReference(queue: WGPUQueue) void;
pub extern fn wgpuQueueRelease(queue: WGPUQueue) void;
pub extern fn wgpuRenderBundleSetLabel(renderBundle: WGPURenderBundle, label: [*c]const u8) void;
pub extern fn wgpuRenderBundleReference(renderBundle: WGPURenderBundle) void;
pub extern fn wgpuRenderBundleRelease(renderBundle: WGPURenderBundle) void;
pub extern fn wgpuRenderBundleEncoderDraw(renderBundleEncoder: WGPURenderBundleEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) void;
pub extern fn wgpuRenderBundleEncoderDrawIndexed(renderBundleEncoder: WGPURenderBundleEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: i32, firstInstance: u32) void;
pub extern fn wgpuRenderBundleEncoderDrawIndexedIndirect(renderBundleEncoder: WGPURenderBundleEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuRenderBundleEncoderDrawIndirect(renderBundleEncoder: WGPURenderBundleEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuRenderBundleEncoderFinish(renderBundleEncoder: WGPURenderBundleEncoder, descriptor: [*c]const WGPURenderBundleDescriptor) WGPURenderBundle;
pub extern fn wgpuRenderBundleEncoderInsertDebugMarker(renderBundleEncoder: WGPURenderBundleEncoder, markerLabel: [*c]const u8) void;
pub extern fn wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder: WGPURenderBundleEncoder) void;
pub extern fn wgpuRenderBundleEncoderPushDebugGroup(renderBundleEncoder: WGPURenderBundleEncoder, groupLabel: [*c]const u8) void;
pub extern fn wgpuRenderBundleEncoderSetBindGroup(renderBundleEncoder: WGPURenderBundleEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;
pub extern fn wgpuRenderBundleEncoderSetIndexBuffer(renderBundleEncoder: WGPURenderBundleEncoder, buffer: WGPUBuffer, format: WGPUIndexFormat, offset: u64, size: u64) void;
pub extern fn wgpuRenderBundleEncoderSetLabel(renderBundleEncoder: WGPURenderBundleEncoder, label: [*c]const u8) void;
pub extern fn wgpuRenderBundleEncoderSetPipeline(renderBundleEncoder: WGPURenderBundleEncoder, pipeline: WGPURenderPipeline) void;
pub extern fn wgpuRenderBundleEncoderSetVertexBuffer(renderBundleEncoder: WGPURenderBundleEncoder, slot: u32, buffer: WGPUBuffer, offset: u64, size: u64) void;
pub extern fn wgpuRenderBundleEncoderReference(renderBundleEncoder: WGPURenderBundleEncoder) void;
pub extern fn wgpuRenderBundleEncoderRelease(renderBundleEncoder: WGPURenderBundleEncoder) void;
pub extern fn wgpuRenderPassEncoderBeginOcclusionQuery(renderPassEncoder: WGPURenderPassEncoder, queryIndex: u32) void;
pub extern fn wgpuRenderPassEncoderDraw(renderPassEncoder: WGPURenderPassEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) void;
pub extern fn wgpuRenderPassEncoderDrawIndexed(renderPassEncoder: WGPURenderPassEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: i32, firstInstance: u32) void;
pub extern fn wgpuRenderPassEncoderDrawIndexedIndirect(renderPassEncoder: WGPURenderPassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuRenderPassEncoderDrawIndirect(renderPassEncoder: WGPURenderPassEncoder, indirectBuffer: WGPUBuffer, indirectOffset: u64) void;
pub extern fn wgpuRenderPassEncoderEnd(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPassEncoderEndOcclusionQuery(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPassEncoderExecuteBundles(renderPassEncoder: WGPURenderPassEncoder, bundleCount: usize, bundles: [*c]const WGPURenderBundle) void;
pub extern fn wgpuRenderPassEncoderInsertDebugMarker(renderPassEncoder: WGPURenderPassEncoder, markerLabel: [*c]const u8) void;
pub extern fn wgpuRenderPassEncoderPopDebugGroup(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPassEncoderPushDebugGroup(renderPassEncoder: WGPURenderPassEncoder, groupLabel: [*c]const u8) void;
pub extern fn wgpuRenderPassEncoderSetBindGroup(renderPassEncoder: WGPURenderPassEncoder, groupIndex: u32, group: WGPUBindGroup, dynamicOffsetCount: usize, dynamicOffsets: [*c]const u32) void;
pub extern fn wgpuRenderPassEncoderSetBlendConstant(renderPassEncoder: WGPURenderPassEncoder, color: [*c]const WGPUColor) void;
pub extern fn wgpuRenderPassEncoderSetIndexBuffer(renderPassEncoder: WGPURenderPassEncoder, buffer: WGPUBuffer, format: WGPUIndexFormat, offset: u64, size: u64) void;
pub extern fn wgpuRenderPassEncoderSetLabel(renderPassEncoder: WGPURenderPassEncoder, label: [*c]const u8) void;
pub extern fn wgpuRenderPassEncoderSetPipeline(renderPassEncoder: WGPURenderPassEncoder, pipeline: WGPURenderPipeline) void;
pub extern fn wgpuRenderPassEncoderSetScissorRect(renderPassEncoder: WGPURenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void;
pub extern fn wgpuRenderPassEncoderSetStencilReference(renderPassEncoder: WGPURenderPassEncoder, reference: u32) void;
pub extern fn wgpuRenderPassEncoderSetVertexBuffer(renderPassEncoder: WGPURenderPassEncoder, slot: u32, buffer: WGPUBuffer, offset: u64, size: u64) void;
pub extern fn wgpuRenderPassEncoderSetViewport(renderPassEncoder: WGPURenderPassEncoder, x: f32, y: f32, width: f32, height: f32, minDepth: f32, maxDepth: f32) void;
pub extern fn wgpuRenderPassEncoderWriteTimestamp(renderPassEncoder: WGPURenderPassEncoder, querySet: WGPUQuerySet, queryIndex: u32) void;
pub extern fn wgpuRenderPassEncoderReference(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPassEncoderRelease(renderPassEncoder: WGPURenderPassEncoder) void;
pub extern fn wgpuRenderPipelineGetBindGroupLayout(renderPipeline: WGPURenderPipeline, groupIndex: u32) WGPUBindGroupLayout;
pub extern fn wgpuRenderPipelineSetLabel(renderPipeline: WGPURenderPipeline, label: [*c]const u8) void;
pub extern fn wgpuRenderPipelineReference(renderPipeline: WGPURenderPipeline) void;
pub extern fn wgpuRenderPipelineRelease(renderPipeline: WGPURenderPipeline) void;
pub extern fn wgpuSamplerSetLabel(sampler: WGPUSampler, label: [*c]const u8) void;
pub extern fn wgpuSamplerReference(sampler: WGPUSampler) void;
pub extern fn wgpuSamplerRelease(sampler: WGPUSampler) void;
pub extern fn wgpuShaderModuleGetCompilationInfo(shaderModule: WGPUShaderModule, callback: WGPUCompilationInfoCallback, userdata: ?*anyopaque) void;
pub extern fn wgpuShaderModuleSetLabel(shaderModule: WGPUShaderModule, label: [*c]const u8) void;
pub extern fn wgpuShaderModuleReference(shaderModule: WGPUShaderModule) void;
pub extern fn wgpuShaderModuleRelease(shaderModule: WGPUShaderModule) void;
pub extern fn wgpuSurfaceConfigure(surface: WGPUSurface, config: [*c]const WGPUSurfaceConfiguration) void;
pub extern fn wgpuSurfaceGetCapabilities(surface: WGPUSurface, adapter: WGPUAdapter, capabilities: [*c]WGPUSurfaceCapabilities) void;
pub extern fn wgpuSurfaceGetCurrentTexture(surface: WGPUSurface, surfaceTexture: [*c]WGPUSurfaceTexture) void;
pub extern fn wgpuSurfaceGetPreferredFormat(surface: WGPUSurface, adapter: WGPUAdapter) WGPUTextureFormat;
pub extern fn wgpuSurfacePresent(surface: WGPUSurface) void;
pub extern fn wgpuSurfaceUnconfigure(surface: WGPUSurface) void;
pub extern fn wgpuSurfaceReference(surface: WGPUSurface) void;
pub extern fn wgpuSurfaceRelease(surface: WGPUSurface) void;
pub extern fn wgpuSwapChainGetCurrentTexture(swapChain: WGPUSwapChain) WGPUTexture;
pub extern fn wgpuSwapChainGetCurrentTextureView(swapChain: WGPUSwapChain) WGPUTextureView;
pub extern fn wgpuSwapChainPresent(swapChain: WGPUSwapChain) void;
pub extern fn wgpuSwapChainReference(swapChain: WGPUSwapChain) void;
pub extern fn wgpuSwapChainRelease(swapChain: WGPUSwapChain) void;
pub extern fn wgpuTextureCreateView(texture: WGPUTexture, descriptor: [*c]const WGPUTextureViewDescriptor) WGPUTextureView;
pub extern fn wgpuTextureDestroy(texture: WGPUTexture) void;
pub extern fn wgpuTextureGetDepthOrArrayLayers(texture: WGPUTexture) u32;
pub extern fn wgpuTextureGetDimension(texture: WGPUTexture) WGPUTextureDimension;
pub extern fn wgpuTextureGetFormat(texture: WGPUTexture) WGPUTextureFormat;
pub extern fn wgpuTextureGetHeight(texture: WGPUTexture) u32;
pub extern fn wgpuTextureGetMipLevelCount(texture: WGPUTexture) u32;
pub extern fn wgpuTextureGetSampleCount(texture: WGPUTexture) u32;
pub extern fn wgpuTextureGetUsage(texture: WGPUTexture) WGPUTextureUsageFlags;
pub extern fn wgpuTextureGetWidth(texture: WGPUTexture) u32;
pub extern fn wgpuTextureSetLabel(texture: WGPUTexture, label: [*c]const u8) void;
pub extern fn wgpuTextureReference(texture: WGPUTexture) void;
pub extern fn wgpuTextureRelease(texture: WGPUTexture) void;
pub extern fn wgpuTextureViewSetLabel(textureView: WGPUTextureView, label: [*c]const u8) void;
pub extern fn wgpuTextureViewReference(textureView: WGPUTextureView) void;
pub extern fn wgpuTextureViewRelease(textureView: WGPUTextureView) void;
pub const struct_ImGui_ImplWGPU_InitInfo_ImDrawData_t = opaque {};
pub const ImGui_ImplWGPU_InitInfo_ImDrawData = struct_ImGui_ImplWGPU_InitInfo_ImDrawData_t;
pub extern fn cImGui_ImplWGPU_Init(init_info: [*c]ImGui_ImplWGPU_InitInfo) bool;
pub extern fn cImGui_ImplWGPU_Shutdown() void;
pub extern fn cImGui_ImplWGPU_NewFrame() void;
pub extern fn cImGui_ImplWGPU_RenderDrawData(draw_data: [*c]ImDrawData, pass_encoder: WGPURenderPassEncoder) void;
pub extern fn cImGui_ImplWGPU_CreateDeviceObjects() bool;
pub extern fn cImGui_ImplWGPU_InvalidateDeviceObjects() void;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 2);
pub const __clang_version__ = "20.1.2 (https://github.com/ziglang/zig-bootstrap daa53a0971085d5e5e4b20b9984b21182ecec266)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.2 (https://github.com/ziglang/zig-bootstrap daa53a0971085d5e5e4b20b9984b21182ecec266)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _ILP32 = @as(c_int, 1);
pub const __ILP32__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @as(c_ulong, 4294967295);
pub const __SIZE_WIDTH__ = @as(c_int, 32);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @as(c_long, 2147483647);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 32);
pub const __INTPTR_MAX__ = @as(c_long, 2147483647);
pub const __INTPTR_WIDTH__ = @as(c_int, 32);
pub const __UINTPTR_MAX__ = @as(c_ulong, 4294967295);
pub const __UINTPTR_WIDTH__ = @as(c_int, 32);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 4);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 4);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 4);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):95:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):102:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __SIG_ATOMIC_MAX__ = @as(c_long, 2147483647);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 6.47517511943802511092443895822764655e-4966);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176508575932662800702e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 33);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 36);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.92592994438723585305597794258492732e-34);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 113);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176508575932662800702e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626267781732175260e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 32);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):191:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):216:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):225:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __NO_MATH_ERRNO__ = @as(c_int, 1);
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __wasm = @as(c_int, 1);
pub const __wasm__ = @as(c_int, 1);
pub const __wasm_bulk_memory_opt__ = @as(c_int, 1);
pub const __wasm_extended_const__ = @as(c_int, 1);
pub const __wasm_multivalue__ = @as(c_int, 1);
pub const __wasm_mutable_globals__ = @as(c_int, 1);
pub const __wasm_nontrapping_fptoint__ = @as(c_int, 1);
pub const __wasm_sign_ext__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __wasm32 = @as(c_int, 1);
pub const __wasm32__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __EMSCRIPTEN__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const _DEBUG = @as(c_int, 1);
pub const WGPU_TARGET_BROWSER = @as(c_int, 1);
pub const WGPU_ALIGN_TO_64BITS = "";
pub const IMGUI_VERSION = "1.92.0 WIP";
pub const IMGUI_VERSION_NUM = @as(c_int, 19195);
pub const IMGUI_HAS_TABLE = "";
pub const IMGUI_HAS_VIEWPORT = "";
pub const IMGUI_HAS_DOCK = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = "";
pub const __NEED_int8_t = "";
pub const __NEED_int16_t = "";
pub const __NEED_int32_t = "";
pub const __NEED_int64_t = "";
pub const __NEED_uint8_t = "";
pub const __NEED_uint16_t = "";
pub const __NEED_uint32_t = "";
pub const __NEED_uint64_t = "";
pub const __NEED_intptr_t = "";
pub const __NEED_uintptr_t = "";
pub const __NEED_intmax_t = "";
pub const __NEED_uintmax_t = "";
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __LONG_MAX = __LONG_MAX__;
pub const _Addr = __PTRDIFF_TYPE__;
pub const _Int64 = __INT64_TYPE__;
pub const _Reg = __PTRDIFF_TYPE__;
pub const __DEFINED_uintptr_t = "";
pub const __DEFINED_intptr_t = "";
pub const __DEFINED_int8_t = "";
pub const __DEFINED_int16_t = "";
pub const __DEFINED_int32_t = "";
pub const __DEFINED_int64_t = "";
pub const __DEFINED_intmax_t = "";
pub const __DEFINED_uint8_t = "";
pub const __DEFINED_uint16_t = "";
pub const __DEFINED_uint32_t = "";
pub const __DEFINED_uint64_t = "";
pub const __DEFINED_uintmax_t = "";
pub const INT8_MIN = -@as(c_int, 1) - @as(c_int, 0x7f);
pub const INT16_MIN = -@as(c_int, 1) - @as(c_int, 0x7fff);
pub const INT32_MIN = -@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const INT64_MIN = -@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffffffffffff, .hex);
pub const INT8_MAX = @as(c_int, 0x7f);
pub const INT16_MAX = @as(c_int, 0x7fff);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const INT64_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffffffffffff, .hex);
pub const UINT8_MAX = @as(c_int, 0xff);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hex);
pub const UINT64_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffffffffffff, .hex);
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = UINT32_MAX;
pub const WCHAR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex) + '\x00';
pub const WCHAR_MIN = (-@as(c_int, 1) - @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex)) + '\x00';
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const INT_FAST16_MIN = INT32_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST16_MAX = INT32_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const UINT_FAST16_MAX = UINT32_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const INTPTR_MIN = -@as(c_int, 1) - __INTPTR_MAX__;
pub const INTPTR_MAX = __INTPTR_MAX__;
pub const UINTPTR_MAX = __UINTPTR_MAX__;
pub const PTRDIFF_MIN = -@as(c_int, 1) - __PTRDIFF_MAX__;
pub const PTRDIFF_MAX = __PTRDIFF_MAX__;
pub const SIZE_MAX = __SIZE_MAX__;
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __need___va_list = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const __STDARG_H = "";
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg_va_copy.h:11:9
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const __STDDEF_H = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stddef_offsetof.h:16:9
pub const CIMGUI_API = "";
pub const CIMGUI_IMPL_API = "";
pub const _FEATURES_H = "";
pub const _BSD_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// /Users/thomvanoorschot/Development/emsdk/upstream/emscripten/cache/sysroot/include/features.h:27:9
pub const __inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// /Users/thomvanoorschot/Development/emsdk/upstream/emscripten/cache/sysroot/include/features.h:33:9
pub const __REDIR = @compileError("unable to translate C expr: unexpected token '__typeof__'");
// /Users/thomvanoorschot/Development/emsdk/upstream/emscripten/cache/sysroot/include/features.h:45:9
pub const assert = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// /Users/thomvanoorschot/Development/emsdk/upstream/emscripten/cache/sysroot/include/assert.h:8:9
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'");
// /Users/thomvanoorschot/Development/emsdk/upstream/emscripten/cache/sysroot/include/assert.h:12:9
pub inline fn IM_ASSERT(_EXPR: anytype) @TypeOf(assert(_EXPR)) {
    _ = &_EXPR;
    return assert(_EXPR);
}
pub const IM_ARRAYSIZE = @compileError("unable to translate C expr: unexpected token '*'");
// libs/imgui/dcimgui.h:99:9
pub const IM_UNUSED = @import("std").zig.c_translation.Macros.DISCARD;
pub inline fn CIMGUI_CHECKVERSION() @TypeOf(ImGui_DebugCheckVersionAndDataLayout(IMGUI_VERSION, @import("std").zig.c_translation.sizeof(ImGuiIO), @import("std").zig.c_translation.sizeof(ImGuiStyle), @import("std").zig.c_translation.sizeof(ImVec2), @import("std").zig.c_translation.sizeof(ImVec4), @import("std").zig.c_translation.sizeof(ImDrawVert), @import("std").zig.c_translation.sizeof(ImDrawIdx))) {
    return ImGui_DebugCheckVersionAndDataLayout(IMGUI_VERSION, @import("std").zig.c_translation.sizeof(ImGuiIO), @import("std").zig.c_translation.sizeof(ImGuiStyle), @import("std").zig.c_translation.sizeof(ImVec2), @import("std").zig.c_translation.sizeof(ImVec4), @import("std").zig.c_translation.sizeof(ImDrawVert), @import("std").zig.c_translation.sizeof(ImDrawIdx));
}
pub const IM_FMTARGS = @compileError("unable to translate macro: undefined identifier `format`");
// libs/imgui/dcimgui.h:113:9
pub const IM_FMTLIST = @compileError("unable to translate macro: undefined identifier `format`");
// libs/imgui/dcimgui.h:114:9
pub const IM_MSVC_RUNTIME_CHECKS_OFF = "";
pub const IM_MSVC_RUNTIME_CHECKS_RESTORE = "";
pub const IMGUI_PAYLOAD_TYPE_COLOR_3F = "_COL3F";
pub const IMGUI_PAYLOAD_TYPE_COLOR_4F = "_COL4F";
pub const IMGUI_DEBUG_LOG = @compileError("unable to translate C expr: expected ')' instead got '...'");
// libs/imgui/dcimgui.h:2308:9
pub inline fn CIM_ALLOC(_SIZE: anytype) @TypeOf(ImGui_MemAlloc(_SIZE)) {
    _ = &_SIZE;
    return ImGui_MemAlloc(_SIZE);
}
pub inline fn CIM_FREE(_PTR: anytype) @TypeOf(ImGui_MemFree(_PTR)) {
    _ = &_PTR;
    return ImGui_MemFree(_PTR);
}
pub const IM_UNICODE_CODEPOINT_INVALID = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFD, .hex);
pub const IM_UNICODE_CODEPOINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex);
pub const IM_COL32_R_SHIFT = @as(c_int, 0);
pub const IM_COL32_G_SHIFT = @as(c_int, 8);
pub const IM_COL32_B_SHIFT = @as(c_int, 16);
pub const IM_COL32_A_SHIFT = @as(c_int, 24);
pub const IM_COL32_A_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF000000, .hex);
pub inline fn IM_COL32(R: anytype, G: anytype, B: anytype, A: anytype) @TypeOf((((@import("std").zig.c_translation.cast(ImU32, A) << IM_COL32_A_SHIFT) | (@import("std").zig.c_translation.cast(ImU32, B) << IM_COL32_B_SHIFT)) | (@import("std").zig.c_translation.cast(ImU32, G) << IM_COL32_G_SHIFT)) | (@import("std").zig.c_translation.cast(ImU32, R) << IM_COL32_R_SHIFT)) {
    _ = &R;
    _ = &G;
    _ = &B;
    _ = &A;
    return (((@import("std").zig.c_translation.cast(ImU32, A) << IM_COL32_A_SHIFT) | (@import("std").zig.c_translation.cast(ImU32, B) << IM_COL32_B_SHIFT)) | (@import("std").zig.c_translation.cast(ImU32, G) << IM_COL32_G_SHIFT)) | (@import("std").zig.c_translation.cast(ImU32, R) << IM_COL32_R_SHIFT);
}
pub const IM_COL32_WHITE = IM_COL32(@as(c_int, 255), @as(c_int, 255), @as(c_int, 255), @as(c_int, 255));
pub const IM_COL32_BLACK = IM_COL32(@as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 255));
pub const IM_COL32_BLACK_TRANS = IM_COL32(@as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
pub const IM_DRAWLIST_TEX_LINES_WIDTH_MAX = @as(c_int, 32);
pub const ImDrawCallback_ResetRenderState = @import("std").zig.c_translation.cast(ImDrawCallback, -@as(c_int, 8));
pub inline fn IM_OFFSETOF(_TYPE: anytype, _MEMBER: anytype) @TypeOf(offsetof(_TYPE, _MEMBER)) {
    _ = &_TYPE;
    _ = &_MEMBER;
    return offsetof(_TYPE, _MEMBER);
}
pub const WEBGPU_H_ = "";
pub const WGPU_EXPORT = "";
pub const WGPU_OBJECT_ATTRIBUTE = "";
pub const WGPU_ENUM_ATTRIBUTE = "";
pub const WGPU_STRUCTURE_ATTRIBUTE = "";
pub const WGPU_FUNCTION_ATTRIBUTE = "";
pub const WGPU_NULLABLE = "";
pub const WGPU_ARRAY_LAYER_COUNT_UNDEFINED = UINT32_MAX;
pub const WGPU_COPY_STRIDE_UNDEFINED = UINT32_MAX;
pub const WGPU_DEPTH_SLICE_UNDEFINED = UINT32_MAX;
pub const WGPU_LIMIT_U32_UNDEFINED = UINT32_MAX;
pub const WGPU_LIMIT_U64_UNDEFINED = UINT64_MAX;
pub const WGPU_MIP_LEVEL_COUNT_UNDEFINED = UINT32_MAX;
pub const WGPU_QUERY_SET_INDEX_UNDEFINED = UINT32_MAX;
pub const WGPU_WHOLE_MAP_SIZE = SIZE_MAX;
pub const WGPU_WHOLE_SIZE = UINT64_MAX;
pub const WGPUDeviceImpl = struct_WGPUDeviceImpl;
pub const ImGui_ImplWGPU_InitInfo_t = struct_ImGui_ImplWGPU_InitInfo_t;
pub const WGPURenderPassEncoderImpl = struct_WGPURenderPassEncoderImpl;
pub const ImGui_ImplWGPU_RenderState_t = struct_ImGui_ImplWGPU_RenderState_t;
pub const ImVec2_t = struct_ImVec2_t;
pub const ImVec4_t = struct_ImVec4_t;
pub const ImVector_ImWchar_t = struct_ImVector_ImWchar_t;
pub const ImGuiTextFilter_ImGuiTextRange_t = struct_ImGuiTextFilter_ImGuiTextRange_t;
pub const ImVector_ImGuiTextFilter_ImGuiTextRange_t = struct_ImVector_ImGuiTextFilter_ImGuiTextRange_t;
pub const ImVector_char_t = struct_ImVector_char_t;
pub const ImGuiStoragePair_t = struct_ImGuiStoragePair_t;
pub const ImVector_ImGuiStoragePair_t = struct_ImVector_ImGuiStoragePair_t;
pub const ImGuiSelectionRequest_t = struct_ImGuiSelectionRequest_t;
pub const ImVector_ImGuiSelectionRequest_t = struct_ImVector_ImGuiSelectionRequest_t;
pub const ImVector_ImDrawIdx_t = struct_ImVector_ImDrawIdx_t;
pub const ImDrawVert_t = struct_ImDrawVert_t;
pub const ImVector_ImDrawVert_t = struct_ImVector_ImDrawVert_t;
pub const ImDrawListSharedData_t = struct_ImDrawListSharedData_t;
pub const ImVector_ImVec2_t = struct_ImVector_ImVec2_t;
pub const ImDrawCmdHeader_t = struct_ImDrawCmdHeader_t;
pub const ImDrawChannel_t = struct_ImDrawChannel_t;
pub const ImVector_ImDrawChannel_t = struct_ImVector_ImDrawChannel_t;
pub const ImDrawListSplitter_t = struct_ImDrawListSplitter_t;
pub const ImVector_ImVec4_t = struct_ImVector_ImVec4_t;
pub const ImVector_ImTextureID_t = struct_ImVector_ImTextureID_t;
pub const ImVector_ImU8_t = struct_ImVector_ImU8_t;
pub const ImDrawList_t = struct_ImDrawList_t;
pub const ImDrawCmd_t = struct_ImDrawCmd_t;
pub const ImVector_ImDrawCmd_t = struct_ImVector_ImDrawCmd_t;
pub const ImVector_ImDrawListPtr_t = struct_ImVector_ImDrawListPtr_t;
pub const ImVector_ImU32_t = struct_ImVector_ImU32_t;
pub const ImVector_float_t = struct_ImVector_float_t;
pub const ImVector_ImU16_t = struct_ImVector_ImU16_t;
pub const ImFontGlyph_t = struct_ImFontGlyph_t;
pub const ImVector_ImFontGlyph_t = struct_ImVector_ImFontGlyph_t;
pub const ImFontAtlasCustomRect_t = struct_ImFontAtlasCustomRect_t;
pub const ImVector_ImFontAtlasCustomRect_t = struct_ImVector_ImFontAtlasCustomRect_t;
pub const ImFontConfig_t = struct_ImFontConfig_t;
pub const ImVector_ImFontConfig_t = struct_ImVector_ImFontConfig_t;
pub const ImFontBuilderIO_t = struct_ImFontBuilderIO_t;
pub const ImFontAtlas_t = struct_ImFontAtlas_t;
pub const ImFont_t = struct_ImFont_t;
pub const ImVector_ImFontPtr_t = struct_ImVector_ImFontPtr_t;
pub const ImGuiPlatformMonitor_t = struct_ImGuiPlatformMonitor_t;
pub const ImVector_ImGuiPlatformMonitor_t = struct_ImVector_ImGuiPlatformMonitor_t;
pub const ImDrawData_t = struct_ImDrawData_t;
pub const ImGuiViewport_t = struct_ImGuiViewport_t;
pub const ImVector_ImGuiViewportPtr_t = struct_ImVector_ImGuiViewportPtr_t;
pub const ImFontGlyphRangesBuilder_t = struct_ImFontGlyphRangesBuilder_t;
pub const ImColor_t = struct_ImColor_t;
pub const ImGuiContext_t = struct_ImGuiContext_t;
pub const ImGuiKeyData_t = struct_ImGuiKeyData_t;
pub const ImGuiIO_t = struct_ImGuiIO_t;
pub const ImGuiInputTextCallbackData_t = struct_ImGuiInputTextCallbackData_t;
pub const ImGuiListClipper_t = struct_ImGuiListClipper_t;
pub const ImGuiMultiSelectIO_t = struct_ImGuiMultiSelectIO_t;
pub const ImGuiPayload_t = struct_ImGuiPayload_t;
pub const ImGuiPlatformImeData_t = struct_ImGuiPlatformImeData_t;
pub const ImGuiPlatformIO_t = struct_ImGuiPlatformIO_t;
pub const ImGuiStorage_t = struct_ImGuiStorage_t;
pub const ImGuiSelectionBasicStorage_t = struct_ImGuiSelectionBasicStorage_t;
pub const ImGuiSelectionExternalStorage_t = struct_ImGuiSelectionExternalStorage_t;
pub const ImGuiSizeCallbackData_t = struct_ImGuiSizeCallbackData_t;
pub const ImGuiStyle_t = struct_ImGuiStyle_t;
pub const ImGuiTableColumnSortSpecs_t = struct_ImGuiTableColumnSortSpecs_t;
pub const ImGuiTableSortSpecs_t = struct_ImGuiTableSortSpecs_t;
pub const ImGuiTextBuffer_t = struct_ImGuiTextBuffer_t;
pub const ImGuiTextFilter_t = struct_ImGuiTextFilter_t;
pub const ImGuiWindowClass_t = struct_ImGuiWindowClass_t;
pub const WGPUAdapterImpl = struct_WGPUAdapterImpl;
pub const WGPUBindGroupImpl = struct_WGPUBindGroupImpl;
pub const WGPUBindGroupLayoutImpl = struct_WGPUBindGroupLayoutImpl;
pub const WGPUBufferImpl = struct_WGPUBufferImpl;
pub const WGPUCommandBufferImpl = struct_WGPUCommandBufferImpl;
pub const WGPUCommandEncoderImpl = struct_WGPUCommandEncoderImpl;
pub const WGPUComputePassEncoderImpl = struct_WGPUComputePassEncoderImpl;
pub const WGPUComputePipelineImpl = struct_WGPUComputePipelineImpl;
pub const WGPUInstanceImpl = struct_WGPUInstanceImpl;
pub const WGPUPipelineLayoutImpl = struct_WGPUPipelineLayoutImpl;
pub const WGPUQuerySetImpl = struct_WGPUQuerySetImpl;
pub const WGPUQueueImpl = struct_WGPUQueueImpl;
pub const WGPURenderBundleImpl = struct_WGPURenderBundleImpl;
pub const WGPURenderBundleEncoderImpl = struct_WGPURenderBundleEncoderImpl;
pub const WGPURenderPipelineImpl = struct_WGPURenderPipelineImpl;
pub const WGPUSamplerImpl = struct_WGPUSamplerImpl;
pub const WGPUShaderModuleImpl = struct_WGPUShaderModuleImpl;
pub const WGPUSurfaceImpl = struct_WGPUSurfaceImpl;
pub const WGPUSwapChainImpl = struct_WGPUSwapChainImpl;
pub const WGPUTextureImpl = struct_WGPUTextureImpl;
pub const WGPUTextureViewImpl = struct_WGPUTextureViewImpl;
pub const ImGui_ImplWGPU_InitInfo_ImDrawData_t = struct_ImGui_ImplWGPU_InitInfo_ImDrawData_t;
