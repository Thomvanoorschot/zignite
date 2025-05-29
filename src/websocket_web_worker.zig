const std = @import("std");
const pthread = @import("pthread.zig");
const websocket = @import("websocket.zig");
const emscripten_utils = @import("emscripten_utils.zig");

const StdOut = @TypeOf(std.io.getStdOut().writer());
const StdErr = @TypeOf(std.io.getStdErr().writer());

pub fn WebSocketWebWorker(comptime SharedDataType: type) type {
    return struct {
        const Self = @This();

        pub const WebSocketWebWorkerCallbackOptions = struct {
            on_open_cb: ?*const fn (userData: *Self) bool = null,
            on_message_cb: ?*const fn (userData: *Self, message: []const u8) bool = null,
            on_error_cb: ?*const fn (userData: *Self) bool = null,
            on_close_cb: ?*const fn (userData: *Self, code: u16, reason: []const u8) bool = null,
        };

        thread: pthread.pthread_t = undefined,
        url: [:0]const u8,
        shared_data: *SharedDataType,
        open_socket: ?websocket.WebSocket = null,
        websocket_ready: bool = false,
        std_out: StdOut = std.io.getStdOut().writer(),
        std_err: StdErr = std.io.getStdErr().writer(),
        worker_entrypoint: ?*const fn (web_worker: *Self) void = null,
        callback_options: WebSocketWebWorkerCallbackOptions = WebSocketWebWorkerCallbackOptions{},

        pub fn init(
            url: [:0]const u8,
            shared_data: *SharedDataType,
            worker_entrypoint: ?*const fn (web_worker: *Self) void,
            callback_options: WebSocketWebWorkerCallbackOptions,
        ) !*Self {
            var self = try std.heap.c_allocator.create(Self);
            self.* = Self{
                .url = url,
                .shared_data = shared_data,
                .worker_entrypoint = worker_entrypoint,
                .callback_options = callback_options,
            };
            const rc = pthread.pthread_create(&self.thread, null, workerEntrypoint, self);
            if (rc != 0) {
                self.std_err.print("Failed to create thread\n", .{}) catch unreachable;
                return error.FailedToCreateThread;
            }

            return self;
        }

        fn workerEntrypoint(self_: ?*anyopaque) callconv(.c) ?*anyopaque {
            const self: *Self = @ptrCast(@alignCast(self_));

            if (self.worker_entrypoint) |entrypoint| {
                entrypoint(self);
            }
            if (!websocket.isSupported()) {
                self.std_err.print("WebSockets not supported!", .{}) catch unreachable;
                return null;
            }
            self.std_out.print("Creating WebSocket {s}\n", .{self.url}) catch unreachable;
            self.open_socket = websocket.createWebSocket(self.url, false);

            if (self.open_socket.? == 0) {
                self.std_err.print("ERROR: Failed to create WebSocket (handle is 0)", .{}) catch unreachable;
                return null;
            }

            _ = websocket.setOpenCallback(self.open_socket.?, self, openCallback);
            _ = websocket.setMessageCallback(self.open_socket.?, self, messageCallback);
            _ = websocket.setErrorCallback(self.open_socket.?, self, errorCallback);
            _ = websocket.setCloseCallback(self.open_socket.?, self, closeCallback);

            while (!self.websocket_ready) {
                emscripten_utils.emscripten_sleep(10);
            }

            self.std_out.print("WebSocket ready\n", .{}) catch unreachable;

            return null;
        }
        fn openCallback(
            _: c_int,
            _: [*c]const websocket.EmscriptenWebSocketOpenEvent,
            self_: ?*anyopaque,
        ) callconv(.c) bool {
            const self: *Self = @ptrCast(@alignCast(self_));
            self.websocket_ready = true;
            if (self.callback_options.on_open_cb) |cb| {
                return cb(self);
            }
            return true;
        }
        fn messageCallback(
            _: c_int,
            websocketEvent: [*c]const websocket.EmscriptenWebSocketMessageEvent,
            self_: ?*anyopaque,
        ) callconv(.c) bool {
            const self: *Self = @ptrCast(@alignCast(self_));
            if (self.callback_options.on_message_cb) |cb| {
                const message_text = websocket.getMessageBinary(websocketEvent);
                return cb(self, message_text);
            }

            return true;
        }
        fn errorCallback(
            eventType: c_int,
            _: [*c]const websocket.EmscriptenWebSocketErrorEvent,
            self_: ?*anyopaque,
        ) callconv(.c) bool {
            const self: *Self = @ptrCast(@alignCast(self_));
            if (self.callback_options.on_error_cb) |cb| {
                self.std_err.print("WebSocket error: {d}\n", .{eventType}) catch unreachable;
                return cb(self);
            }

            return true;
        }
        fn closeCallback(
            eventType: c_int,
            websocketEvent: [*c]const websocket.EmscriptenWebSocketCloseEvent,
            self_: ?*anyopaque,
        ) callconv(.c) bool {
            const self: *Self = @ptrCast(@alignCast(self_));
            if (self.callback_options.on_close_cb) |cb| {
                self.std_err.print("WebSocket closed: {d}\n", .{eventType}) catch unreachable;
                return cb(self, websocketEvent.*.code, &websocketEvent.*.reason);
            }

            return true;
        }
    };
}
