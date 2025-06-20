pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub extern fn emscripten_asm_const_int(code: [*c]const u8, arg_sigs: [*c]const u8, ...) c_int;
pub extern fn emscripten_asm_const_ptr(code: [*c]const u8, arg_sigs: [*c]const u8, ...) ?*anyopaque;
pub extern fn emscripten_asm_const_double(code: [*c]const u8, arg_sigs: [*c]const u8, ...) f64;
pub extern fn emscripten_asm_const_int_sync_on_main_thread(code: [*c]const u8, arg_sigs: [*c]const u8, ...) c_int;
pub extern fn emscripten_asm_const_ptr_sync_on_main_thread(code: [*c]const u8, arg_sigs: [*c]const u8, ...) ?*anyopaque;
pub extern fn emscripten_asm_const_double_sync_on_main_thread(code: [*c]const u8, arg_sigs: [*c]const u8, ...) f64;
pub extern fn emscripten_asm_const_async_on_main_thread(code: [*c]const u8, arg_sigs: [*c]const u8, ...) void;
pub const emscripten_align1_short = c_short;
pub const emscripten_align4_int64 = c_longlong;
pub const emscripten_align2_int64 = c_longlong;
pub const emscripten_align1_int64 = c_longlong;
pub const emscripten_align2_int = c_int;
pub const emscripten_align1_int = c_int;
pub const emscripten_align2_float = f32;
pub const emscripten_align1_float = f32;
pub const emscripten_align4_double = f64;
pub const emscripten_align2_double = f64;
pub const emscripten_align1_double = f64;
pub const em_callback_func = ?*const fn () callconv(.c) void;
pub const em_arg_callback_func = ?*const fn (?*anyopaque) callconv(.c) void;
pub const em_str_callback_func = ?*const fn ([*c]const u8) callconv(.c) void;
pub const wchar_t = c_int;
pub extern fn atoi([*c]const u8) c_int;
pub extern fn atol([*c]const u8) c_long;
pub extern fn atoll([*c]const u8) c_longlong;
pub extern fn atof([*c]const u8) f64;
pub extern fn strtof([*c]const u8, [*c][*c]u8) f32;
pub extern fn strtod([*c]const u8, [*c][*c]u8) f64;
pub extern fn strtold([*c]const u8, [*c][*c]u8) c_longdouble;
pub extern fn strtol([*c]const u8, [*c][*c]u8, c_int) c_long;
pub extern fn strtoul([*c]const u8, [*c][*c]u8, c_int) c_ulong;
pub extern fn strtoll([*c]const u8, [*c][*c]u8, c_int) c_longlong;
pub extern fn strtoull([*c]const u8, [*c][*c]u8, c_int) c_ulonglong;
pub extern fn rand() c_int;
pub extern fn srand(c_uint) void;
pub extern fn malloc(c_ulong) ?*anyopaque;
pub extern fn calloc(c_ulong, c_ulong) ?*anyopaque;
pub extern fn realloc(?*anyopaque, c_ulong) ?*anyopaque;
pub extern fn free(?*anyopaque) void;
pub extern fn aligned_alloc(c_ulong, c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(?*const fn () callconv(.c) void) c_int;
pub extern fn exit(c_int) noreturn;
pub extern fn _Exit(c_int) noreturn;
pub extern fn at_quick_exit(?*const fn () callconv(.c) void) c_int;
pub extern fn quick_exit(c_int) void;
pub extern fn getenv([*c]const u8) [*c]u8;
pub extern fn system([*c]const u8) c_int;
pub extern fn bsearch(?*const anyopaque, ?*const anyopaque, usize, usize, ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int) ?*anyopaque;
pub extern fn qsort(?*anyopaque, usize, usize, ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int) void;
pub extern fn abs(c_int) c_int;
pub extern fn labs(c_long) c_long;
pub extern fn llabs(c_longlong) c_longlong;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn div(c_int, c_int) div_t;
pub extern fn ldiv(c_long, c_long) ldiv_t;
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub extern fn mblen([*c]const u8, usize) c_int;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn posix_memalign([*c]?*anyopaque, usize, usize) c_int;
pub extern fn setenv([*c]const u8, [*c]const u8, c_int) c_int;
pub extern fn unsetenv([*c]const u8) c_int;
pub extern fn mkstemp([*c]u8) c_int;
pub extern fn mkostemp([*c]u8, c_int) c_int;
pub extern fn mkdtemp([*c]u8) [*c]u8;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn rand_r([*c]c_uint) c_int;
pub extern fn realpath(noalias [*c]const u8, noalias [*c]u8) [*c]u8;
pub extern fn random() c_long;
pub extern fn srandom(c_uint) void;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn setstate([*c]u8) [*c]u8;
pub extern fn putenv([*c]u8) c_int;
pub extern fn posix_openpt(c_int) c_int;
pub extern fn grantpt(c_int) c_int;
pub extern fn unlockpt(c_int) c_int;
pub extern fn ptsname(c_int) [*c]u8;
pub extern fn l64a(c_long) [*c]u8;
pub extern fn a64l([*c]const u8) c_long;
pub extern fn setkey([*c]const u8) void;
pub extern fn drand48() f64;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn srand48(c_long) void;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn alloca(c_ulong) ?*anyopaque;
pub extern fn mktemp([*c]u8) [*c]u8;
pub extern fn mkstemps([*c]u8, c_int) c_int;
pub extern fn mkostemps([*c]u8, c_int, c_int) c_int;
pub extern fn valloc(usize) ?*anyopaque;
pub extern fn memalign(c_ulong, c_ulong) ?*anyopaque;
pub extern fn getloadavg([*c]f64, c_int) c_int;
pub extern fn clearenv() c_int;
pub extern fn reallocarray(?*anyopaque, usize, usize) ?*anyopaque;
pub extern fn qsort_r(?*anyopaque, usize, usize, ?*const fn (?*const anyopaque, ?*const anyopaque, ?*anyopaque) callconv(.c) c_int, ?*anyopaque) void;
pub const struct__em_promise = opaque {};
pub const em_promise_t = ?*struct__em_promise;
pub const EM_PROMISE_FULFILL: c_int = 0;
pub const EM_PROMISE_MATCH: c_int = 1;
pub const EM_PROMISE_MATCH_RELEASE: c_int = 2;
pub const EM_PROMISE_REJECT: c_int = 3;
pub const enum_em_promise_result_t = c_uint;
pub const em_promise_result_t = enum_em_promise_result_t;
pub const em_promise_callback_t = ?*const fn ([*c]?*anyopaque, ?*anyopaque, ?*anyopaque) callconv(.c) em_promise_result_t;
pub extern fn emscripten_promise_create() em_promise_t;
pub extern fn emscripten_promise_destroy(promise: em_promise_t) void;
pub extern fn emscripten_promise_resolve(promise: em_promise_t, result: em_promise_result_t, value: ?*anyopaque) void;
pub extern fn emscripten_promise_then(promise: em_promise_t, on_fulfilled: em_promise_callback_t, on_rejected: em_promise_callback_t, data: ?*anyopaque) em_promise_t;
pub extern fn emscripten_promise_all(promises: [*c]em_promise_t, results: [*c]?*anyopaque, num_promises: usize) em_promise_t;
pub const struct_em_settled_result_t = extern struct {
    result: em_promise_result_t = @import("std").mem.zeroes(em_promise_result_t),
    value: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const em_settled_result_t = struct_em_settled_result_t;
pub extern fn emscripten_promise_all_settled(promises: [*c]em_promise_t, results: [*c]em_settled_result_t, num_promises: usize) em_promise_t;
pub extern fn emscripten_promise_any(promises: [*c]em_promise_t, errors: [*c]?*anyopaque, num_promises: usize) em_promise_t;
pub extern fn emscripten_promise_race(promises: [*c]em_promise_t, num_promises: usize) em_promise_t;
pub extern fn emscripten_promise_await(promise: em_promise_t) em_settled_result_t;
pub extern fn emscripten_async_wget(url: [*c]const u8, file: [*c]const u8, onload: em_str_callback_func, onerror: em_str_callback_func) void;
pub const em_async_wget_onload_func = ?*const fn (?*anyopaque, ?*anyopaque, c_int) callconv(.c) void;
pub extern fn emscripten_async_wget_data(url: [*c]const u8, userdata: ?*anyopaque, onload: em_async_wget_onload_func, onerror: em_arg_callback_func) void;
pub const em_async_wget2_onload_func = ?*const fn (c_uint, ?*anyopaque, [*c]const u8) callconv(.c) void;
pub const em_async_wget2_onstatus_func = ?*const fn (c_uint, ?*anyopaque, c_int) callconv(.c) void;
pub extern fn emscripten_async_wget2(url: [*c]const u8, file: [*c]const u8, requesttype: [*c]const u8, param: [*c]const u8, userdata: ?*anyopaque, onload: em_async_wget2_onload_func, onerror: em_async_wget2_onstatus_func, onprogress: em_async_wget2_onstatus_func) c_int;
pub const em_async_wget2_data_onload_func = ?*const fn (c_uint, ?*anyopaque, ?*anyopaque, c_uint) callconv(.c) void;
pub const em_async_wget2_data_onerror_func = ?*const fn (c_uint, ?*anyopaque, c_int, [*c]const u8) callconv(.c) void;
pub const em_async_wget2_data_onprogress_func = ?*const fn (c_uint, ?*anyopaque, c_int, c_int) callconv(.c) void;
pub extern fn emscripten_async_wget2_data(url: [*c]const u8, requesttype: [*c]const u8, param: [*c]const u8, arg: ?*anyopaque, free: c_int, onload: em_async_wget2_data_onload_func, onerror: em_async_wget2_data_onerror_func, onprogress: em_async_wget2_data_onprogress_func) c_int;
pub extern fn emscripten_async_wget2_abort(handle: c_int) void;
pub extern fn emscripten_wget(url: [*c]const u8, file: [*c]const u8) c_int;
pub extern fn emscripten_wget_data(url: [*c]const u8, pbuffer: [*c]?*anyopaque, pnum: [*c]c_int, perror: [*c]c_int) void;
pub extern fn emscripten_run_script(script: [*c]const u8) void;
pub extern fn emscripten_run_script_int(script: [*c]const u8) c_int;
pub extern fn emscripten_run_script_string(script: [*c]const u8) [*c]u8;
pub extern fn emscripten_async_run_script(script: [*c]const u8, millis: c_int) void;
pub extern fn emscripten_async_load_script(script: [*c]const u8, onload: em_callback_func, onerror: em_callback_func) void;
pub extern fn emscripten_set_main_loop(func: em_callback_func, fps: c_int, simulate_infinite_loop: bool) void;
pub extern fn emscripten_set_main_loop_timing(mode: c_int, value: c_int) c_int;
pub extern fn emscripten_get_main_loop_timing(mode: [*c]c_int, value: [*c]c_int) void;
pub extern fn emscripten_set_main_loop_arg(func: em_arg_callback_func, arg: ?*anyopaque, fps: c_int, simulate_infinite_loop: bool) void;
pub extern fn emscripten_pause_main_loop() void;
pub extern fn emscripten_resume_main_loop() void;
pub extern fn emscripten_cancel_main_loop() void;
pub const em_socket_callback = ?*const fn (c_int, ?*anyopaque) callconv(.c) void;
pub const em_socket_error_callback = ?*const fn (c_int, c_int, [*c]const u8, ?*anyopaque) callconv(.c) void;
pub extern fn emscripten_set_socket_error_callback(userData: ?*anyopaque, callback: em_socket_error_callback) void;
pub extern fn emscripten_set_socket_open_callback(userData: ?*anyopaque, callback: em_socket_callback) void;
pub extern fn emscripten_set_socket_listen_callback(userData: ?*anyopaque, callback: em_socket_callback) void;
pub extern fn emscripten_set_socket_connection_callback(userData: ?*anyopaque, callback: em_socket_callback) void;
pub extern fn emscripten_set_socket_message_callback(userData: ?*anyopaque, callback: em_socket_callback) void;
pub extern fn emscripten_set_socket_close_callback(userData: ?*anyopaque, callback: em_socket_callback) void;
pub extern fn _emscripten_push_main_loop_blocker(func: em_arg_callback_func, arg: ?*anyopaque, name: [*c]const u8) void;
pub extern fn _emscripten_push_uncounted_main_loop_blocker(func: em_arg_callback_func, arg: ?*anyopaque, name: [*c]const u8) void;
pub extern fn emscripten_set_main_loop_expected_blockers(num: c_int) void;
pub extern fn emscripten_async_call(func: em_arg_callback_func, arg: ?*anyopaque, millis: c_int) void;
pub extern fn emscripten_exit_with_live_runtime() noreturn;
pub extern fn emscripten_force_exit(status: c_int) noreturn;
pub extern fn emscripten_get_device_pixel_ratio() f64;
pub extern fn emscripten_get_window_title() [*c]u8;
pub extern fn emscripten_set_window_title([*c]const u8) void;
pub extern fn emscripten_get_screen_size(width: [*c]c_int, height: [*c]c_int) void;
pub extern fn emscripten_hide_mouse() void;
pub extern fn emscripten_set_canvas_size(width: c_int, height: c_int) void;
pub extern fn emscripten_get_canvas_size(width: [*c]c_int, height: [*c]c_int, isFullscreen: [*c]c_int) void;
pub extern fn emscripten_get_now() f64;
pub extern fn emscripten_random() f32;
pub const em_idb_onload_func = ?*const fn (?*anyopaque, ?*anyopaque, c_int) callconv(.c) void;
pub extern fn emscripten_idb_async_load(db_name: [*c]const u8, file_id: [*c]const u8, arg: ?*anyopaque, onload: em_idb_onload_func, onerror: em_arg_callback_func) void;
pub extern fn emscripten_idb_async_store(db_name: [*c]const u8, file_id: [*c]const u8, ptr: ?*anyopaque, num: c_int, arg: ?*anyopaque, onstore: em_arg_callback_func, onerror: em_arg_callback_func) void;
pub extern fn emscripten_idb_async_delete(db_name: [*c]const u8, file_id: [*c]const u8, arg: ?*anyopaque, ondelete: em_arg_callback_func, onerror: em_arg_callback_func) void;
pub const em_idb_exists_func = ?*const fn (?*anyopaque, c_int) callconv(.c) void;
pub extern fn emscripten_idb_async_exists(db_name: [*c]const u8, file_id: [*c]const u8, arg: ?*anyopaque, oncheck: em_idb_exists_func, onerror: em_arg_callback_func) void;
pub extern fn emscripten_idb_async_clear(db_name: [*c]const u8, arg: ?*anyopaque, onclear: em_arg_callback_func, onerror: em_arg_callback_func) void;
pub extern fn emscripten_idb_load(db_name: [*c]const u8, file_id: [*c]const u8, pbuffer: [*c]?*anyopaque, pnum: [*c]c_int, perror: [*c]c_int) void;
pub extern fn emscripten_idb_store(db_name: [*c]const u8, file_id: [*c]const u8, buffer: ?*anyopaque, num: c_int, perror: [*c]c_int) void;
pub extern fn emscripten_idb_delete(db_name: [*c]const u8, file_id: [*c]const u8, perror: [*c]c_int) void;
pub extern fn emscripten_idb_exists(db_name: [*c]const u8, file_id: [*c]const u8, pexists: [*c]c_int, perror: [*c]c_int) void;
pub extern fn emscripten_idb_clear(db_name: [*c]const u8, perror: [*c]c_int) void;
pub extern fn emscripten_idb_load_blob(db_name: [*c]const u8, file_id: [*c]const u8, pblob: [*c]c_int, perror: [*c]c_int) void;
pub extern fn emscripten_idb_store_blob(db_name: [*c]const u8, file_id: [*c]const u8, buffer: ?*anyopaque, num: c_int, perror: [*c]c_int) void;
pub extern fn emscripten_idb_read_from_blob(blob: c_int, start: c_int, num: c_int, buffer: ?*anyopaque) void;
pub extern fn emscripten_idb_free_blob(blob: c_int) void;
pub extern fn emscripten_run_preload_plugins(file: [*c]const u8, onload: em_str_callback_func, onerror: em_str_callback_func) c_int;
pub const em_run_preload_plugins_data_onload_func = ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) void;
pub extern fn emscripten_run_preload_plugins_data(data: [*c]u8, size: c_int, suffix: [*c]const u8, arg: ?*anyopaque, onload: em_run_preload_plugins_data_onload_func, onerror: em_arg_callback_func) void;
pub extern fn emscripten_lazy_load_code() void;
pub const worker_handle = c_int;
pub extern fn emscripten_create_worker(url: [*c]const u8) worker_handle;
pub extern fn emscripten_destroy_worker(worker: worker_handle) void;
pub const em_worker_callback_func = ?*const fn ([*c]u8, c_int, ?*anyopaque) callconv(.c) void;
pub extern fn emscripten_call_worker(worker: worker_handle, funcname: [*c]const u8, data: [*c]u8, size: c_int, callback: em_worker_callback_func, arg: ?*anyopaque) void;
pub extern fn emscripten_worker_respond(data: [*c]u8, size: c_int) void;
pub extern fn emscripten_worker_respond_provisionally(data: [*c]u8, size: c_int) void;
pub extern fn emscripten_get_worker_queue_size(worker: worker_handle) c_int;
pub extern fn emscripten_get_compiler_setting(name: [*c]const u8) c_long;
pub extern fn emscripten_has_asyncify() c_int;
pub extern fn emscripten_debugger() void;
pub const struct__IO_FILE = opaque {};
pub const FILE = struct__IO_FILE;
pub extern fn emscripten_get_preloaded_image_data(path: [*c]const u8, w: [*c]c_int, h: [*c]c_int) [*c]u8;
pub extern fn emscripten_get_preloaded_image_data_from_FILE(file: ?*FILE, w: [*c]c_int, h: [*c]c_int) [*c]u8;
pub extern fn emscripten_log(flags: c_int, format: [*c]const u8, ...) void;
pub extern fn emscripten_get_callstack(flags: c_int, out: [*c]u8, maxbytes: c_int) c_int;
pub extern fn emscripten_print_double(x: f64, to: [*c]u8, max: c_int) c_int;
pub const em_scan_func = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub extern fn emscripten_scan_registers(func: em_scan_func) void;
pub extern fn emscripten_scan_stack(func: em_scan_func) void;
pub const em_dlopen_callback = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub extern fn emscripten_dlopen(filename: [*c]const u8, flags: c_int, user_data: ?*anyopaque, onsuccess: em_dlopen_callback, onerror: em_arg_callback_func) void;
pub extern fn emscripten_dlopen_promise(filename: [*c]const u8, flags: c_int) em_promise_t;
pub extern fn emscripten_throw_number(number: f64) void;
pub extern fn emscripten_throw_string(utf8String: [*c]const u8) void;
pub extern fn emscripten_sleep(ms: c_uint) void;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 2);
pub const __clang_version__ = "20.1.2 (https://github.com/ziglang/zig-bootstrap daa53a0971085d5e5e4b20b9984b21182ecec266)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.2 (https://github.com/ziglang/zig-bootstrap daa53a0971085d5e5e4b20b9984b21182ecec266)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 1);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __block = @compileError("unable to translate macro: undefined identifier `__blocks__`");
// (no file):42:9
pub const __BLOCKS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):97:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):104:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 8);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):208:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):233:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):242:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = @compileError("unable to translate macro: undefined identifier `_`");
// (no file):334:9
pub const __NO_MATH_ERRNO__ = @as(c_int, 1);
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `_Nonnull`");
// (no file):369:9
pub const __null_unspecified = @compileError("unable to translate macro: undefined identifier `_Null_unspecified`");
// (no file):370:9
pub const __nullable = @compileError("unable to translate macro: undefined identifier `_Nullable`");
// (no file):371:9
pub const TARGET_OS_WIN32 = @as(c_int, 0);
pub const TARGET_OS_WINDOWS = @as(c_int, 0);
pub const TARGET_OS_LINUX = @as(c_int, 0);
pub const TARGET_OS_UNIX = @as(c_int, 0);
pub const TARGET_OS_MAC = @as(c_int, 1);
pub const TARGET_OS_OSX = @as(c_int, 1);
pub const TARGET_OS_IPHONE = @as(c_int, 0);
pub const TARGET_OS_IOS = @as(c_int, 0);
pub const TARGET_OS_TV = @as(c_int, 0);
pub const TARGET_OS_WATCH = @as(c_int, 0);
pub const TARGET_OS_VISION = @as(c_int, 0);
pub const TARGET_OS_DRIVERKIT = @as(c_int, 0);
pub const TARGET_OS_MACCATALYST = @as(c_int, 0);
pub const TARGET_OS_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_EMBEDDED = @as(c_int, 0);
pub const TARGET_OS_NANO = @as(c_int, 0);
pub const TARGET_IPHONE_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_UIKITFORMAC = @as(c_int, 0);
pub const __AARCH64EL__ = @as(c_int, 1);
pub const __aarch64__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub inline fn __ARM_ACLE_VERSION(year: anytype, quarter: anytype, patch: anytype) @TypeOf(((@as(c_int, 100) * year) + (@as(c_int, 10) * quarter)) + patch) {
    _ = &year;
    _ = &quarter;
    _ = &patch;
    return ((@as(c_int, 100) * year) + (@as(c_int, 10) * quarter)) + patch;
}
pub const __ARM_ACLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 202420, .decimal);
pub const __FUNCTION_MULTI_VERSIONING_SUPPORT_LEVEL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 202430, .decimal);
pub const __ARM_ARCH = @as(c_int, 8);
pub const __ARM_ARCH_PROFILE = 'A';
pub const __ARM_64BIT_STATE = @as(c_int, 1);
pub const __ARM_PCS_AAPCS64 = @as(c_int, 1);
pub const __ARM_ARCH_ISA_A64 = @as(c_int, 1);
pub const __ARM_FEATURE_CLZ = @as(c_int, 1);
pub const __ARM_FEATURE_FMA = @as(c_int, 1);
pub const __ARM_FEATURE_LDREX = @as(c_int, 0xF);
pub const __ARM_FEATURE_IDIV = @as(c_int, 1);
pub const __ARM_FEATURE_DIV = @as(c_int, 1);
pub const __ARM_FEATURE_NUMERIC_MAXMIN = @as(c_int, 1);
pub const __ARM_FEATURE_DIRECTED_ROUNDING = @as(c_int, 1);
pub const __ARM_ALIGN_MAX_STACK_PWR = @as(c_int, 4);
pub const __ARM_STATE_ZA = @as(c_int, 1);
pub const __ARM_STATE_ZT0 = @as(c_int, 1);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_FP16_FORMAT_IEEE = @as(c_int, 1);
pub const __ARM_FP16_ARGS = @as(c_int, 1);
pub const __ARM_NEON_SVE_BRIDGE = @as(c_int, 1);
pub const __ARM_SIZEOF_WCHAR_T = @as(c_int, 4);
pub const __ARM_SIZEOF_MINIMAL_ENUM = @as(c_int, 4);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_CRC32 = @as(c_int, 1);
pub const __ARM_FEATURE_RCPC = @as(c_int, 1);
pub const __ARM_FEATURE_CRYPTO = @as(c_int, 1);
pub const __ARM_FEATURE_AES = @as(c_int, 1);
pub const __ARM_FEATURE_SHA2 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA3 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA512 = @as(c_int, 1);
pub const __ARM_FEATURE_PAUTH = @as(c_int, 1);
pub const __ARM_FEATURE_BTI = @as(c_int, 1);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_DOTPROD = @as(c_int, 1);
pub const __ARM_FEATURE_MATMUL_INT8 = @as(c_int, 1);
pub const __ARM_FEATURE_ATOMICS = @as(c_int, 1);
pub const __ARM_FEATURE_BF16 = @as(c_int, 1);
pub const __ARM_FEATURE_BF16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_BF16_FORMAT_ALTERNATIVE = @as(c_int, 1);
pub const __ARM_FEATURE_BF16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_FML = @as(c_int, 1);
pub const __ARM_FEATURE_FRINT = @as(c_int, 1);
pub const __ARM_FEATURE_COMPLEX = @as(c_int, 1);
pub const __ARM_FEATURE_JCVT = @as(c_int, 1);
pub const __ARM_FEATURE_QRDMX = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __FP_FAST_FMA = @as(c_int, 1);
pub const __FP_FAST_FMAF = @as(c_int, 1);
pub const __AARCH64_SIMD__ = @as(c_int, 1);
pub const __ARM64_ARCH_8__ = @as(c_int, 1);
pub const __ARM_NEON__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __arm64 = @as(c_int, 1);
pub const __arm64__ = @as(c_int, 1);
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __APPLE__ = @as(c_int, 1);
pub const __weak = @compileError("unable to translate macro: undefined identifier `objc_gc`");
// (no file):459:9
pub const __strong = "";
pub const __unsafe_unretained = "";
pub const __DYNAMIC__ = @as(c_int, 1);
pub const __MACH__ = @as(c_int, 1);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150500, .decimal);
pub const __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150500, .decimal);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const LONG_CODE = 'i';
pub const _EM_ASM_SIG_CHAR = @compileError("unable to translate C expr: unexpected token '_Generic'");
// emscripten/em_asm.h:83:9
pub inline fn _EM_ASM_CONCATENATE(a: anytype, b: anytype) @TypeOf(_EM_ASM_CONCATENATE_(a, b)) {
    _ = &a;
    _ = &b;
    return _EM_ASM_CONCATENATE_(a, b);
}
pub const _EM_ASM_CONCATENATE_ = @compileError("unable to translate C expr: unexpected token '##'");
// emscripten/em_asm.h:104:9
pub const _EM_ASM_COUNT_ARGS_EXP = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:109:9
pub const _EM_ASM_COUNT_ARGS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:110:9
pub const _EM_ASM_ARG_SIGS_0 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:114:9
pub const _EM_ASM_ARG_SIGS_1 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:115:9
pub const _EM_ASM_ARG_SIGS_2 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:116:9
pub const _EM_ASM_ARG_SIGS_3 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:117:9
pub const _EM_ASM_ARG_SIGS_4 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:118:9
pub const _EM_ASM_ARG_SIGS_5 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:119:9
pub const _EM_ASM_ARG_SIGS_6 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:120:9
pub const _EM_ASM_ARG_SIGS_7 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:121:9
pub const _EM_ASM_ARG_SIGS_8 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:122:9
pub const _EM_ASM_ARG_SIGS_9 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:123:9
pub const _EM_ASM_ARG_SIGS_10 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:124:9
pub const _EM_ASM_ARG_SIGS_11 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:125:9
pub const _EM_ASM_ARG_SIGS_12 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:126:9
pub const _EM_ASM_ARG_SIGS_13 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:127:9
pub const _EM_ASM_ARG_SIGS_14 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:128:9
pub const _EM_ASM_ARG_SIGS_15 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:129:9
pub const _EM_ASM_ARG_SIGS_16 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:130:9
pub const _EM_ASM_ARG_SIGS_ = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:131:9
pub const _EM_ASM_ARG_SIGS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:134:9
pub const _EM_ASM_PREP_ARGS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:138:9
pub const CODE_EXPR = @compileError("unable to translate macro: undefined identifier `section`");
// emscripten/em_asm.h:213:9
pub const EM_ASM = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:221:9
pub const EM_ASM_INT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:225:9
pub const EM_ASM_PTR = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:231:9
pub const EM_ASM_DOUBLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:235:9
pub const MAIN_THREAD_EM_ASM = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:251:9
pub const MAIN_THREAD_EM_ASM_INT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:256:9
pub const MAIN_THREAD_EM_ASM_PTR = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:263:9
pub const MAIN_THREAD_EM_ASM_DOUBLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:268:9
pub const MAIN_THREAD_ASYNC_EM_ASM = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:278:9
pub const EM_ASM_ = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:283:9
pub const EM_ASM_ARGS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_asm.h:284:9
pub inline fn EM_ASM_INT_V(code: anytype) @TypeOf(EM_ASM_INT(code)) {
    _ = &code;
    return EM_ASM_INT(code);
}
pub inline fn EM_ASM_DOUBLE_V(code: anytype) @TypeOf(EM_ASM_DOUBLE(code)) {
    _ = &code;
    return EM_ASM_DOUBLE(code);
}
pub const EMSCRIPTEN_KEEPALIVE = @compileError("unable to translate macro: undefined identifier `used`");
// emscripten/em_macros.h:10:9
pub const EM_IMPORT = @compileError("unable to translate C expr: unexpected token ''");
// emscripten/em_macros.h:15:9
pub const _EM_BEGIN_CDECL = "";
pub const _EM_END_CDECL = "";
pub const EM_JS_DEPS = @compileError("unable to translate macro: undefined identifier `section`");
// emscripten/em_macros.h:47:9
pub const _STDBOOL_H = "";
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const @"bool" = bool;
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const EM_BOOL = @"bool";
pub const EM_TRUE = @"true";
pub const EM_FALSE = @"false";
pub const EM_UTF8 = u8;
pub const EMSCRIPTEN_RESULT = c_int;
pub const EMSCRIPTEN_RESULT_SUCCESS = @as(c_int, 0);
pub const EMSCRIPTEN_RESULT_DEFERRED = @as(c_int, 1);
pub const EMSCRIPTEN_RESULT_NOT_SUPPORTED = -@as(c_int, 1);
pub const EMSCRIPTEN_RESULT_FAILED_NOT_DEFERRED = -@as(c_int, 2);
pub const EMSCRIPTEN_RESULT_INVALID_TARGET = -@as(c_int, 3);
pub const EMSCRIPTEN_RESULT_UNKNOWN_TARGET = -@as(c_int, 4);
pub const EMSCRIPTEN_RESULT_INVALID_PARAM = -@as(c_int, 5);
pub const EMSCRIPTEN_RESULT_FAILED = -@as(c_int, 6);
pub const EMSCRIPTEN_RESULT_NO_DATA = -@as(c_int, 7);
pub const EMSCRIPTEN_RESULT_TIMED_OUT = -@as(c_int, 8);
pub const _EM_JS = @compileError("unable to translate macro: undefined identifier `visibility`");
// emscripten/em_js.h:61:9
pub const EM_JS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_js.h:71:9
pub const EM_ASYNC_JS = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/em_js.h:73:9
pub const _STDLIB_H = "";
pub const _FEATURES_H = "";
pub const _BSD_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// ./features.h:27:9
pub const __inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// ./features.h:33:9
pub const __REDIR = @compileError("unable to translate C expr: unexpected token '__typeof__'");
// ./features.h:45:9
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __NEED_size_t = "";
pub const __NEED_wchar_t = "";
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __LONG_MAX = __LONG_MAX__;
pub const _Addr = __PTRDIFF_TYPE__;
pub const _Int64 = __INT64_TYPE__;
pub const _Reg = __PTRDIFF_TYPE__;
pub const __DEFINED_wchar_t = "";
pub const __DEFINED_size_t = "";
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub inline fn WEXITSTATUS(s: anytype) @TypeOf((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &s;
    return (s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn WTERMSIG(s: anytype) @TypeOf(s & @as(c_int, 0x7f)) {
    _ = &s;
    return s & @as(c_int, 0x7f);
}
pub inline fn WSTOPSIG(s: anytype) @TypeOf(WEXITSTATUS(s)) {
    _ = &s;
    return WEXITSTATUS(s);
}
pub inline fn WIFEXITED(s: anytype) @TypeOf(!(WTERMSIG(s) != 0)) {
    _ = &s;
    return !(WTERMSIG(s) != 0);
}
pub inline fn WIFSTOPPED(s: anytype) @TypeOf(@import("std").zig.c_translation.cast(c_short, ((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex)) * @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x10001, .hex)) >> @as(c_int, 8)) > @as(c_int, 0x7f00)) {
    _ = &s;
    return @import("std").zig.c_translation.cast(c_short, ((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex)) * @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x10001, .hex)) >> @as(c_int, 8)) > @as(c_int, 0x7f00);
}
pub inline fn WIFSIGNALED(s: anytype) @TypeOf(((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex)) - @as(c_uint, 1)) < @as(c_uint, 0xff)) {
    _ = &s;
    return ((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex)) - @as(c_uint, 1)) < @as(c_uint, 0xff);
}
pub const _ALLOCA_H = "";
pub inline fn WCOREDUMP(s: anytype) @TypeOf(s & @as(c_int, 0x80)) {
    _ = &s;
    return s & @as(c_int, 0x80);
}
pub inline fn WIFCONTINUED(s: anytype) @TypeOf(s == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex)) {
    _ = &s;
    return s == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
}
pub const __EMSCRIPTEN_major__ = @as(c_int, 4);
pub const __EMSCRIPTEN_minor__ = @as(c_int, 0);
pub const __EMSCRIPTEN_tiny__ = @as(c_int, 8);
pub const EM_TIMING_SETTIMEOUT = @as(c_int, 0);
pub const EM_TIMING_RAF = @as(c_int, 1);
pub const EM_TIMING_SETIMMEDIATE = @as(c_int, 2);
pub const emscripten_push_main_loop_blocker = @compileError("unable to translate C expr: unexpected token '#'");
// emscripten/emscripten.h:66:9
pub const emscripten_push_uncounted_main_loop_blocker = @compileError("unable to translate C expr: unexpected token '#'");
// emscripten/emscripten.h:68:9
pub const emscripten_async_prepare = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/emscripten.h:123:9
pub const emscripten_async_prepare_data = @compileError("unable to translate C expr: expected ')' instead got '...'");
// emscripten/emscripten.h:124:9
pub const EM_LOG_CONSOLE = @as(c_int, 1);
pub const EM_LOG_WARN = @as(c_int, 2);
pub const EM_LOG_ERROR = @as(c_int, 4);
pub const EM_LOG_C_STACK = @as(c_int, 8);
pub const EM_LOG_JS_STACK = @as(c_int, 16);
pub const EM_LOG_DEMANGLE = @as(c_int, 32);
pub const EM_LOG_NO_PATHS = @as(c_int, 64);
pub const EM_LOG_FUNC_PARAMS = @as(c_int, 128);
pub const EM_LOG_DEBUG = @as(c_int, 256);
pub const EM_LOG_INFO = @as(c_int, 512);
pub const _em_promise = struct__em_promise;
pub const _IO_FILE = struct__IO_FILE;
