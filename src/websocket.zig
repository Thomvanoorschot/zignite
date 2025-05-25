const std = @import("std");

// Emscripten WebSocket API
const c = @cImport({
    @cInclude("emscripten/websocket.h");
});

// Re-export types with cleaner names
pub const WebSocket = c.EMSCRIPTEN_WEBSOCKET_T;
pub const WebSocketResult = c.EMSCRIPTEN_RESULT;
pub const EmscriptenWebSocketOpenEvent = c.EmscriptenWebSocketOpenEvent;
pub const EmscriptenWebSocketMessageEvent = c.EmscriptenWebSocketMessageEvent;
pub const EmscriptenWebSocketErrorEvent = c.EmscriptenWebSocketErrorEvent;
pub const EmscriptenWebSocketCloseEvent = c.EmscriptenWebSocketCloseEvent;

// Re-export constants
pub const EM_TRUE = c.EM_TRUE;
pub const EM_FALSE = c.EM_FALSE;

// Event callback types
pub const OpenCallback = *const fn (eventType: c_int, websocketEvent: [*c]const c.EmscriptenWebSocketOpenEvent, userData: ?*anyopaque) callconv(.c) c.EM_BOOL;
pub const MessageCallback = *const fn (eventType: c_int, websocketEvent: [*c]const c.EmscriptenWebSocketMessageEvent, userData: ?*anyopaque) callconv(.c) c.EM_BOOL;
pub const ErrorCallback = *const fn (eventType: c_int, websocketEvent: [*c]const c.EmscriptenWebSocketErrorEvent, userData: ?*anyopaque) callconv(.c) c.EM_BOOL;
pub const CloseCallback = *const fn (eventType: c_int, websocketEvent: [*c]const c.EmscriptenWebSocketCloseEvent, userData: ?*anyopaque) callconv(.c) c.EM_BOOL;

// Connection creation attributes
pub const CreateAttributes = c.EmscriptenWebSocketCreateAttributes;

// Add WebSocket ready state constants
pub const WEBSOCKET_CONNECTING: u16 = 0;
pub const WEBSOCKET_OPEN: u16 = 1;
pub const WEBSOCKET_CLOSING: u16 = 2;
pub const WEBSOCKET_CLOSED: u16 = 3;

// Wrapper functions with cleaner API
pub fn createWebSocket(url: [:0]const u8, create_on_main_thread: bool) WebSocket {
    var attrs: CreateAttributes = std.mem.zeroes(CreateAttributes);
    attrs.url = url.ptr;
    attrs.protocols = null;
    attrs.createOnMainThread = if (create_on_main_thread) true else false;

    return c.emscripten_websocket_new(&attrs);
}

pub fn setOpenCallback(websocket: WebSocket, userData: ?*anyopaque, callback: OpenCallback) WebSocketResult {
    return c.emscripten_websocket_set_onopen_callback(websocket, userData, callback);
}

pub fn setMessageCallback(websocket: WebSocket, userData: ?*anyopaque, callback: MessageCallback) WebSocketResult {
    return c.emscripten_websocket_set_onmessage_callback(websocket, userData, callback);
}

pub fn setErrorCallback(websocket: WebSocket, userData: ?*anyopaque, callback: ErrorCallback) WebSocketResult {
    return c.emscripten_websocket_set_onerror_callback(websocket, userData, callback);
}

pub fn setCloseCallback(websocket: WebSocket, userData: ?*anyopaque, callback: CloseCallback) WebSocketResult {
    return c.emscripten_websocket_set_onclose_callback(websocket, userData, callback);
}

pub fn sendText(websocket: WebSocket, text: []const u8) WebSocketResult {
    return c.emscripten_websocket_send_utf8_text(websocket, text.ptr);
}

pub fn sendBinary(websocket: WebSocket, data: []const u8) WebSocketResult {
    return c.emscripten_websocket_send_binary(websocket, data.ptr, data.len);
}

pub fn close(websocket: WebSocket, code: u16, reason: ?[:0]const u8) WebSocketResult {
    const reason_ptr = if (reason) |r| r.ptr else null;
    return c.emscripten_websocket_close(websocket, code, reason_ptr);
}

pub fn destroy(websocket: WebSocket) WebSocketResult {
    return c.emscripten_websocket_delete(websocket);
}

pub fn isSupported() bool {
    return c.emscripten_websocket_is_supported() == true;
}

// Helper to get message data as string
pub fn getMessageText(event: [*c]const c.EmscriptenWebSocketMessageEvent) [:0]const u8 {
    return std.mem.span(@as([*:0]const u8, @ptrCast(event.*.data)));
}

// Helper to get message data as bytes
pub fn getMessageBinary(event: [*c]const c.EmscriptenWebSocketMessageEvent) []const u8 {
    return @as([*]const u8, @ptrCast(event.*.data))[0..event.*.numBytes];
}

// Add the missing getReadyState function
pub fn getReadyState(websocket: WebSocket) u16 {
    var ready_state: u16 = 0;
    _ = c.emscripten_websocket_get_ready_state(websocket, &ready_state);
    return ready_state;
}
