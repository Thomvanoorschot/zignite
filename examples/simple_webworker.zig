const std = @import("std");
const zignite = @import("zignite");
const pthread = zignite.pthread;
const websocket = zignite.websocket;
const emscripten_utils = zignite.emscripten_utils;

const SharedData = struct {
    number: i32,
    mutex: pthread.pthread_mutex_t,
    running: bool,
    websocket: websocket.WebSocket,
    websocket_ready: bool,
};

fn onWebSocketOpen(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketOpenEvent, userData: ?*anyopaque) callconv(.c) bool {
    const stdout = std.io.getStdOut().writer();
    _ = websocketEvent;
    stdout.print("*** onWebSocketOpen CALLED! eventType: {d} ***\n", .{eventType}) catch unreachable;

    if (userData) |data| {
        const shared: *SharedData = @ptrCast(@alignCast(data));
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        shared.websocket_ready = true;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);
        stdout.print("*** WebSocket ready flag set ***\n", .{}) catch unreachable;
    } else {
        stdout.print("*** WARNING: userData is null in onWebSocketOpen ***\n", .{}) catch unreachable;
    }

    stdout.print("WebSocket connection opened in worker thread!\n", .{}) catch unreachable;
    return true;
}

fn onWebSocketMessage(eventType: c_int, websocketEvent: [*c]const websocket.EmscriptenWebSocketMessageEvent, userData: ?*anyopaque) callconv(.c) bool {
    const stdout = std.io.getStdOut().writer();
    _ = userData;
    stdout.print("*** onWebSocketMessage CALLED! eventType: {d} ***\n", .{eventType}) catch unreachable;

    const message_text = websocket.getMessageText(websocketEvent);
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
    stdout.print("Worker thread started\n", .{}) catch unreachable;

    // Check if WebSockets are supported
    if (!websocket.isSupported()) {
        stdout.print("WebSockets not supported!\n", .{}) catch unreachable;
        shared.running = false;
        return null;
    }
    stdout.print("WebSockets are supported\n", .{}) catch unreachable;

    // Create WebSocket connection in worker thread using clean API
    stdout.print("Creating WebSocket...\n", .{}) catch unreachable;
    shared.websocket = websocket.createWebSocket("ws://127.0.0.1:8080", false);
    stdout.print("WebSocket created with handle: {d}\n", .{shared.websocket}) catch unreachable;

    if (shared.websocket == 0) {
        stdout.print("ERROR: Failed to create WebSocket (handle is 0)\n", .{}) catch unreachable;
        shared.running = false;
        return null;
    }

    // Check initial state
    const initial_state = websocket.getReadyState(shared.websocket);
    stdout.print("Initial WebSocket ready state: {d} (0=CONNECTING, 1=OPEN, 2=CLOSING, 3=CLOSED)\n", .{initial_state}) catch unreachable;

    // Set event handlers - pass shared data to the open callback
    stdout.print("Setting up callbacks...\n", .{}) catch unreachable;

    const open_result = websocket.setOpenCallback(shared.websocket, shared, onWebSocketOpen);
    stdout.print("setOpenCallback result: {d}\n", .{open_result}) catch unreachable;

    const message_result = websocket.setMessageCallback(shared.websocket, null, onWebSocketMessage);
    stdout.print("setMessageCallback result: {d}\n", .{message_result}) catch unreachable;

    const error_result = websocket.setErrorCallback(shared.websocket, null, onWebSocketError);
    stdout.print("setErrorCallback result: {d}\n", .{error_result}) catch unreachable;

    const close_result = websocket.setCloseCallback(shared.websocket, null, onWebSocketClose);
    stdout.print("setCloseCallback result: {d}\n", .{close_result}) catch unreachable;

    stdout.print("Starting wait loop for WebSocket connection...\n", .{}) catch unreachable;

    var wait_iterations: i32 = 0;
    const max_wait = 1000; // 10 seconds

    // Wait for WebSocket to be ready before starting the main loop
    while (shared.running and wait_iterations < max_wait) {
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        const is_ready = shared.websocket_ready;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);

        if (is_ready) {
            stdout.print("*** WebSocket is ready! Breaking out of wait loop ***\n", .{}) catch unreachable;
            break;
        }

        // Check state every 100 iterations (1 second)
        if (@mod(wait_iterations, 100) == 0) {
            const current_state = websocket.getReadyState(shared.websocket);
            stdout.print("Wait iteration {d}: WebSocket state = {d}\n", .{ wait_iterations, current_state }) catch unreachable;
        }

        emscripten_utils.emscripten_sleep(10);
        wait_iterations += 1;
    }

    if (wait_iterations >= max_wait) {
        stdout.print("*** TIMEOUT: WebSocket didn't become ready after {d} iterations ***\n", .{max_wait}) catch unreachable;
        const final_state = websocket.getReadyState(shared.websocket);
        stdout.print("Final WebSocket state: {d}\n", .{final_state}) catch unreachable;
        shared.running = false;
        return null;
    }

    stdout.print("WebSocket ready\n", .{}) catch unreachable;

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

        stdout.print("Sending message: {s}\n", .{message}) catch unreachable;
        const result = websocket.sendText(shared.websocket, message);
        if (result != 0) {
            stdout.print("Failed to send WebSocket message: {d}\n", .{result}) catch unreachable;
        } else {
            stdout.print("Message sent successfully\n", .{}) catch unreachable;
        }

        counter += 1;
        std.time.sleep(100 * std.time.ns_per_ms);
    }

    stdout.print("Closing WebSocket...\n", .{}) catch unreachable;
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
        std.time.sleep(1000 * std.time.ns_per_ms);
    }

    _ = pthread.pthread_join(thread, null);
    std.debug.print("Program finished.\n", .{});
}
