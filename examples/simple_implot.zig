const zignite = @import("zignite");
const std = @import("std");
const implot = zignite.implot;

const engine = zignite.engine;

pub fn main() !void {
    var e = try engine.Engine.init(.{
        .width = 1024,
        .height = 768,
        .with_implot = true,
    });
    defer e.deinit();

    while (e.startRender()) {
        defer e.endRender();
        implot.ImPlot_ShowDemoWindow(null);
    }
}
