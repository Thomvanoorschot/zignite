pub usingnamespace @cImport({
    @cInclude("dcimgui.h");
    @cInclude("dcimgui_impl_glfw.h");
    @cInclude("dcimgui_impl_wgpu.h");
});

pub fn SliderInt(label: []const u8, v: *i32, v_min: i32, v_max: i32) bool {
    return c.ImGui_SliderInt(@ptrCast(label), v, v_min, v_max);
}

// import the C functions again but under the c namespace to use them in Zig
// if you expose all the functions you need, you can even drop the previous import.
const c = @cImport({
    @cInclude("dcimgui.h");
    @cInclude("dcimgui_impl_glfw.h");
    @cInclude("dcimgui_impl_wgpu.h");
});
