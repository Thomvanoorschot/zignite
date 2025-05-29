const std = @import("std");
const pthread = @import("pthread.zig");

pub fn WebWorker(comptime SharedDataType: type) type {
    return struct {
        shared_data: *SharedDataType,
        worker_entrypoint: ?*const fn (shared_data: *SharedDataType) void = undefined,

        const Self = @This();

        pub fn init(
            shared_data: *SharedDataType,
            worker_entrypoint: ?*const fn (shared_data: *SharedDataType) void,
        ) !Self {
            var self = Self{
                .shared_data = shared_data,
                .worker_entrypoint = worker_entrypoint,
            };
            var thread: pthread.pthread_t = undefined;
            const rc = pthread.pthread_create(&thread, null, workerEntrypoint, &self);
            if (rc != 0) {
                std.debug.print("Failed to create thread\n", .{});
                return error.FailedToCreateThread;
            }

            return self;
        }
        fn workerEntrypoint(self_: ?*anyopaque) callconv(.c) ?*anyopaque {
            const self: *Self = @ptrCast(@alignCast(self_));

            if (self.worker_entrypoint) |entrypoint| {
                entrypoint(self.shared_data);
            }
            return null;
        }
    };
}
