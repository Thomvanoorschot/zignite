const std = @import("std");
const glfw = @import("glfw.zig");
const imgui_glfw = @import("imgui_glfw.zig");
const imgui = @import("imgui.zig");
const webgpu = @import("webgpu.zig");
const imgui_webgpu = @import("imgui_webgpu.zig");
const implot = @import("implot.zig");
const imgui_utils = @import("imgui_utils.zig");
const em = @import("emscripten.zig");
const builtin = @import("builtin");

const GLFWWindow = glfw.GLFWwindow;
const WebGPUContext = webgpu.Context;
const ImGuiContext = imgui.ImGuiContext;

const OutWriter = @TypeOf(std.io.getStdOut().writer());
const ErrWriter = @TypeOf(std.io.getStdOut().writer());

const EngineOptions = struct {
    title: []const u8 = "Zignite",
    with_imgui: bool = true,
    with_implot: bool = false,
    show_fps: bool = true,
    with_docking: bool = true,
    width: u32 = 1024,
    height: u32 = 768,
};

const FrameStats = struct {
    time: f64 = 0.0,
    delta_time: f32 = 0.0,
    fps_counter: u32 = 0,
    fps: f64 = 0.0,
    average_cpu_time: f64 = 0.0,
    previous_time: f64 = 0.0,
    fps_refresh_time: f64 = 0.0,
    cpu_frame_number: u64 = 0,
    gpu_frame_number: u64 = 0,

    fn tick(stats: *FrameStats, now_secs: f64) void {
        stats.time = now_secs;
        stats.delta_time = @floatCast(stats.time - stats.previous_time);
        stats.previous_time = stats.time;

        if ((stats.time - stats.fps_refresh_time) >= 1.0) {
            const t = stats.time - stats.fps_refresh_time;
            const fps = @as(f64, @floatFromInt(stats.fps_counter)) / t;
            const ms = (1.0 / fps) * 1000.0;

            stats.fps = fps;
            stats.average_cpu_time = ms;
            stats.fps_refresh_time = stats.time;
            stats.fps_counter = 0;
        }
        stats.fps_counter += 1;
        stats.cpu_frame_number += 1;
    }
};

