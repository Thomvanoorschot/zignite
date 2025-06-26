const c = @cImport({
    @cInclude("emscripten.h");
});

pub extern fn emscripten_sleep(ms: u32) void;
pub extern fn emscripten_set_main_loop(func: *const fn () callconv(.C) void, fps: u32, simulate_in_background: bool) void;