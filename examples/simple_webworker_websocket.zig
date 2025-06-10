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

const ExampleStruct = struct {
    shared_data: *SharedData,
    const Self = @This();

    fn init(self: *Self, shared_data: *SharedData) !void {
        self.shared_data = shared_data;
    }

    fn onOpenCallback(_: *anyopaque, ws: websocket.WebSocket) !bool {
        _ = websocket.sendText(ws, "{\"method\":\"subscribe\",\"params\":{\"channel\":\"book\",\"symbol\":[\"BTC/USD\"]}}");
        return true;
    }

    fn onMessageCallback(self_: *anyopaque, message: []const u8) !bool {
        const self: *Self = @ptrCast(@alignCast(self_));
        self.shared_data.message = message;
        return true;
    }

    fn onErrorCallback(self_: *anyopaque) !bool {
        _ = self_;
        return true;
    }

    fn onCloseCallback(self_: *anyopaque, code: u16, reason: []const u8) !bool {
        _ = self_;
        _ = code;
        _ = reason;
        return true;
    }
};

pub fn main() !void {
    // Shared data between main thread and web worker
    var shared = SharedData{};

    // Create web worker
    var example_struct = ExampleStruct{
        .shared_data = &shared,
    };
    const ww = try WebSocketWebWorker.init(
        std.heap.c_allocator,
        "wss://ws.kraken.com/v2",
        .{
            .callback_ctx = &example_struct,
            .on_open_cb = ExampleStruct.onOpenCallback,
            .on_message_cb = ExampleStruct.onMessageCallback,
            .on_error_cb = ExampleStruct.onErrorCallback,
            .on_close_cb = ExampleStruct.onCloseCallback,
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
