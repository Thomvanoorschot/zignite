const std = @import("std");
const zignite = @import("zignite");
const pthread = zignite.pthread;
const websocket = zignite.websocket;
const emscripten_utils = zignite.emscripten_utils;
const imgui = zignite.imgui;
const engine = zignite.engine;
const web_worker = zignite.web_worker;

const WebWorker = web_worker.WebWorker;
const SharedData = struct {
    number: i32,
};

fn workerEntrypoint(shared: *SharedData) !void {
    while (true) {
        shared.number += 1;
        emscripten_utils.emscripten_sleep(100);
    }
}

pub fn main() !void {
    // Shared data between main thread and web worker
    var shared = SharedData{
        .number = 0,
    };

    // Create web worker
    const ww = try WebWorker(SharedData).init(
        std.heap.c_allocator,
        &shared,
        workerEntrypoint,
    );
    defer std.heap.c_allocator.destroy(ww);

    // Main thread loop
    var e = try engine.Engine.init(.{
        .width = 1024,
        .height = 768,
    });
    defer e.deinit();

    while (e.startRender()) {
        defer e.endRender();
        imgui.igShowDemoWindow(null);
        const text_buf_size = 64;
        var text_buf: [text_buf_size:0]u8 = undefined;
        const number_str = try std.fmt.bufPrintZ(
            &text_buf,
            "Number: {d}",
            .{shared.number},
        );
        imgui.igText(number_str.ptr, .{});
    }
}
