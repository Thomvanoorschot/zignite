const std = @import("std");
const zignite = @import("zignite");
const pthread = zignite.pthread;
const websocket = zignite.websocket;
const emscripten_utils = zignite.emscripten_utils;
const imgui = zignite.imgui;
const engine = zignite.engine;
const websocket_web_worker = zignite.websocket_web_worker;

const WebSocketWebWorker = websocket_web_worker.WebSocketWebWorker;
const SharedData = struct {
    message: []const u8 = "",
};

fn workerEntrypoint(web_worker: *WebSocketWebWorker(SharedData)) !void {
    _ = web_worker;
}

fn onOpenCallback(web_worker: *WebSocketWebWorker(SharedData)) !bool {
    web_worker.std_out.print("WebSocket opened\n", .{}) catch unreachable;
    if (web_worker.open_socket) |open_socket| {
        _ = websocket.sendText(open_socket, "{\"method\":\"subscribe\",\"params\":{\"channel\":\"book\",\"symbol\":[\"BTC/USD\"]}}");
    }
    return true;
}

fn onMessageCallback(web_worker: *WebSocketWebWorker(SharedData), message: []const u8) !bool {
    web_worker.shared_data.message = message;
    return true;
}

fn onErrorCallback(web_worker: *WebSocketWebWorker(SharedData)) !bool {
    _ = web_worker;
    return true;
}

fn onCloseCallback(web_worker: *WebSocketWebWorker(SharedData), code: u16, reason: []const u8) !bool {
    _ = web_worker;
    _ = code;
    _ = reason;
    return true;
}
pub fn main() !void {
    // Shared data between main thread and web worker
    var shared = SharedData{};

    // Create web worker
    const ww = try WebSocketWebWorker(SharedData).init(
        std.heap.c_allocator,
        "wss://ws.kraken.com/v2",
        &shared,
        workerEntrypoint,
        .{
            .on_open_cb = onOpenCallback,
            .on_message_cb = onMessageCallback,
            .on_error_cb = onErrorCallback,
            .on_close_cb = onCloseCallback,
        },
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

        _ = imgui.igBegin("WebSocket", null, imgui.ImGuiWindowFlags_None);
        defer _ = imgui.igEnd();

        const text_buf_size = 2048;
        var text_buf: [text_buf_size:0]u8 = undefined;
        const message_str = try std.fmt.bufPrintZ(
            &text_buf,
            "Message: {s}",
            .{shared.message},
        );

        // Use ImGui's text wrapping
        imgui.igTextWrapped(message_str.ptr, .{});
    }
}
