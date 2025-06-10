const std = @import("std");
const pthread = @import("pthread.zig");

pub const WebWorker = struct {
    allocator: std.mem.Allocator,
    callback_ctx: *anyopaque,
    on_entrypoint: ?*const fn (context: *anyopaque) anyerror!void = null,

    const Self = @This();

    pub fn init(
        allocator: std.mem.Allocator,
        callback_ctx: *anyopaque,
        on_entrypoint: ?*const fn (context: *anyopaque) anyerror!void,
    ) !*Self {
        const self = try allocator.create(Self);
        self.* = Self{
            .allocator = allocator,
            .callback_ctx = callback_ctx,
            .on_entrypoint = on_entrypoint,
        };
        var thread: pthread.pthread_t = undefined;
        const rc = pthread.pthread_create(&thread, null, workerEntrypoint, self);
        if (rc != 0) {
            std.debug.print("Failed to create thread\n", .{});
            return error.FailedToCreateThread;
        }

        return self;
    }
    fn workerEntrypoint(self_: ?*anyopaque) callconv(.c) ?*anyopaque {
        const self: *Self = @ptrCast(@alignCast(self_));

        if (self.on_entrypoint) |entrypoint| {
            entrypoint(self.callback_ctx) catch |err| {
                std.debug.print("Error in worker_entrypoint: {}\n", .{err});
                return null;
            };
        }
        return null;
    }
};
