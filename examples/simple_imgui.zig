const zignite = @import("zignite");
const std = @import("std");

const engine = zignite.engine;

pub fn main() !void {
    var e = try engine.Engine.init(.{
        .width = 1024,
        .height = 768,
    });
    defer e.deinit();

    try e.startRenderLoop();
}
