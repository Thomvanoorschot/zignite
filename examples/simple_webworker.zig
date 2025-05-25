const std = @import("std");
const zignite = @import("zignite");
const pthread = zignite.pthread;
const websocket = zignite.websocket;

const SharedData = struct {
    number: i32,
    mutex: pthread.pthread_mutex_t,
    running: bool,
    websocket: websocket.WebSocket,
    websocket_ready: bool,
};

fn onWebSocketOpen(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketOpenEvent, userData: ?*anyopaque) callconv(.c) bool {
    _ = eventType;
    _ = websocketEvent;

    if (userData) |data| {
        const shared: *SharedData = @ptrCast(@alignCast(data));
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        shared.websocket_ready = true;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);
    }

    std.debug.print("WebSocket connection opened in worker thread!\n", .{});
    return true;
}

fn onWebSocketMessage(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketMessageEvent, userData: ?*anyopaque) callconv(.c) bool {
    _ = eventType;
    _ = userData;

    const message_text = websocket.getMessageText(websocketEvent);
    std.debug.print("Received message: {s}\n", .{message_text});
    return true;
}

fn onWebSocketError(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketErrorEvent, userData: ?*anyopaque) callconv(.c) bool {
    _ = eventType;
    _ = websocketEvent;
    _ = userData;
    std.debug.print("WebSocket error in worker thread\n", .{});
    return true;
}

fn onWebSocketClose(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketCloseEvent, userData: ?*anyopaque) callconv(.c) bool {
    _ = eventType;
    _ = websocketEvent;
    _ = userData;
    std.debug.print("WebSocket closed in worker thread\n", .{});
    return true;
}

fn workerThread(arg: ?*anyopaque) callconv(.c) ?*anyopaque {
    const shared: *SharedData = @ptrCast(@alignCast(arg));

    // Check if WebSockets are supported
    if (!websocket.isSupported()) {
        std.debug.print("WebSockets not supported!\n", .{});
        shared.running = false;
        return null;
    }

    // Create WebSocket connection in worker thread using clean API
    shared.websocket = websocket.createWebSocket("ws://127.0.0.1:8080", false);

    // Set event handlers - pass shared data to the open callback
    _ = websocket.setOpenCallback(shared.websocket, shared, onWebSocketOpen);
    _ = websocket.setMessageCallback(shared.websocket, null, onWebSocketMessage);
    _ = websocket.setErrorCallback(shared.websocket, null, onWebSocketError);
    _ = websocket.setCloseCallback(shared.websocket, null, onWebSocketClose);

    // Wait for WebSocket to be ready before starting the main loop
    while (shared.running) {
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        const is_ready = shared.websocket_ready;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);

        if (is_ready) break;

        std.time.sleep(10 * std.time.ns_per_ms); // Wait 10ms and check again
    }

    if (!shared.running) return null;

    var counter: i32 = 0;
    while (shared.running and counter < 50) {
        // Lock mutex and update shared data
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        shared.number = counter;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);

        // Send data over WebSocket from worker thread
        const message = std.fmt.allocPrint(std.heap.page_allocator, "Worker update: {d}", .{counter}) catch unreachable;
        defer std.heap.page_allocator.free(message);

        const result = websocket.sendText(shared.websocket, message);
        if (result != 0) {
            std.debug.print("Failed to send WebSocket message: {d}\n", .{result});
        }

        counter += 1;
        std.time.sleep(100 * std.time.ns_per_ms);
    }

    _ = websocket.close(shared.websocket, 1000, "Worker finished");
    shared.running = false;
    return null;
}

pub fn main() void {
    var shared = SharedData{
        .number = 0,
        .mutex = std.mem.zeroes(pthread.pthread_mutex_t),
        .running = true,
        .websocket = 0,
        .websocket_ready = false,
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
    while (shared.running) {
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        const current_number = shared.number;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);

        std.debug.print("Main thread reads: {d}\n", .{current_number});
        std.time.sleep(200 * std.time.ns_per_ms);
    }

    _ = pthread.pthread_join(thread, null);
    std.debug.print("Program finished.\n", .{});
}
