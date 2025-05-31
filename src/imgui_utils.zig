const std = @import("std");
const imgui = @import("imgui.zig");

pub fn renderFPS(fps: f64) !void {
    const draw_list = imgui.igGetBackgroundDrawList(null);

    var fps_buf: [16]u8 = undefined;
    const fps_text = try std.fmt.bufPrint(&fps_buf, "FPS: {d:.1}", .{fps});

    const io = imgui.igGetIO_Nil();
    const display_width = io.*.DisplaySize.x;

    imgui.ImDrawList_AddText_Vec2(
        draw_list,
        imgui.ImVec2{ .x = display_width - 80.0, .y = 20.0 },
        0xFF00FF00,
        fps_text.ptr,
        fps_text.ptr + fps_text.len,
    );
}
