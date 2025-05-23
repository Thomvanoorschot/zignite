pub const webgpu = @import("webgpu.zig");
pub const imgui = @import("imgui.zig");
pub const imgui_webgpu = @import("imgui_webgpu.zig");
pub const glfw = @import("glfw.zig");
pub const imgui_glfw = @import("imgui_glfw.zig");

// zig translate-c \
//   -target wasm32-emscripten \
//   -isystem "/Users/thomvanoorschot/Development/emsdk/upstream/emscripten/cache/sysroot/include" \
//   -D __EMSCRIPTEN__ \
//   -D WGPU_TARGET_BROWSER \
//   -D WGPU_ALIGN_TO_64BITS= \
//   /Users/thomvanoorschot/Development/zimgui/libs/wgpu/lib_webgpu.h
