const std = @import("std");
const pthread = @import("pthread.zig");
const websocket = @import("websocket.zig");
const em = @import("emscripten.zig");

const StdOut = @TypeOf(std.io.getStdOut().writer());
const StdErr = @TypeOf(std.io.getStdErr().writer());

pub const WebSocketWebWorker = struct {
    const Self = @This();

    pub const WebSocketWebWorkerCallbackOptions = struct {
        callback_ctx: *anyopaque = undefined,
        on_open_cb: ?*const fn (userData: *anyopaque, ws: websocket.WebSocket) anyerror!bool = null,
        on_message_cb: ?*const fn (userData: *anyopaque, message: []const u8) anyerror!bool = null,
        on_error_cb: ?*const fn (userData: *anyopaque) anyerror!bool = null,
        on_close_cb: ?*const fn (userData: *anyopaque, code: u16, reason: []const u8) anyerror!bool = null,
    };

    allocator: std.mem.Allocator,
    thread: pthread.pthread_t = undefined,
    url: [:0]const u8,
    open_socket: ?websocket.WebSocket = null,
    websocket_ready: bool = false,
    std_out: StdOut = std.io.getStdOut().writer(),
    std_err: StdErr = std.io.getStdErr().writer(),
    callback_options: WebSocketWebWorkerCallbackOptions,

    pub fn init(
        allocator: std.mem.Allocator,
        url: [:0]const u8,
        callback_options: WebSocketWebWorkerCallbackOptions,
    ) !*Self {
        var self = try allocator.create(Self);
        self.* = Self{
            .allocator = allocator,
            .url = url,
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
            em.emscripten_sleep(10);
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
            return cb(self.callback_options.callback_ctx, self.open_socket.?) catch |err| {
                self.std_err.print("Error in on_open_cb: {}\n", .{err}) catch unreachable;
                return false;
            };
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
            return cb(self.callback_options.callback_ctx, message_text) catch |err| {
                self.std_err.print("Error in on_message_cb: {}\n", .{err}) catch unreachable;
                return false;
            };
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
            return cb(self.callback_options.callback_ctx) catch |err| {
                self.std_err.print("Error in on_error_cb: {}\n", .{err}) catch unreachable;
                return false;
            };
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
            return cb(
                self.callback_options.callback_ctx,
                websocketEvent.*.code,
                &websocketEvent.*.reason,
            ) catch |err| {
                self.std_err.print("Error in on_close_cb: {}\n", .{err}) catch unreachable;
                return false;
            };
        }

        return true;
    }
};