pub const Engine = struct {
    options: EngineOptions,
    stdout: OutWriter,
    stdErr: ErrWriter,
    window: *GLFWWindow,
    webgpu_context: *WebGPUContext,
    imgui_context: ?*ImGuiContext,
    frame_stats: FrameStats,
    user_render_fn: ?*const fn () void = null,
    const Self = @This();

    pub fn init(options: EngineOptions) !Self {
        var self: Self = undefined;

        self.options = options;
        self.stdout = std.io.getStdOut().writer();
        self.stdErr = std.io.getStdErr().writer();
        self.window = try initGLFWWindow(
            self.options.title,
            self.options.width,
            self.options.height,
        );
        self.imgui_context = try self.initImGuiContext();
        self.webgpu_context = try self.initWebGPUContext();
        self.initImgGuiBackend(self.webgpu_context);
        try self.initImPlotContext();
        self.frame_stats = FrameStats{};

        return self;
    }

    pub fn deinit(self: *Self) void {
        glfw.glfwDestroyWindow(self.window);
        glfw.glfwTerminate();
        if (self.options.with_imgui) {
            imgui.igDestroyContext(self.imgui_context.?);
        }
    }

    fn initWebGPUContext(self: *Self) !*WebGPUContext {
        var width: c_int = 0;
        var height: c_int = 0;
        glfw.glfwGetFramebufferSize(self.window, &width, &height);
        const context = try webgpu.Context.init(std.heap.c_allocator, .{
            @intCast(width),
            @intCast(height),
        }, self.window);

        return context;
    }

    fn deviceErrorCallback(type_: webgpu.WGPUErrorType, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void {
        _ = userdata;
        std.log.err("WebGPU Device Error (type {}): {s}", .{ type_, message });
    }

    fn initGLFWWindow(title: []const u8, width: u32, height: u32) !*GLFWWindow {
        _ = glfw.glfwInit();
        imgui_glfw.SetNextWindowCanvasSelector("#canvas");
        glfw.glfwWindowHint(glfw.GLFW_CLIENT_API, glfw.GLFW_NO_API);
        const window = glfw.glfwCreateWindow(@intCast(width), @intCast(height), title.ptr, null, null);
        imgui_glfw.MakeCanvasResizable(@ptrCast(window));
        if (window == null) {
            return error.FailedToCreateGLFWWindow;
        }
        glfw.glfwMakeContextCurrent(window);
        glfw.glfwSwapInterval(1);

        return window.?;
    }

    fn initImPlotContext(self: *Self) !void {
        if (!self.options.with_implot) {
            return;
        }

        const context = implot.ImPlot_CreateContext();
        if (context == null) {
            return error.FailedToCreateImPlotContext;
        }
        return;
    }
    fn initImGuiContext(self: *Self) !?*ImGuiContext {
        if (!self.options.with_imgui) {
            return null;
        }

        const context = imgui.igCreateContext(null);
        if (context == null) {
            return error.FailedToCreateImGuiContext;
        }

        const io = imgui.igGetIO_Nil();
        if (self.options.with_docking) {
            io.*.ConfigFlags |= imgui.ImGuiConfigFlags_DockingEnable;
        }

        return context;
    }
    fn initImgGuiBackend(self: *Self, webgpu_context: *WebGPUContext) void {
        if (!self.options.with_imgui) {
            return;
        }
        imgui_webgpu.init(
            @ptrCast(self.window),
            @ptrCast(webgpu_context.device),
            webgpu_context.swapchain_descriptor.format,
            webgpu.WGPUTextureFormat_Undefined,
        );
    }

    pub fn startRender(self: *Self) bool {
        if (glfw.glfwWindowShouldClose(self.window) == 1) {
            return false;
        }

        imgui_webgpu.newFrame(
            self.webgpu_context.swapchain_descriptor.width,
            self.webgpu_context.swapchain_descriptor.height,
        );
        if (self.options.with_docking) {
            _ = imgui.igDockSpaceOverViewport(
                0,
                null,
                imgui.ImGuiDockNodeFlags_PassthruCentralNode,
                null,
            );
        }
        return true;
    }

    pub fn endRender(self: *Self) void {
        glfw.glfwPollEvents();
        if (self.options.show_fps) {
            imgui_utils.renderFPS(self.frame_stats.fps) catch |err| {
                self.stdErr.print("Failed to print FPS: {}\n", .{err}) catch unreachable;
            };
        }

        std.log.info("[Engine] Getting surface texture view...", .{});
        const surface_texv = self.webgpu_context.getCurrentTextureView() catch |err| {
            self.stdErr.print("Failed to get surface texture view: {}\n", .{err}) catch unreachable;
            return;
        };
        defer webgpu.wgpuTextureViewRelease(surface_texv);
        std.log.info("[Engine] Surface texture view acquired successfully", .{});

        const commands = commands: {
            std.log.info("[Engine] Creating command encoder...", .{});
            const encoder = webgpu.wgpuDeviceCreateCommandEncoder(self.webgpu_context.device, null);
            defer webgpu.wgpuCommandEncoderRelease(encoder);
            std.log.info("[Engine] Command encoder created: {?}", .{encoder});

            {
                std.log.info("[Engine] Beginning render pass...", .{});
                const pass = webgpu.beginRenderPassSimple(
                    encoder,
                    webgpu.WGPULoadOp_Load,
                    surface_texv,
                    null,
                    null,
                    null,
                );
                defer webgpu.wgpuRenderPassEncoderRelease(pass);
                defer webgpu.wgpuRenderPassEncoderEnd(pass);
                std.log.info("[Engine] Render pass created: {?}", .{pass});

                std.log.info("[Engine] About to call imgui_webgpu.draw()...", .{});
                imgui_webgpu.draw(@ptrCast(pass));
                std.log.info("[Engine] imgui_webgpu.draw() completed", .{});
            }
            std.log.info("[Engine] Finishing command encoder...", .{});
            break :commands webgpu.wgpuCommandEncoderFinish(encoder, null);
        };
        defer webgpu.wgpuCommandBufferRelease(commands);
        std.log.info("[Engine] Command buffer created: {?}", .{commands});

        std.log.info("[Engine] Submitting commands to queue...", .{});
        const command_buffers = [_]webgpu.WGPUCommandBuffer{commands};
        webgpu.wgpuQueueSubmit(self.webgpu_context.queue, 1, &command_buffers);
        std.log.info("[Engine] Commands submitted", .{});

        if (builtin.target.os.tag != .emscripten) {
            std.log.info("[Engine] About to present...", .{});
            self.webgpu_context.present();
            std.log.info("[Engine] Present completed", .{});
        }

        self.frame_stats.tick(glfw.glfwGetTime());

        if (builtin.target.os.tag == .emscripten) {
            em.emscripten_sleep(1);
        }
    }

    pub fn run(self: *Self, render_fn: *const fn () void) void {
        if (builtin.target.os.tag == .emscripten) {
            self.user_render_fn = render_fn;
            global_engine_for_callback = self;
            em.emscripten_set_main_loop(emscriptenEngineMainLoop, 0, true);
        } else {
            while (self.startRender()) {
                defer self.endRender();
                render_fn();
            }
        }
    }
};

var global_engine_for_callback: ?*Engine = null;

fn emscriptenEngineMainLoop() callconv(.C) void {
    if (global_engine_for_callback) |e| {
        if (e.startRender()) {
            defer e.endRender();
            if (e.user_render_fn) |render_fn| {
                render_fn();
            }
        } else {
            em.emscripten_cancel_main_loop();
        }
    }
}
