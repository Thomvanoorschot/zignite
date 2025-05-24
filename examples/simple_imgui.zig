const zignite = @import("zignite");
const std = @import("std");

const engine = zignite.engine;

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, world!\n", .{});
    var e = try engine.Engine.init(.{
        .width = 1024,
        .height = 768,
    });
    defer e.deinit();

    try e.startRenderLoop();
}
