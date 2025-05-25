const std = @import("std");
const zignite = @import("zignite");
const pthread = zignite.pthread;

const SharedData = struct {
    number: i32,
    mutex: pthread.pthread_mutex_t,
    running: bool,
};

fn workerThread(arg: ?*anyopaque) callconv(.c) ?*anyopaque {
    // Cast to our struct pointer
    const shared: *SharedData = @ptrCast(@alignCast(arg));

    var counter: i32 = 0;

    while (shared.running) {
        // Lock the mutex before updating the shared data
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        shared.number = counter;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);

        counter += 1;

        // Sleep for a bit to make the output readable
        std.time.sleep(100 * std.time.ns_per_ms); // 100ms

        // Stop after 50 updates for this example
        if (counter >= 50) {
            shared.running = false;
        }
    }

    return null;
}

pub fn main() void {
    const stdout = std.io.getStdOut().writer();
    var shared = SharedData{
        .number = 0,
        .mutex = std.mem.zeroes(pthread.pthread_mutex_t),
        .running = true,
    };

    if (pthread.pthread_mutex_init(&shared.mutex, null) != 0) {
        std.debug.print("Failed to initialize mutex\n", .{});
        return;
    }
    defer _ = pthread.pthread_mutex_destroy(&shared.mutex);

    var thread: pthread.pthread_t = undefined;
    const rc = pthread.pthread_create(
        &thread,
        null,
        workerThread,
        &shared,
    );
    if (rc != 0) {
        std.debug.print("Failed to create thread\n", .{});
        return;
    }

    var last_printed: i32 = -1;
    while (shared.running) {
        _ = pthread.pthread_mutex_lock(&shared.mutex);
        const current_number = shared.number;
        const still_running = shared.running;
        _ = pthread.pthread_mutex_unlock(&shared.mutex);

        // Only print if the number changed to avoid spam
        if (current_number != last_printed) {
            stdout.print("Main thread reads: {d}\n", .{current_number}) catch unreachable;
            last_printed = current_number;
        }

        if (!still_running) break;

        // Sleep briefly to avoid busy waiting
        std.time.sleep(50 * std.time.ns_per_ms); // 50ms
    }

    // Wait for worker to finish
    _ = pthread.pthread_join(thread, null);

    stdout.print("Final shared number: {d}\n", .{shared.number}) catch unreachable;
    stdout.print("Program finished.\n", .{}) catch unreachable;
}
