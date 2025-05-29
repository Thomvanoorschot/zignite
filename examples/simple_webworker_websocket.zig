const std = @import("std");
const zignite = @import("zignite");
const pthread = zignite.pthread;
const websocket = zignite.websocket;
const emscripten_utils = zignite.emscripten_utils;
const imgui = zignite.imgui;
const engine = zignite.engine;
const websocket_web_worker = zignite.websocket_web_worker;

const WebSocketWebWorker = websocket_web_worker.WebSocketWebWorker;
const SharedData = struct {};

fn workerEntrypoint(web_worker: *WebSocketWebWorker(SharedData)) void {
    _ = web_worker;
}

fn onOpenCallback(web_worker: *WebSocketWebWorker(SharedData)) bool {
    web_worker.std_out.print("WebSocket opened\n", .{}) catch unreachable;
    if (web_worker.open_socket) |open_socket| {
        _ = websocket.sendText(open_socket, "open_orderbook:BTC/USD");
    }
    return true;
}

fn onMessageCallback(web_worker: *WebSocketWebWorker(SharedData), message: []const u8) bool {
    web_worker.std_out.print("Received message: {s}\n", .{message}) catch unreachable;
    return true;
}

fn onErrorCallback(web_worker: *WebSocketWebWorker(SharedData)) bool {
    _ = web_worker;
    return true;
}

fn onCloseCallback(web_worker: *WebSocketWebWorker(SharedData), code: u16, reason: []const u8) bool {
    _ = web_worker;
    _ = code;
    _ = reason;
    return true;
}
pub fn main() !void {
    // Shared data between main thread and web worker
    var shared = SharedData{};

    // Create web worker
    _ = try WebSocketWebWorker(SharedData).init(
        "ws://127.0.0.1:8081",
        &shared,
        workerEntrypoint,
        .{
            .on_open_cb = onOpenCallback,
            .on_message_cb = onMessageCallback,
            .on_error_cb = onErrorCallback,
            .on_close_cb = onCloseCallback,
        },
    );

    // Main thread loop
    var e = try engine.Engine.init(.{
        .width = 1024,
        .height = 768,
    });
    defer e.deinit();

    while (e.startRender()) {
        defer e.endRender();
        imgui.igShowDemoWindow(null);
    }
}
