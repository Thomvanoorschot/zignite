const c = @cImport({
    @cInclude("emscripten.h");
});

pub extern fn emscripten_sleep(ms: u32) void;