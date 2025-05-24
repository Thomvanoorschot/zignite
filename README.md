# Zignite: Cross-Platform Graphics Engine

## Overview

Zignite is a modern graphics engine built with the Zig programming language, designed for cross-platform development with native performance and WebAssembly compatibility. This project leverages Zig's memory safety and performance characteristics to create a robust foundation for interactive applications, games, and visualization tools.

## Goals
• Build a lightweight, high-performance graphics engine using modern APIs \
• Explore Zig's compile-time features and manual memory management capabilities \
• Create seamless cross-platform deployment (native + WebAssembly) \
• Integrate immediate-mode GUI capabilities with Dear ImGui \
• Provide a clean, type-safe API for graphics programming \

## Architecture 

Zignite is built around modern graphics APIs and cross-platform libraries: \
• **WebGPU Backend** – Cross-platform graphics API for native and web targets \
• **GLFW Integration** – Window management, input handling, and context creation \
• **Dear ImGui** – Immediate-mode GUI system for developer tools and interfaces \
• **Engine Core** – Unified rendering loop and resource management \
• **Emscripten Support** – WebAssembly compilation for browser deployment

## Features

• Cross-platform rendering with WebGPU (native + web) \
• Memory-efficient implementation with Zig's allocator system \
• Integrated Dear ImGui for rapid UI development \
• WebAssembly compilation for browser deployment \
• Type-safe graphics API bindings \
• Minimal dependencies and fast compilation times

## Running Examples

The project includes several examples demonstrating engine capabilities:

### Web/WASM Examples

To build and run examples in the browser using WebAssembly:

```bash
# Run the simple ImGui example
zig build run-simple_imgui -Dtarget=wasm32-emscripten

# The example will automatically open in Chrome browser
```

### Available Examples

- **simple_imgui** - Basic ImGui integration with rendering loop

### Prerequisites

- Zig compiler (latest stable version)
- Emscripten SDK (automatically handled by the build system)
- Chrome browser (for running web examples)

The build system will automatically download and configure Emscripten if it's not already installed.

## Learning Outcomes

This project provides hands-on experience with: \
• Zig's comptime features and build system \
• Manual memory management with custom allocators \
• Cross-platform graphics programming with WebGPU \
• C interoperability and binding generation \
• WebAssembly deployment strategies \
• Modern graphics pipeline architecture

## Project Status

🚧 **Active Development** – Core engine functionality is implemented with WebGPU + ImGui integration. WebAssembly deployment is supported via Emscripten.
