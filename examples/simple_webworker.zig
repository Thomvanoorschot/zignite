const std = @import("std");
const zignite = @import("zignite");
const pthread = zignite.pthread;
const websocket = zignite.websocket;
const emscripten_utils = zignite.emscripten_utils;
const imgui = zignite.imgui;
const engine = zignite.engine;

const SharedData = struct {
    number: i32,
    mutex: pthread.pthread_mutex_t,
    running: bool,
    websocket: websocket.WebSocket,
    websocket_ready: bool,
    timestamp: []const u8,
};

fn onWebSocketOpen(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketOpenEvent, userData: ?*anyopaque) callconv(.c) bool {
    _ = eventType;
    _ = websocketEvent;

    if (userData) |data| {
        const shared: *SharedData = @ptrCast(@alignCast(data));
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        shared.websocket_ready = true;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);
        _ = websocket.sendText(shared.websocket, "open_orderbook:BTC/USD");
    }

    return true;
}

fn onWebSocketMessage(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketMessageEvent, _: ?*anyopaque) callconv(.c) bool {
    _ = eventType;
    const stdout = std.io.getStdOut().writer();

    const message_text = websocket.getMessageBinary(websocketEvent);
    stdout.print("Received message: {s}\n", .{message_text}) catch unreachable;
    return true;
}

fn onWebSocketError(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketErrorEvent, userData: ?*anyopaque) callconv(.c) bool {
    const stdout = std.io.getStdOut().writer();
    _ = websocketEvent;
    _ = userData;
    stdout.print("*** onWebSocketError CALLED! eventType: {d} ***\n", .{eventType}) catch unreachable;
    stdout.print("WebSocket error in worker thread\n", .{}) catch unreachable;
    return true;
}

fn onWebSocketClose(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketCloseEvent, userData: ?*anyopaque) callconv(.c) bool {
    const stdout = std.io.getStdOut().writer();
    _ = websocketEvent;
    _ = userData;
    stdout.print("*** onWebSocketClose CALLED! eventType: {d} ***\n", .{eventType}) catch unreachable;
    stdout.print("WebSocket closed in worker thread\n", .{}) catch unreachable;
    return true;
}

fn workerThread(arg: ?*anyopaque) callconv(.c) ?*anyopaque {
    const stdout = std.io.getStdOut().writer();
    const shared: *SharedData = @ptrCast(@alignCast(arg));

    // Check if WebSockets are supported
    if (!websocket.isSupported()) {
        stdout.print("WebSockets not supported!\n", .{}) catch unreachable;
        shared.running = false;
        return null;
    }
    stdout.print("WebSockets are supported\n", .{}) catch unreachable;

    shared.websocket = websocket.createWebSocket("ws://127.0.0.1:8081", false);

    if (shared.websocket == 0) {
        stdout.print("ERROR: Failed to create WebSocket (handle is 0)\n", .{}) catch unreachable;
        shared.running = false;
        return null;
    }

    _ = websocket.setOpenCallback(shared.websocket, shared, onWebSocketOpen);
    _ = websocket.setMessageCallback(shared.websocket, shared, onWebSocketMessage);
    _ = websocket.setErrorCallback(shared.websocket, null, onWebSocketError);
    _ = websocket.setCloseCallback(shared.websocket, null, onWebSocketClose);

    while (!shared.websocket_ready) {
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        const is_ready = shared.websocket_ready;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);

        if (is_ready) {
            break;
        }

        emscripten_utils.emscripten_sleep(10);
    }
    stdout.print("WebSocket ready\n", .{}) catch unreachable;

    return null;
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    var shared = SharedData{
        .number = 0,
        .mutex = std.mem.zeroes(pthread.pthread_mutex_t),
        .running = true,
        .websocket = 0,
        .websocket_ready = false,
        .timestamp = "0",
    };

    // Initialize mutex
    if (pthread.pthread_mutex_init(&shared.mutex, null) != 0) {
        std.debug.print("Failed to initialize mutex\n", .{});
        return;
    }
    defer _ = pthread.pthread_mutex_destroy(&shared.mutex);

    // Create worker thread
    var thread: pthread.pthread_t = undefined;
    const rc = pthread.pthread_create(&thread, null, workerThread, &shared);
    if (rc != 0) {
        std.debug.print("Failed to create thread\n", .{});
        return;
    }

    // Main thread loop
    var e = try engine.Engine.init(.{
        .width = 1024,
        .height = 768,
    });
    defer e.deinit();

    while (e.startRender()) {
        defer e.endRender();
        imgui.igShowDemoWindow(null);
        _ = stdout;
        // stdout.print("timestamp: {s}\n", .{shared.timestamp}) catch unreachable;
    }
}
