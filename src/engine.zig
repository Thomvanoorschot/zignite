const std = @import("std");
const glfw = @import("glfw.zig");
const imgui_glfw = @import("imgui_glfw.zig");
const imgui = @import("imgui.zig");
const webgpu = @import("webgpu.zig");
const imgui_webgpu = @import("imgui_webgpu.zig");

const GLFWWindow = glfw.GLFWwindow;
const WebGPUContext = webgpu.Context;
const ImGuiContext = imgui.ImGuiContext;

const OutWriter = @TypeOf(std.io.getStdOut().writer());
const ErrWriter = @TypeOf(std.io.getStdOut().writer());

const EngineOptions = struct {
    title: []const u8 = "Zignite",
    with_imgui: bool = true,
    width: u32 = 1024,
    height: u32 = 768,
};

pub const Engine = struct {
    options: EngineOptions,
    stdout: OutWriter,
    stdErr: ErrWriter,
    window: *GLFWWindow,
    webgpu_context: *WebGPUContext,
    imgui_context: ?*ImGuiContext,
    const Self = @This();

    pub fn init(options: EngineOptions) !Self {
        var self: Self = undefined;

        self.options = options;
        self.stdout = std.io.getStdOut().writer();
        self.stdErr = std.io.getStdErr().writer();
        self.window = try initGLFWWindow(self.options.title, self.options.width, self.options.height);
        self.imgui_context = try self.initImGuiContext();
        self.webgpu_context = try self.initWebGPUContext();
        self.initImgGuiBackend(self.webgpu_context);

        return self;
    }

    pub fn deinit(self: *Self) void {
        glfw.glfwDestroyWindow(self.window);
        glfw.glfwTerminate();
        if (self.options.with_imgui) {
            imgui.ImGui_DestroyContext(self.imgui_context.?);
        }
    }

    fn initWebGPUContext(self: *Self) !*WebGPUContext {
        var width: c_int = 0;
        var height: c_int = 0;
        glfw.glfwGetFramebufferSize(self.window, &width, &height);
        std.debug.print("Framebuffer size: {d}x{d}\n", .{ width, height });
        return try webgpu.Context.init(std.heap.c_allocator, .{
            @intCast(width),
            @intCast(height),
        });
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
        return window.?;
    }

    fn initImGuiContext(self: *Self) !?*ImGuiContext {
        if (!self.options.with_imgui) {
            return null;
        }

        const context = imgui.ImGui_CreateContext(null);
        if (context == null) {
            return error.FailedToCreateImGuiContext;
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
            webgpu.WGPUTextureFormat_BGRA8Unorm,
            webgpu.WGPUTextureFormat_Undefined,
        );
    }

    pub fn startRenderLoop(self: *Self) !void {
        while (glfw.glfwWindowShouldClose(self.window) == 0) {
            glfw.glfwPollEvents();
            try self.stdout.print("Rendering...\n", .{});

            imgui_webgpu.newFrame(
                self.webgpu_context.swapchain_descriptor.width,
                self.webgpu_context.swapchain_descriptor.height,
            );

            imgui.ImGui_ShowDemoWindow(null);

            const swapchain_texv = imgui_webgpu.wgpuSwapChainGetCurrentTextureView(@ptrCast(self.webgpu_context.swapchain));
            defer imgui_webgpu.wgpuTextureViewRelease(swapchain_texv);

            const commands = commands: {
                const encoder = webgpu.wgpuDeviceCreateCommandEncoder(self.webgpu_context.device, null);
                defer webgpu.wgpuCommandEncoderRelease(encoder);
                {
                    const pass = webgpu.beginRenderPassSimple(
                        encoder,
                        webgpu.WGPULoadOp_Load,
                        @ptrCast(swapchain_texv),
                        null,
                        null,
                        null,
                    );
                    defer webgpu.wgpuRenderPassEncoderRelease(pass);
                    defer webgpu.wgpuRenderPassEncoderEnd(pass);
                    imgui_webgpu.draw(@ptrCast(pass));
                }
                break :commands webgpu.wgpuCommandEncoderFinish(encoder, null);
            };
            defer webgpu.wgpuCommandBufferRelease(commands);

            const command_buffers = [_]webgpu.WGPUCommandBuffer{commands};
            webgpu.wgpuQueueSubmit(self.webgpu_context.queue, 1, &command_buffers);

            webgpu.emscripten_sleep(16);
        }
    }
};
