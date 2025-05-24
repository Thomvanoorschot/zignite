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
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __builtin_va_list = [*c]u8;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    __arg: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __next: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [192]u8 = @import("std").mem.zeroes([192]u8),
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
    __opaque: [8176]u8 = @import("std").mem.zeroes([8176]u8),
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const __darwin_nl_item = c_int;
pub const __darwin_wctrans_t = c_int;
pub const __darwin_wctype_t = __uint32_t;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulonglong;
pub const register_t = i64;
pub const user_addr_t = u_int64_t;
pub const user_size_t = u_int64_t;
pub const user_ssize_t = i64;
pub const user_long_t = i64;
pub const user_ulong_t = u_int64_t;
pub const user_time_t = i64;
pub const user_off_t = i64;
pub const syscall_arg_t = u_int64_t;
pub const va_list = __darwin_va_list;
pub extern fn renameat(c_int, [*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn renamex_np([*c]const u8, [*c]const u8, c_uint) c_int;
pub extern fn renameatx_np(c_int, [*c]const u8, c_int, [*c]const u8, c_uint) c_int;
pub extern fn printf([*c]const u8, ...) c_int;
pub const fpos_t = __darwin_off_t;
pub const struct___sbuf = extern struct {
    _base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _size: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct___sFILEX = opaque {};
pub const struct___sFILE = extern struct {
    _p: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _r: c_int = @import("std").mem.zeroes(c_int),
    _w: c_int = @import("std").mem.zeroes(c_int),
    _flags: c_short = @import("std").mem.zeroes(c_short),
    _file: c_short = @import("std").mem.zeroes(c_short),
    _bf: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _lbfsize: c_int = @import("std").mem.zeroes(c_int),
    _cookie: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _close: ?*const fn (?*anyopaque) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) c_int),
    _read: ?*const fn (?*anyopaque, [*c]u8, c_int) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]u8, c_int) callconv(.c) c_int),
    _seek: ?*const fn (?*anyopaque, fpos_t, c_int) callconv(.c) fpos_t = @import("std").mem.zeroes(?*const fn (?*anyopaque, fpos_t, c_int) callconv(.c) fpos_t),
    _write: ?*const fn (?*anyopaque, [*c]const u8, c_int) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8, c_int) callconv(.c) c_int),
    _ub: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _extra: ?*struct___sFILEX = @import("std").mem.zeroes(?*struct___sFILEX),
    _ur: c_int = @import("std").mem.zeroes(c_int),
    _ubuf: [3]u8 = @import("std").mem.zeroes([3]u8),
    _nbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lb: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _blksize: c_int = @import("std").mem.zeroes(c_int),
    _offset: fpos_t = @import("std").mem.zeroes(fpos_t),
};
pub const FILE = struct___sFILE;
pub extern var __stdinp: [*c]FILE;
pub extern var __stdoutp: [*c]FILE;
pub extern var __stderrp: [*c]FILE;
pub extern fn clearerr([*c]FILE) void;
pub extern fn fclose([*c]FILE) c_int;
pub extern fn feof([*c]FILE) c_int;
pub extern fn ferror([*c]FILE) c_int;
pub extern fn fflush([*c]FILE) c_int;
pub extern fn fgetc([*c]FILE) c_int;
pub extern fn fgetpos(noalias [*c]FILE, [*c]fpos_t) c_int;
pub extern fn fgets(noalias [*c]u8, __size: c_int, [*c]FILE) [*c]u8;
pub extern fn fopen(__filename: [*c]const u8, __mode: [*c]const u8) [*c]FILE;
pub extern fn fprintf(noalias [*c]FILE, noalias [*c]const u8, ...) c_int;
pub extern fn fputc(c_int, [*c]FILE) c_int;
pub extern fn fputs(noalias [*c]const u8, noalias [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn freopen(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]FILE) [*c]FILE;
pub extern fn fscanf(noalias [*c]FILE, noalias [*c]const u8, ...) c_int;
pub extern fn fseek([*c]FILE, c_long, c_int) c_int;
pub extern fn fsetpos([*c]FILE, [*c]const fpos_t) c_int;
pub extern fn ftell([*c]FILE) c_long;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn getc([*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn gets([*c]u8) [*c]u8;
pub extern fn perror([*c]const u8) void;
pub extern fn putc(c_int, [*c]FILE) c_int;
pub extern fn putchar(c_int) c_int;
pub extern fn puts([*c]const u8) c_int;
pub extern fn remove([*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn rewind([*c]FILE) void;
pub extern fn scanf(noalias [*c]const u8, ...) c_int;
pub extern fn setbuf(noalias [*c]FILE, noalias [*c]u8) void;
pub extern fn setvbuf(noalias [*c]FILE, noalias [*c]u8, c_int, __size: usize) c_int;
pub extern fn sprintf(noalias [*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias [*c]const u8, noalias [*c]const u8, ...) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn ungetc(c_int, [*c]FILE) c_int;
pub extern fn vfprintf(noalias [*c]FILE, noalias [*c]const u8, __builtin_va_list) c_int;
pub extern fn vprintf(noalias [*c]const u8, __builtin_va_list) c_int;
pub extern fn vsprintf(noalias [*c]u8, noalias [*c]const u8, __builtin_va_list) c_int;
pub extern fn ctermid([*c]u8) [*c]u8;
pub extern fn fdopen(c_int, [*c]const u8) [*c]FILE;
pub extern fn fileno([*c]FILE) c_int;
pub extern fn pclose([*c]FILE) c_int;
pub extern fn popen([*c]const u8, [*c]const u8) [*c]FILE;
pub extern fn __srget([*c]FILE) c_int;
pub extern fn __svfscanf([*c]FILE, [*c]const u8, va_list) c_int;
pub extern fn __swbuf(c_int, [*c]FILE) c_int;
pub inline fn __sputc(arg__c: c_int, arg__p: [*c]FILE) c_int {
    var _c = arg__c;
    _ = &_c;
    var _p = arg__p;
    _ = &_p;
    if (((blk: {
        const ref = &_p.*._w;
        ref.* -= 1;
        break :blk ref.*;
    }) >= @as(c_int, 0)) or ((_p.*._w >= _p.*._lbfsize) and (@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(_c))))))) != @as(c_int, '\n')))) return @as(c_int, @bitCast(@as(c_uint, blk: {
        const tmp = @as(u8, @bitCast(@as(i8, @truncate(_c))));
        (blk_1: {
            const ref = &_p.*._p;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    }))) else return __swbuf(_c, _p);
    return 0;
}
pub extern fn flockfile([*c]FILE) void;
pub extern fn ftrylockfile([*c]FILE) c_int;
pub extern fn funlockfile([*c]FILE) void;
pub extern fn getc_unlocked([*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn putc_unlocked(c_int, [*c]FILE) c_int;
pub extern fn putchar_unlocked(c_int) c_int;
pub extern fn getw([*c]FILE) c_int;
pub extern fn putw(c_int, [*c]FILE) c_int;
pub extern fn tempnam(__dir: [*c]const u8, __prefix: [*c]const u8) [*c]u8;
pub const off_t = __darwin_off_t;
pub extern fn fseeko(__stream: [*c]FILE, __offset: off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) off_t;
pub extern fn snprintf(noalias __str: [*c]u8, __size: c_ulong, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, __builtin_va_list) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __builtin_va_list) c_int;
pub extern fn vsnprintf(noalias __str: [*c]u8, __size: c_ulong, noalias __format: [*c]const u8, __builtin_va_list) c_int;
pub extern fn vsscanf(noalias __str: [*c]const u8, noalias __format: [*c]const u8, __builtin_va_list) c_int;
pub extern fn dprintf(c_int, noalias [*c]const u8, ...) c_int;
pub extern fn vdprintf(c_int, noalias [*c]const u8, va_list) c_int;
pub extern fn getdelim(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) isize;
pub extern fn getline(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, noalias __stream: [*c]FILE) isize;
pub extern fn fmemopen(noalias __buf: ?*anyopaque, __size: usize, noalias __mode: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufp: [*c][*c]u8, __sizep: [*c]usize) [*c]FILE;
pub extern const sys_nerr: c_int;
pub const sys_errlist: [*c]const [*c]const u8 = @extern([*c]const [*c]const u8, .{
    .name = "sys_errlist",
});
pub extern fn asprintf(noalias [*c][*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn ctermid_r([*c]u8) [*c]u8;
pub extern fn fgetln([*c]FILE, __len: [*c]usize) [*c]u8;
pub extern fn fmtcheck([*c]const u8, [*c]const u8) [*c]const u8;
pub extern fn fpurge([*c]FILE) c_int;
pub extern fn setbuffer([*c]FILE, [*c]u8, __size: c_int) void;
pub extern fn setlinebuf([*c]FILE) c_int;
pub extern fn vasprintf(noalias [*c][*c]u8, noalias [*c]const u8, va_list) c_int;
pub extern fn funopen(?*const anyopaque, ?*const fn (?*anyopaque, [*c]u8, c_int) callconv(.c) c_int, ?*const fn (?*anyopaque, [*c]const u8, c_int) callconv(.c) c_int, ?*const fn (?*anyopaque, fpos_t, c_int) callconv(.c) fpos_t, ?*const fn (?*anyopaque) callconv(.c) c_int) [*c]FILE;
pub extern fn __sprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __snprintf_chk(noalias [*c]u8, __maxlen: usize, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __vsprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, va_list) c_int;
pub extern fn __vsnprintf_chk(noalias [*c]u8, __maxlen: usize, c_int, usize, noalias [*c]const u8, va_list) c_int;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const __gnuc_va_list = __builtin_va_list;
pub const struct_ImVec4 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    z: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec4 = struct_ImVec4;
pub const ImU64 = c_ulonglong;
pub const ImTextureID = ImU64;
pub const ImDrawIdx = c_ushort;
pub const struct_ImVector_ImDrawIdx = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawIdx = @import("std").mem.zeroes([*c]ImDrawIdx),
};
pub const ImVector_ImDrawIdx = struct_ImVector_ImDrawIdx;
pub const struct_ImVec2 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec2 = struct_ImVec2;
pub const ImU32 = c_uint;
pub const struct_ImDrawVert = extern struct {
    pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    uv: ImVec2 = @import("std").mem.zeroes(ImVec2),
    col: ImU32 = @import("std").mem.zeroes(ImU32),
};
pub const ImDrawVert = struct_ImDrawVert;
pub const struct_ImVector_ImDrawVert = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawVert = @import("std").mem.zeroes([*c]ImDrawVert),
};
pub const ImVector_ImDrawVert = struct_ImVector_ImDrawVert;
pub const ImDrawListFlags = c_int;
pub const struct_ImVector_float = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]f32 = @import("std").mem.zeroes([*c]f32),
};
pub const ImVector_float = struct_ImVector_float;
pub const ImU16 = c_ushort;
pub const struct_ImVector_ImU16 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU16 = @import("std").mem.zeroes([*c]ImU16),
};
pub const ImVector_ImU16 = struct_ImVector_ImU16;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:1457:18: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontGlyph = opaque {};
pub const ImFontGlyph = struct_ImFontGlyph;
pub const struct_ImVector_ImFontGlyph = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImFontGlyph = @import("std").mem.zeroes(?*ImFontGlyph),
};
pub const ImVector_ImFontGlyph = struct_ImVector_ImFontGlyph;
pub const ImFontAtlasFlags = c_int;
pub const struct_ImVector_ImFontPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImFont = @import("std").mem.zeroes([*c][*c]ImFont),
};
pub const ImVector_ImFontPtr = struct_ImVector_ImFontPtr;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:1475:18: warning: struct demoted to opaque type - has bitfield
pub const struct_ImFontAtlasCustomRect = opaque {};
pub const ImFontAtlasCustomRect = struct_ImFontAtlasCustomRect;
pub const struct_ImVector_ImFontAtlasCustomRect = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImFontAtlasCustomRect = @import("std").mem.zeroes(?*ImFontAtlasCustomRect),
};
pub const ImVector_ImFontAtlasCustomRect = struct_ImVector_ImFontAtlasCustomRect;
pub const ImWchar16 = c_ushort;
pub const ImWchar = ImWchar16;
pub const struct_ImFontConfig = extern struct {
    FontData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    FontDataSize: c_int = @import("std").mem.zeroes(c_int),
    FontDataOwnedByAtlas: bool = @import("std").mem.zeroes(bool),
    MergeMode: bool = @import("std").mem.zeroes(bool),
    PixelSnapH: bool = @import("std").mem.zeroes(bool),
    FontNo: c_int = @import("std").mem.zeroes(c_int),
    OversampleH: c_int = @import("std").mem.zeroes(c_int),
    OversampleV: c_int = @import("std").mem.zeroes(c_int),
    SizePixels: f32 = @import("std").mem.zeroes(f32),
    GlyphOffset: ImVec2 = @import("std").mem.zeroes(ImVec2),
    GlyphRanges: [*c]const ImWchar = @import("std").mem.zeroes([*c]const ImWchar),
    GlyphMinAdvanceX: f32 = @import("std").mem.zeroes(f32),
    GlyphMaxAdvanceX: f32 = @import("std").mem.zeroes(f32),
    GlyphExtraAdvanceX: f32 = @import("std").mem.zeroes(f32),
    FontBuilderFlags: c_uint = @import("std").mem.zeroes(c_uint),
    RasterizerMultiply: f32 = @import("std").mem.zeroes(f32),
    RasterizerDensity: f32 = @import("std").mem.zeroes(f32),
    EllipsisChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    Name: [40]u8 = @import("std").mem.zeroes([40]u8),
    DstFont: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
};
pub const ImFontConfig = struct_ImFontConfig;
pub const struct_ImVector_ImFontConfig = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImFontConfig = @import("std").mem.zeroes([*c]ImFontConfig),
};
pub const ImVector_ImFontConfig = struct_ImVector_ImFontConfig;
pub const struct_ImFontBuilderIO = extern struct {
    FontBuilder_Build: ?*const fn ([*c]ImFontAtlas) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImFontAtlas) callconv(.c) bool),
};
pub const ImFontBuilderIO = struct_ImFontBuilderIO;
pub const struct_ImFontAtlas = extern struct {
    Flags: ImFontAtlasFlags = @import("std").mem.zeroes(ImFontAtlasFlags),
    TexID: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    TexDesiredWidth: c_int = @import("std").mem.zeroes(c_int),
    TexGlyphPadding: c_int = @import("std").mem.zeroes(c_int),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Locked: bool = @import("std").mem.zeroes(bool),
    TexReady: bool = @import("std").mem.zeroes(bool),
    TexPixelsUseColors: bool = @import("std").mem.zeroes(bool),
    TexPixelsAlpha8: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    TexPixelsRGBA32: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
    TexWidth: c_int = @import("std").mem.zeroes(c_int),
    TexHeight: c_int = @import("std").mem.zeroes(c_int),
    TexUvScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TexUvWhitePixel: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Fonts: ImVector_ImFontPtr = @import("std").mem.zeroes(ImVector_ImFontPtr),
    CustomRects: ImVector_ImFontAtlasCustomRect = @import("std").mem.zeroes(ImVector_ImFontAtlasCustomRect),
    Sources: ImVector_ImFontConfig = @import("std").mem.zeroes(ImVector_ImFontConfig),
    TexUvLines: [33]ImVec4 = @import("std").mem.zeroes([33]ImVec4),
    FontBuilderIO: [*c]const ImFontBuilderIO = @import("std").mem.zeroes([*c]const ImFontBuilderIO),
    FontBuilderFlags: c_uint = @import("std").mem.zeroes(c_uint),
    PackIdMouseCursors: c_int = @import("std").mem.zeroes(c_int),
    PackIdLines: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImFontAtlas = struct_ImFontAtlas;
pub const ImU8 = u8;
pub const struct_ImFont = extern struct {
    IndexAdvanceX: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    FallbackAdvanceX: f32 = @import("std").mem.zeroes(f32),
    FontSize: f32 = @import("std").mem.zeroes(f32),
    IndexLookup: ImVector_ImU16 = @import("std").mem.zeroes(ImVector_ImU16),
    Glyphs: ImVector_ImFontGlyph = @import("std").mem.zeroes(ImVector_ImFontGlyph),
    FallbackGlyph: ?*ImFontGlyph = @import("std").mem.zeroes(?*ImFontGlyph),
    ContainerAtlas: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    Sources: [*c]ImFontConfig = @import("std").mem.zeroes([*c]ImFontConfig),
    SourcesCount: c_short = @import("std").mem.zeroes(c_short),
    EllipsisCharCount: c_short = @import("std").mem.zeroes(c_short),
    EllipsisChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    FallbackChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    EllipsisWidth: f32 = @import("std").mem.zeroes(f32),
    EllipsisCharStep: f32 = @import("std").mem.zeroes(f32),
    Scale: f32 = @import("std").mem.zeroes(f32),
    Ascent: f32 = @import("std").mem.zeroes(f32),
    Descent: f32 = @import("std").mem.zeroes(f32),
    MetricsTotalSurface: c_int = @import("std").mem.zeroes(c_int),
    DirtyLookupTables: bool = @import("std").mem.zeroes(bool),
    Used8kPagesMap: [1]ImU8 = @import("std").mem.zeroes([1]ImU8),
};
pub const ImFont = struct_ImFont;
pub const struct_ImVector_ImVec2 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImVec2 = @import("std").mem.zeroes([*c]ImVec2),
};
pub const ImVector_ImVec2 = struct_ImVector_ImVec2;
pub const struct_ImDrawListSharedData = extern struct {
    TexUvWhitePixel: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TexUvLines: [*c]const ImVec4 = @import("std").mem.zeroes([*c]const ImVec4),
    Font: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    FontSize: f32 = @import("std").mem.zeroes(f32),
    FontScale: f32 = @import("std").mem.zeroes(f32),
    CurveTessellationTol: f32 = @import("std").mem.zeroes(f32),
    CircleSegmentMaxError: f32 = @import("std").mem.zeroes(f32),
    InitialFringeScale: f32 = @import("std").mem.zeroes(f32),
    InitialFlags: ImDrawListFlags = @import("std").mem.zeroes(ImDrawListFlags),
    ClipRectFullscreen: ImVec4 = @import("std").mem.zeroes(ImVec4),
    TempBuffer: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    ArcFastVtx: [48]ImVec2 = @import("std").mem.zeroes([48]ImVec2),
    ArcFastRadiusCutoff: f32 = @import("std").mem.zeroes(f32),
    CircleSegmentCounts: [64]ImU8 = @import("std").mem.zeroes([64]ImU8),
};
pub const ImDrawListSharedData = struct_ImDrawListSharedData;
pub const struct_ImDrawCmdHeader = extern struct {
    ClipRect: ImVec4 = @import("std").mem.zeroes(ImVec4),
    TextureId: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    VtxOffset: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ImDrawCmdHeader = struct_ImDrawCmdHeader;
pub const ImDrawChannel = struct_ImDrawChannel;
pub const struct_ImVector_ImDrawChannel = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawChannel = @import("std").mem.zeroes([*c]ImDrawChannel),
};
pub const ImVector_ImDrawChannel = struct_ImVector_ImDrawChannel;
pub const struct_ImDrawListSplitter = extern struct {
    _Current: c_int = @import("std").mem.zeroes(c_int),
    _Count: c_int = @import("std").mem.zeroes(c_int),
    _Channels: ImVector_ImDrawChannel = @import("std").mem.zeroes(ImVector_ImDrawChannel),
};
pub const ImDrawListSplitter = struct_ImDrawListSplitter;
pub const struct_ImVector_ImVec4 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImVec4 = @import("std").mem.zeroes([*c]ImVec4),
};
pub const ImVector_ImVec4 = struct_ImVector_ImVec4;
pub const struct_ImVector_ImTextureID = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImTextureID = @import("std").mem.zeroes([*c]ImTextureID),
};
pub const ImVector_ImTextureID = struct_ImVector_ImTextureID;
pub const struct_ImVector_ImU8 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU8 = @import("std").mem.zeroes([*c]ImU8),
};
pub const ImVector_ImU8 = struct_ImVector_ImU8;
pub const struct_ImDrawList = extern struct {
    CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
    VtxBuffer: ImVector_ImDrawVert = @import("std").mem.zeroes(ImVector_ImDrawVert),
    Flags: ImDrawListFlags = @import("std").mem.zeroes(ImDrawListFlags),
    _VtxCurrentIdx: c_uint = @import("std").mem.zeroes(c_uint),
    _Data: [*c]ImDrawListSharedData = @import("std").mem.zeroes([*c]ImDrawListSharedData),
    _VtxWritePtr: [*c]ImDrawVert = @import("std").mem.zeroes([*c]ImDrawVert),
    _IdxWritePtr: [*c]ImDrawIdx = @import("std").mem.zeroes([*c]ImDrawIdx),
    _Path: ImVector_ImVec2 = @import("std").mem.zeroes(ImVector_ImVec2),
    _CmdHeader: ImDrawCmdHeader = @import("std").mem.zeroes(ImDrawCmdHeader),
    _Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    _ClipRectStack: ImVector_ImVec4 = @import("std").mem.zeroes(ImVector_ImVec4),
    _TextureIdStack: ImVector_ImTextureID = @import("std").mem.zeroes(ImVector_ImTextureID),
    _CallbacksDataBuf: ImVector_ImU8 = @import("std").mem.zeroes(ImVector_ImU8),
    _FringeScale: f32 = @import("std").mem.zeroes(f32),
    _OwnerName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImDrawList = struct_ImDrawList;
pub const ImDrawCallback = ?*const fn ([*c]const ImDrawList, [*c]const ImDrawCmd) callconv(.c) void;
pub const struct_ImDrawCmd = extern struct {
    ClipRect: ImVec4 = @import("std").mem.zeroes(ImVec4),
    TextureId: ImTextureID = @import("std").mem.zeroes(ImTextureID),
    VtxOffset: c_uint = @import("std").mem.zeroes(c_uint),
    IdxOffset: c_uint = @import("std").mem.zeroes(c_uint),
    ElemCount: c_uint = @import("std").mem.zeroes(c_uint),
    UserCallback: ImDrawCallback = @import("std").mem.zeroes(ImDrawCallback),
    UserCallbackData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    UserCallbackDataSize: c_int = @import("std").mem.zeroes(c_int),
    UserCallbackDataOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImDrawCmd = struct_ImDrawCmd;
pub const struct_ImVector_ImDrawCmd = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImDrawCmd = @import("std").mem.zeroes([*c]ImDrawCmd),
};
pub const ImVector_ImDrawCmd = struct_ImVector_ImDrawCmd;
pub const struct_ImDrawChannel = extern struct {
    _CmdBuffer: ImVector_ImDrawCmd = @import("std").mem.zeroes(ImVector_ImDrawCmd),
    _IdxBuffer: ImVector_ImDrawIdx = @import("std").mem.zeroes(ImVector_ImDrawIdx),
};
pub const struct_ImVector_ImDrawListPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImDrawList = @import("std").mem.zeroes([*c][*c]ImDrawList),
};
pub const ImVector_ImDrawListPtr = struct_ImVector_ImDrawListPtr;
pub const ImGuiID = c_uint;
pub const ImGuiViewportFlags = c_int;
pub const ImDrawData = struct_ImDrawData;
pub const struct_ImGuiViewport = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    Pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Size: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FramebufferScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DpiScale: f32 = @import("std").mem.zeroes(f32),
    ParentViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DrawData: [*c]ImDrawData = @import("std").mem.zeroes([*c]ImDrawData),
    RendererUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformHandle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformHandleRaw: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PlatformWindowCreated: bool = @import("std").mem.zeroes(bool),
    PlatformRequestMove: bool = @import("std").mem.zeroes(bool),
    PlatformRequestResize: bool = @import("std").mem.zeroes(bool),
    PlatformRequestClose: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiViewport = struct_ImGuiViewport;
pub const struct_ImDrawData = extern struct {
    Valid: bool = @import("std").mem.zeroes(bool),
    CmdListsCount: c_int = @import("std").mem.zeroes(c_int),
    TotalIdxCount: c_int = @import("std").mem.zeroes(c_int),
    TotalVtxCount: c_int = @import("std").mem.zeroes(c_int),
    CmdLists: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
    DisplayPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplaySize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FramebufferScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    OwnerViewport: [*c]ImGuiViewport = @import("std").mem.zeroes([*c]ImGuiViewport),
};
pub const struct_ImVector_ImU32 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU32 = @import("std").mem.zeroes([*c]ImU32),
};
pub const ImVector_ImU32 = struct_ImVector_ImU32;
pub const struct_ImFontGlyphRangesBuilder = extern struct {
    UsedChars: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
};
pub const ImFontGlyphRangesBuilder = struct_ImFontGlyphRangesBuilder;
pub const struct_ImColor = extern struct {
    Value: ImVec4 = @import("std").mem.zeroes(ImVec4),
};
pub const ImColor = struct_ImColor;
pub const ImGuiConfigFlags = c_int;
pub const ImGuiBackendFlags = c_int;
pub const ImGuiContext = struct_ImGuiContext;
pub const ImGuiKeyChord = c_int;
pub const struct_ImGuiKeyData = extern struct {
    Down: bool = @import("std").mem.zeroes(bool),
    DownDuration: f32 = @import("std").mem.zeroes(f32),
    DownDurationPrev: f32 = @import("std").mem.zeroes(f32),
    AnalogValue: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiKeyData = struct_ImGuiKeyData;
pub const struct_ImVector_ImWchar = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImWchar = @import("std").mem.zeroes([*c]ImWchar),
};
pub const ImVector_ImWchar = struct_ImVector_ImWchar;
pub const struct_ImGuiIO = extern struct {
    ConfigFlags: ImGuiConfigFlags = @import("std").mem.zeroes(ImGuiConfigFlags),
    BackendFlags: ImGuiBackendFlags = @import("std").mem.zeroes(ImGuiBackendFlags),
    DisplaySize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplayFramebufferScale: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DeltaTime: f32 = @import("std").mem.zeroes(f32),
    IniSavingRate: f32 = @import("std").mem.zeroes(f32),
    IniFilename: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    LogFilename: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Fonts: [*c]ImFontAtlas = @import("std").mem.zeroes([*c]ImFontAtlas),
    FontGlobalScale: f32 = @import("std").mem.zeroes(f32),
    FontAllowUserScaling: bool = @import("std").mem.zeroes(bool),
    FontDefault: [*c]ImFont = @import("std").mem.zeroes([*c]ImFont),
    ConfigNavSwapGamepadButtons: bool = @import("std").mem.zeroes(bool),
    ConfigNavMoveSetMousePos: bool = @import("std").mem.zeroes(bool),
    ConfigNavCaptureKeyboard: bool = @import("std").mem.zeroes(bool),
    ConfigNavEscapeClearFocusItem: bool = @import("std").mem.zeroes(bool),
    ConfigNavEscapeClearFocusWindow: bool = @import("std").mem.zeroes(bool),
    ConfigNavCursorVisibleAuto: bool = @import("std").mem.zeroes(bool),
    ConfigNavCursorVisibleAlways: bool = @import("std").mem.zeroes(bool),
    ConfigDockingNoSplit: bool = @import("std").mem.zeroes(bool),
    ConfigDockingWithShift: bool = @import("std").mem.zeroes(bool),
    ConfigDockingAlwaysTabBar: bool = @import("std").mem.zeroes(bool),
    ConfigDockingTransparentPayload: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoAutoMerge: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoTaskBarIcon: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoDecoration: bool = @import("std").mem.zeroes(bool),
    ConfigViewportsNoDefaultParent: bool = @import("std").mem.zeroes(bool),
    MouseDrawCursor: bool = @import("std").mem.zeroes(bool),
    ConfigMacOSXBehaviors: bool = @import("std").mem.zeroes(bool),
    ConfigInputTrickleEventQueue: bool = @import("std").mem.zeroes(bool),
    ConfigInputTextCursorBlink: bool = @import("std").mem.zeroes(bool),
    ConfigInputTextEnterKeepActive: bool = @import("std").mem.zeroes(bool),
    ConfigDragClickToInputText: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsResizeFromEdges: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsMoveFromTitleBarOnly: bool = @import("std").mem.zeroes(bool),
    ConfigWindowsCopyContentsWithCtrlC: bool = @import("std").mem.zeroes(bool),
    ConfigScrollbarScrollByPage: bool = @import("std").mem.zeroes(bool),
    ConfigMemoryCompactTimer: f32 = @import("std").mem.zeroes(f32),
    MouseDoubleClickTime: f32 = @import("std").mem.zeroes(f32),
    MouseDoubleClickMaxDist: f32 = @import("std").mem.zeroes(f32),
    MouseDragThreshold: f32 = @import("std").mem.zeroes(f32),
    KeyRepeatDelay: f32 = @import("std").mem.zeroes(f32),
    KeyRepeatRate: f32 = @import("std").mem.zeroes(f32),
    ConfigErrorRecovery: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableAssert: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableDebugLog: bool = @import("std").mem.zeroes(bool),
    ConfigErrorRecoveryEnableTooltip: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIsDebuggerPresent: bool = @import("std").mem.zeroes(bool),
    ConfigDebugHighlightIdConflicts: bool = @import("std").mem.zeroes(bool),
    ConfigDebugHighlightIdConflictsShowItemPicker: bool = @import("std").mem.zeroes(bool),
    ConfigDebugBeginReturnValueOnce: bool = @import("std").mem.zeroes(bool),
    ConfigDebugBeginReturnValueLoop: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIgnoreFocusLoss: bool = @import("std").mem.zeroes(bool),
    ConfigDebugIniSettings: bool = @import("std").mem.zeroes(bool),
    BackendPlatformName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    BackendRendererName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    BackendPlatformUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BackendRendererUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BackendLanguageUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    WantCaptureMouse: bool = @import("std").mem.zeroes(bool),
    WantCaptureKeyboard: bool = @import("std").mem.zeroes(bool),
    WantTextInput: bool = @import("std").mem.zeroes(bool),
    WantSetMousePos: bool = @import("std").mem.zeroes(bool),
    WantSaveIniSettings: bool = @import("std").mem.zeroes(bool),
    NavActive: bool = @import("std").mem.zeroes(bool),
    NavVisible: bool = @import("std").mem.zeroes(bool),
    Framerate: f32 = @import("std").mem.zeroes(f32),
    MetricsRenderVertices: c_int = @import("std").mem.zeroes(c_int),
    MetricsRenderIndices: c_int = @import("std").mem.zeroes(c_int),
    MetricsRenderWindows: c_int = @import("std").mem.zeroes(c_int),
    MetricsActiveWindows: c_int = @import("std").mem.zeroes(c_int),
    MouseDelta: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    MousePos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MouseDown: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheel: f32 = @import("std").mem.zeroes(f32),
    MouseWheelH: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
    MouseHoveredViewport: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    KeyCtrl: bool = @import("std").mem.zeroes(bool),
    KeyShift: bool = @import("std").mem.zeroes(bool),
    KeyAlt: bool = @import("std").mem.zeroes(bool),
    KeySuper: bool = @import("std").mem.zeroes(bool),
    KeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    KeysData: [155]ImGuiKeyData = @import("std").mem.zeroes([155]ImGuiKeyData),
    WantCaptureMouseUnlessPopupClose: bool = @import("std").mem.zeroes(bool),
    MousePosPrev: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MouseClickedPos: [5]ImVec2 = @import("std").mem.zeroes([5]ImVec2),
    MouseClickedTime: [5]f64 = @import("std").mem.zeroes([5]f64),
    MouseClicked: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseDoubleClicked: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseClickedCount: [5]ImU16 = @import("std").mem.zeroes([5]ImU16),
    MouseClickedLastCount: [5]ImU16 = @import("std").mem.zeroes([5]ImU16),
    MouseReleased: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseReleasedTime: [5]f64 = @import("std").mem.zeroes([5]f64),
    MouseDownOwned: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseDownOwnedUnlessPopupClose: [5]bool = @import("std").mem.zeroes([5]bool),
    MouseWheelRequestAxisSwap: bool = @import("std").mem.zeroes(bool),
    MouseCtrlLeftAsRightClick: bool = @import("std").mem.zeroes(bool),
    MouseDownDuration: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDownDurationPrev: [5]f32 = @import("std").mem.zeroes([5]f32),
    MouseDragMaxDistanceAbs: [5]ImVec2 = @import("std").mem.zeroes([5]ImVec2),
    MouseDragMaxDistanceSqr: [5]f32 = @import("std").mem.zeroes([5]f32),
    PenPressure: f32 = @import("std").mem.zeroes(f32),
    AppFocusLost: bool = @import("std").mem.zeroes(bool),
    AppAcceptingEvents: bool = @import("std").mem.zeroes(bool),
    InputQueueSurrogate: ImWchar16 = @import("std").mem.zeroes(ImWchar16),
    InputQueueCharacters: ImVector_ImWchar = @import("std").mem.zeroes(ImVector_ImWchar),
};
pub const ImGuiIO = struct_ImGuiIO;
pub const struct_ImGuiPlatformImeData = extern struct {
    WantVisible: bool = @import("std").mem.zeroes(bool),
    WantTextInput: bool = @import("std").mem.zeroes(bool),
    InputPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    InputLineHeight: f32 = @import("std").mem.zeroes(f32),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiPlatformImeData = struct_ImGuiPlatformImeData;
pub const struct_ImGuiPlatformMonitor = extern struct {
    MainPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MainSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DpiScale: f32 = @import("std").mem.zeroes(f32),
    PlatformHandle: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiPlatformMonitor = struct_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiPlatformMonitor = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPlatformMonitor = @import("std").mem.zeroes([*c]ImGuiPlatformMonitor),
};
pub const ImVector_ImGuiPlatformMonitor = struct_ImVector_ImGuiPlatformMonitor;
pub const struct_ImVector_ImGuiViewportPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImGuiViewport = @import("std").mem.zeroes([*c][*c]ImGuiViewport),
};
pub const ImVector_ImGuiViewportPtr = struct_ImVector_ImGuiViewportPtr;
pub const struct_ImGuiPlatformIO = extern struct {
    Platform_GetClipboardTextFn: ?*const fn (?*ImGuiContext) callconv(.c) [*c]const u8 = @import("std").mem.zeroes(?*const fn (?*ImGuiContext) callconv(.c) [*c]const u8),
    Platform_SetClipboardTextFn: ?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) void),
    Platform_ClipboardUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_OpenInShellFn: ?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) bool = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]const u8) callconv(.c) bool),
    Platform_OpenInShellUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_SetImeDataFn: ?*const fn (?*ImGuiContext, [*c]ImGuiViewport, [*c]ImGuiPlatformImeData) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiViewport, [*c]ImGuiPlatformImeData) callconv(.c) void),
    Platform_ImeUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_LocaleDecimalPoint: ImWchar = @import("std").mem.zeroes(ImWchar),
    Renderer_RenderState: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Platform_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_ShowWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_SetWindowPos: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Platform_GetWindowPos: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2),
    Platform_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Platform_GetWindowSize: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2),
    Platform_GetWindowFramebufferScale: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec2),
    Platform_SetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_GetWindowFocus: ?*const fn ([*c]ImGuiViewport) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) bool),
    Platform_GetWindowMinimized: ?*const fn ([*c]ImGuiViewport) callconv(.c) bool = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) bool),
    Platform_SetWindowTitle: ?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, [*c]const u8) callconv(.c) void),
    Platform_SetWindowAlpha: ?*const fn ([*c]ImGuiViewport, f32) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, f32) callconv(.c) void),
    Platform_UpdateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Platform_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Platform_GetWindowDpiScale: ?*const fn ([*c]ImGuiViewport) callconv(.c) f32 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) f32),
    Platform_OnChangedViewport: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Platform_GetWindowWorkAreaInsets: ?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec4 = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) ImVec4),
    Platform_CreateVkSurface: ?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImU64, ?*const anyopaque, [*c]ImU64) callconv(.c) c_int),
    Renderer_CreateWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Renderer_DestroyWindow: ?*const fn ([*c]ImGuiViewport) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport) callconv(.c) void),
    Renderer_SetWindowSize: ?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ImVec2) callconv(.c) void),
    Renderer_RenderWindow: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Renderer_SwapBuffers: ?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiViewport, ?*anyopaque) callconv(.c) void),
    Monitors: ImVector_ImGuiPlatformMonitor = @import("std").mem.zeroes(ImVector_ImGuiPlatformMonitor),
    Viewports: ImVector_ImGuiViewportPtr = @import("std").mem.zeroes(ImVector_ImGuiViewportPtr),
};
pub const ImGuiPlatformIO = struct_ImGuiPlatformIO;
pub const ImGuiTreeNodeFlags = c_int;
pub const ImGuiHoveredFlags = c_int;
pub const struct_ImGuiStyle = extern struct {
    Alpha: f32 = @import("std").mem.zeroes(f32),
    DisabledAlpha: f32 = @import("std").mem.zeroes(f32),
    WindowPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowRounding: f32 = @import("std").mem.zeroes(f32),
    WindowBorderSize: f32 = @import("std").mem.zeroes(f32),
    WindowBorderHoverPadding: f32 = @import("std").mem.zeroes(f32),
    WindowMinSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowTitleAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowMenuButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ChildRounding: f32 = @import("std").mem.zeroes(f32),
    ChildBorderSize: f32 = @import("std").mem.zeroes(f32),
    PopupRounding: f32 = @import("std").mem.zeroes(f32),
    PopupBorderSize: f32 = @import("std").mem.zeroes(f32),
    FramePadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FrameRounding: f32 = @import("std").mem.zeroes(f32),
    FrameBorderSize: f32 = @import("std").mem.zeroes(f32),
    ItemSpacing: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ItemInnerSpacing: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CellPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TouchExtraPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    IndentSpacing: f32 = @import("std").mem.zeroes(f32),
    ColumnsMinSpacing: f32 = @import("std").mem.zeroes(f32),
    ScrollbarSize: f32 = @import("std").mem.zeroes(f32),
    ScrollbarRounding: f32 = @import("std").mem.zeroes(f32),
    GrabMinSize: f32 = @import("std").mem.zeroes(f32),
    GrabRounding: f32 = @import("std").mem.zeroes(f32),
    LogSliderDeadzone: f32 = @import("std").mem.zeroes(f32),
    ImageBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabRounding: f32 = @import("std").mem.zeroes(f32),
    TabBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabCloseButtonMinWidthSelected: f32 = @import("std").mem.zeroes(f32),
    TabCloseButtonMinWidthUnselected: f32 = @import("std").mem.zeroes(f32),
    TabBarBorderSize: f32 = @import("std").mem.zeroes(f32),
    TabBarOverlineSize: f32 = @import("std").mem.zeroes(f32),
    TableAngledHeadersAngle: f32 = @import("std").mem.zeroes(f32),
    TableAngledHeadersTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TreeLinesFlags: ImGuiTreeNodeFlags = @import("std").mem.zeroes(ImGuiTreeNodeFlags),
    TreeLinesSize: f32 = @import("std").mem.zeroes(f32),
    TreeLinesRounding: f32 = @import("std").mem.zeroes(f32),
    ColorButtonPosition: ImGuiDir = @import("std").mem.zeroes(ImGuiDir),
    ButtonTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SelectableTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SeparatorTextBorderSize: f32 = @import("std").mem.zeroes(f32),
    SeparatorTextAlign: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SeparatorTextPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplayWindowPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DisplaySafeAreaPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DockingSeparatorSize: f32 = @import("std").mem.zeroes(f32),
    MouseCursorScale: f32 = @import("std").mem.zeroes(f32),
    AntiAliasedLines: bool = @import("std").mem.zeroes(bool),
    AntiAliasedLinesUseTex: bool = @import("std").mem.zeroes(bool),
    AntiAliasedFill: bool = @import("std").mem.zeroes(bool),
    CurveTessellationTol: f32 = @import("std").mem.zeroes(f32),
    CircleTessellationMaxError: f32 = @import("std").mem.zeroes(f32),
    Colors: [60]ImVec4 = @import("std").mem.zeroes([60]ImVec4),
    HoverStationaryDelay: f32 = @import("std").mem.zeroes(f32),
    HoverDelayShort: f32 = @import("std").mem.zeroes(f32),
    HoverDelayNormal: f32 = @import("std").mem.zeroes(f32),
    HoverFlagsForTooltipMouse: ImGuiHoveredFlags = @import("std").mem.zeroes(ImGuiHoveredFlags),
    HoverFlagsForTooltipNav: ImGuiHoveredFlags = @import("std").mem.zeroes(ImGuiHoveredFlags),
};
pub const ImGuiStyle = struct_ImGuiStyle;
pub const struct_ImGuiInputEventMousePos = extern struct {
    PosX: f32 = @import("std").mem.zeroes(f32),
    PosY: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMousePos = struct_ImGuiInputEventMousePos;
pub const struct_ImGuiInputEventMouseWheel = extern struct {
    WheelX: f32 = @import("std").mem.zeroes(f32),
    WheelY: f32 = @import("std").mem.zeroes(f32),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMouseWheel = struct_ImGuiInputEventMouseWheel;
pub const struct_ImGuiInputEventMouseButton = extern struct {
    Button: c_int = @import("std").mem.zeroes(c_int),
    Down: bool = @import("std").mem.zeroes(bool),
    MouseSource: ImGuiMouseSource = @import("std").mem.zeroes(ImGuiMouseSource),
};
pub const ImGuiInputEventMouseButton = struct_ImGuiInputEventMouseButton;
pub const struct_ImGuiInputEventMouseViewport = extern struct {
    HoveredViewportID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiInputEventMouseViewport = struct_ImGuiInputEventMouseViewport;
pub const struct_ImGuiInputEventKey = extern struct {
    Key: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    Down: bool = @import("std").mem.zeroes(bool),
    AnalogValue: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiInputEventKey = struct_ImGuiInputEventKey;
pub const struct_ImGuiInputEventText = extern struct {
    Char: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ImGuiInputEventText = struct_ImGuiInputEventText;
pub const struct_ImGuiInputEventAppFocused = extern struct {
    Focused: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiInputEventAppFocused = struct_ImGuiInputEventAppFocused;
const union_unnamed_1 = extern union {
    MousePos: ImGuiInputEventMousePos,
    MouseWheel: ImGuiInputEventMouseWheel,
    MouseButton: ImGuiInputEventMouseButton,
    MouseViewport: ImGuiInputEventMouseViewport,
    Key: ImGuiInputEventKey,
    Text: ImGuiInputEventText,
    AppFocused: ImGuiInputEventAppFocused,
};
pub const struct_ImGuiInputEvent = extern struct {
    Type: ImGuiInputEventType = @import("std").mem.zeroes(ImGuiInputEventType),
    Source: ImGuiInputSource = @import("std").mem.zeroes(ImGuiInputSource),
    EventId: ImU32 = @import("std").mem.zeroes(ImU32),
    unnamed_0: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
    AddedByTestEngine: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiInputEvent = struct_ImGuiInputEvent;
pub const struct_ImVector_ImGuiInputEvent = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiInputEvent = @import("std").mem.zeroes([*c]ImGuiInputEvent),
};
pub const ImVector_ImGuiInputEvent = struct_ImVector_ImGuiInputEvent;
pub const ImGuiWindowFlags = c_int;
pub const ImGuiChildFlags = c_int;
pub const ImGuiTabItemFlags = c_int;
pub const ImGuiDockNodeFlags = c_int;
pub const struct_ImGuiWindowClass = extern struct {
    ClassId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ParentViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    FocusRouteParentWindowId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ViewportFlagsOverrideSet: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    ViewportFlagsOverrideClear: ImGuiViewportFlags = @import("std").mem.zeroes(ImGuiViewportFlags),
    TabItemFlagsOverrideSet: ImGuiTabItemFlags = @import("std").mem.zeroes(ImGuiTabItemFlags),
    DockNodeFlagsOverrideSet: ImGuiDockNodeFlags = @import("std").mem.zeroes(ImGuiDockNodeFlags),
    DockingAlwaysTabBar: bool = @import("std").mem.zeroes(bool),
    DockingAllowUnclassed: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiWindowClass = struct_ImGuiWindowClass;
pub const struct_ImDrawDataBuilder = extern struct {
    Layers: [2][*c]ImVector_ImDrawListPtr = @import("std").mem.zeroes([2][*c]ImVector_ImDrawListPtr),
    LayerData1: ImVector_ImDrawListPtr = @import("std").mem.zeroes(ImVector_ImDrawListPtr),
};
pub const ImDrawDataBuilder = struct_ImDrawDataBuilder;
pub const struct_ImGuiViewportP = extern struct {
    _ImGuiViewport: ImGuiViewport = @import("std").mem.zeroes(ImGuiViewport),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    Idx: c_int = @import("std").mem.zeroes(c_int),
    LastFrameActive: c_int = @import("std").mem.zeroes(c_int),
    LastFocusedStampCount: c_int = @import("std").mem.zeroes(c_int),
    LastNameHash: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LastSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Alpha: f32 = @import("std").mem.zeroes(f32),
    LastAlpha: f32 = @import("std").mem.zeroes(f32),
    LastFocusedHadNavWindow: bool = @import("std").mem.zeroes(bool),
    PlatformMonitor: c_short = @import("std").mem.zeroes(c_short),
    BgFgDrawListsLastFrame: [2]c_int = @import("std").mem.zeroes([2]c_int),
    BgFgDrawLists: [2][*c]ImDrawList = @import("std").mem.zeroes([2][*c]ImDrawList),
    DrawDataP: ImDrawData = @import("std").mem.zeroes(ImDrawData),
    DrawDataBuilder: ImDrawDataBuilder = @import("std").mem.zeroes(ImDrawDataBuilder),
    LastPlatformPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LastPlatformSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LastRendererSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkInsetMin: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WorkInsetMax: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BuildWorkInsetMin: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BuildWorkInsetMax: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImGuiViewportP = struct_ImGuiViewportP;
pub const ImS8 = i8;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:3194:15: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiWindow = opaque {};
pub const ImGuiWindow = struct_ImGuiWindow;
pub const struct_ImVector_ImGuiWindowPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]?*ImGuiWindow = @import("std").mem.zeroes([*c]?*ImGuiWindow),
};
pub const ImVector_ImGuiWindowPtr = struct_ImVector_ImGuiWindowPtr;
pub const ImGuiItemFlags = c_int;
pub const ImGuiItemStatusFlags = c_int;
pub const struct_ImRect = extern struct {
    Min: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Max: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImRect = struct_ImRect;
pub const struct_ImGuiLastItemData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    StatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    Rect: ImRect = @import("std").mem.zeroes(ImRect),
    NavRect: ImRect = @import("std").mem.zeroes(ImRect),
    DisplayRect: ImRect = @import("std").mem.zeroes(ImRect),
    ClipRect: ImRect = @import("std").mem.zeroes(ImRect),
    Shortcut: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
};
pub const ImGuiLastItemData = struct_ImGuiLastItemData;
pub const struct_ImGuiErrorRecoveryState = extern struct {
    SizeOfWindowStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfIDStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfTreeStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfColorStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfStyleVarStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfFontStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfFocusScopeStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfGroupStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfItemFlagsStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfBeginPopupStack: c_short = @import("std").mem.zeroes(c_short),
    SizeOfDisabledStack: c_short = @import("std").mem.zeroes(c_short),
};
pub const ImGuiErrorRecoveryState = struct_ImGuiErrorRecoveryState;
pub const struct_ImGuiWindowStackData = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ParentLastItemDataBackup: ImGuiLastItemData = @import("std").mem.zeroes(ImGuiLastItemData),
    StackSizesInBegin: ImGuiErrorRecoveryState = @import("std").mem.zeroes(ImGuiErrorRecoveryState),
    DisabledOverrideReenable: bool = @import("std").mem.zeroes(bool),
    DisabledOverrideReenableAlphaBackup: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiWindowStackData = struct_ImGuiWindowStackData;
pub const struct_ImVector_ImGuiWindowStackData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiWindowStackData = @import("std").mem.zeroes([*c]ImGuiWindowStackData),
};
pub const ImVector_ImGuiWindowStackData = struct_ImVector_ImGuiWindowStackData;
const union_unnamed_2 = extern union {
    val_i: c_int,
    val_f: f32,
    val_p: ?*anyopaque,
};
pub const struct_ImGuiStoragePair = extern struct {
    key: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    unnamed_0: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
pub const ImGuiStoragePair = struct_ImGuiStoragePair;
pub const struct_ImVector_ImGuiStoragePair = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiStoragePair = @import("std").mem.zeroes([*c]ImGuiStoragePair),
};
pub const ImVector_ImGuiStoragePair = struct_ImVector_ImGuiStoragePair;
pub const struct_ImGuiStorage = extern struct {
    Data: ImVector_ImGuiStoragePair = @import("std").mem.zeroes(ImVector_ImGuiStoragePair),
};
pub const ImGuiStorage = struct_ImGuiStorage;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:2835:9: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiContext = opaque {};
pub const ImGuiInputTextFlags = c_int;
pub const struct_ImGuiInputTextCallbackData = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    EventFlag: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    Flags: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    EventChar: ImWchar = @import("std").mem.zeroes(ImWchar),
    EventKey: ImGuiKey = @import("std").mem.zeroes(ImGuiKey),
    Buf: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    BufTextLen: c_int = @import("std").mem.zeroes(c_int),
    BufSize: c_int = @import("std").mem.zeroes(c_int),
    BufDirty: bool = @import("std").mem.zeroes(bool),
    CursorPos: c_int = @import("std").mem.zeroes(c_int),
    SelectionStart: c_int = @import("std").mem.zeroes(c_int),
    SelectionEnd: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiInputTextCallbackData = struct_ImGuiInputTextCallbackData;
pub const struct_ImGuiListClipper = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    DisplayStart: c_int = @import("std").mem.zeroes(c_int),
    DisplayEnd: c_int = @import("std").mem.zeroes(c_int),
    ItemsCount: c_int = @import("std").mem.zeroes(c_int),
    ItemsHeight: f32 = @import("std").mem.zeroes(f32),
    StartPosY: f32 = @import("std").mem.zeroes(f32),
    StartSeekOffsetY: f64 = @import("std").mem.zeroes(f64),
    TempData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiListClipper = struct_ImGuiListClipper;
pub const ImS64 = c_longlong;
pub const ImGuiSelectionUserData = ImS64;
pub const struct_ImGuiSelectionRequest = extern struct {
    Type: ImGuiSelectionRequestType = @import("std").mem.zeroes(ImGuiSelectionRequestType),
    Selected: bool = @import("std").mem.zeroes(bool),
    RangeDirection: ImS8 = @import("std").mem.zeroes(ImS8),
    RangeFirstItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    RangeLastItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiSelectionRequest = struct_ImGuiSelectionRequest;
pub const struct_ImVector_ImGuiSelectionRequest = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiSelectionRequest = @import("std").mem.zeroes([*c]ImGuiSelectionRequest),
};
pub const ImVector_ImGuiSelectionRequest = struct_ImVector_ImGuiSelectionRequest;
pub const struct_ImGuiMultiSelectIO = extern struct {
    Requests: ImVector_ImGuiSelectionRequest = @import("std").mem.zeroes(ImVector_ImGuiSelectionRequest),
    RangeSrcItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdSelected: bool = @import("std").mem.zeroes(bool),
    RangeSrcReset: bool = @import("std").mem.zeroes(bool),
    ItemsCount: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiMultiSelectIO = struct_ImGuiMultiSelectIO;
pub const struct_ImGuiOnceUponAFrame = extern struct {
    RefFrame: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiOnceUponAFrame = struct_ImGuiOnceUponAFrame;
pub const struct_ImGuiPayload = extern struct {
    Data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    DataSize: c_int = @import("std").mem.zeroes(c_int),
    SourceId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SourceParentId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DataFrameCount: c_int = @import("std").mem.zeroes(c_int),
    DataType: [33]u8 = @import("std").mem.zeroes([33]u8),
    Preview: bool = @import("std").mem.zeroes(bool),
    Delivery: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiPayload = struct_ImGuiPayload;
pub const ImGuiSelectionBasicStorage = struct_ImGuiSelectionBasicStorage;
pub const struct_ImGuiSelectionBasicStorage = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    PreserveOrder: bool = @import("std").mem.zeroes(bool),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    AdapterIndexToStorageId: ?*const fn ([*c]ImGuiSelectionBasicStorage, c_int) callconv(.c) ImGuiID = @import("std").mem.zeroes(?*const fn ([*c]ImGuiSelectionBasicStorage, c_int) callconv(.c) ImGuiID),
    _SelectionOrder: c_int = @import("std").mem.zeroes(c_int),
    _Storage: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
};
pub const ImGuiSelectionExternalStorage = struct_ImGuiSelectionExternalStorage;
pub const struct_ImGuiSelectionExternalStorage = extern struct {
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    AdapterSetItemSelected: ?*const fn ([*c]ImGuiSelectionExternalStorage, c_int, bool) callconv(.c) void = @import("std").mem.zeroes(?*const fn ([*c]ImGuiSelectionExternalStorage, c_int, bool) callconv(.c) void),
};
pub const struct_ImGuiSizeCallbackData = extern struct {
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CurrentSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DesiredSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImGuiSizeCallbackData = struct_ImGuiSizeCallbackData;
pub const ImS16 = c_short;
pub const struct_ImGuiTableColumnSortSpecs = extern struct {
    ColumnUserID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ColumnIndex: ImS16 = @import("std").mem.zeroes(ImS16),
    SortOrder: ImS16 = @import("std").mem.zeroes(ImS16),
    SortDirection: ImGuiSortDirection = @import("std").mem.zeroes(ImGuiSortDirection),
};
pub const ImGuiTableColumnSortSpecs = struct_ImGuiTableColumnSortSpecs;
pub const struct_ImGuiTableSortSpecs = extern struct {
    Specs: [*c]const ImGuiTableColumnSortSpecs = @import("std").mem.zeroes([*c]const ImGuiTableColumnSortSpecs),
    SpecsCount: c_int = @import("std").mem.zeroes(c_int),
    SpecsDirty: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTableSortSpecs = struct_ImGuiTableSortSpecs;
pub const struct_ImVector_char = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const ImVector_char = struct_ImVector_char;
pub const struct_ImGuiTextBuffer = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImGuiTextBuffer = struct_ImGuiTextBuffer;
pub const struct_ImGuiTextRange = extern struct {
    b: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    e: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiTextRange = struct_ImGuiTextRange;
pub const struct_ImVector_ImGuiTextRange = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTextRange = @import("std").mem.zeroes([*c]ImGuiTextRange),
};
pub const ImVector_ImGuiTextRange = struct_ImVector_ImGuiTextRange;
pub const struct_ImGuiTextFilter = extern struct {
    InputBuf: [256]u8 = @import("std").mem.zeroes([256]u8),
    Filters: ImVector_ImGuiTextRange = @import("std").mem.zeroes(ImVector_ImGuiTextRange),
    CountGrep: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTextFilter = struct_ImGuiTextFilter;
pub const struct_ImBitVector = extern struct {
    Storage: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
};
pub const ImBitVector = struct_ImBitVector;
pub const struct_ImVector_int = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
};
pub const ImVector_int = struct_ImVector_int;
pub const struct_ImGuiTextIndex = extern struct {
    LineOffsets: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    EndOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTextIndex = struct_ImGuiTextIndex;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:2408:19: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiBoxSelectState = opaque {};
pub const ImGuiBoxSelectState = struct_ImGuiBoxSelectState;
pub const ImGuiCol = c_int;
pub const struct_ImGuiColorMod = extern struct {
    Col: ImGuiCol = @import("std").mem.zeroes(ImGuiCol),
    BackupValue: ImVec4 = @import("std").mem.zeroes(ImVec4),
};
pub const ImGuiColorMod = struct_ImGuiColorMod;
pub const ImGuiContextHook = struct_ImGuiContextHook;
pub const ImGuiContextHookCallback = ?*const fn (?*ImGuiContext, [*c]ImGuiContextHook) callconv(.c) void;
pub const struct_ImGuiContextHook = extern struct {
    HookId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Type: ImGuiContextHookType = @import("std").mem.zeroes(ImGuiContextHookType),
    Owner: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Callback: ImGuiContextHookCallback = @import("std").mem.zeroes(ImGuiContextHookCallback),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const struct_ImGuiDataTypeInfo = extern struct {
    Size: usize = @import("std").mem.zeroes(usize),
    Name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    PrintFmt: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    ScanFmt: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiDataTypeInfo = struct_ImGuiDataTypeInfo;
pub const struct_ImGuiDeactivatedItemData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ElapseFrame: c_int = @import("std").mem.zeroes(c_int),
    HasBeenEditedBefore: bool = @import("std").mem.zeroes(bool),
    IsAlive: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiDeactivatedItemData = struct_ImGuiDeactivatedItemData;
pub const struct_ImGuiDockRequest = opaque {};
pub const ImGuiDockRequest = struct_ImGuiDockRequest;
pub const struct_ImVector_ImGuiDockRequest = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiDockRequest = @import("std").mem.zeroes(?*ImGuiDockRequest),
};
pub const ImVector_ImGuiDockRequest = struct_ImVector_ImGuiDockRequest;
pub const struct_ImGuiDockNodeSettings = opaque {};
pub const ImGuiDockNodeSettings = struct_ImGuiDockNodeSettings;
pub const struct_ImVector_ImGuiDockNodeSettings = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiDockNodeSettings = @import("std").mem.zeroes(?*ImGuiDockNodeSettings),
};
pub const ImVector_ImGuiDockNodeSettings = struct_ImVector_ImGuiDockNodeSettings;
pub const struct_ImGuiDockContext = extern struct {
    Nodes: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    Requests: ImVector_ImGuiDockRequest = @import("std").mem.zeroes(ImVector_ImGuiDockRequest),
    NodesSettings: ImVector_ImGuiDockNodeSettings = @import("std").mem.zeroes(ImVector_ImGuiDockNodeSettings),
    WantFullRebuild: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiDockContext = struct_ImGuiDockContext;
pub const ImGuiDockNode = struct_ImGuiDockNode;
pub const ImS32 = c_int;
pub const struct_ImGuiTabItem = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiTabItemFlags = @import("std").mem.zeroes(ImGuiTabItemFlags),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    LastFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    LastFrameSelected: c_int = @import("std").mem.zeroes(c_int),
    Offset: f32 = @import("std").mem.zeroes(f32),
    Width: f32 = @import("std").mem.zeroes(f32),
    ContentWidth: f32 = @import("std").mem.zeroes(f32),
    RequestedWidth: f32 = @import("std").mem.zeroes(f32),
    NameOffset: ImS32 = @import("std").mem.zeroes(ImS32),
    BeginOrder: ImS16 = @import("std").mem.zeroes(ImS16),
    IndexDuringLayout: ImS16 = @import("std").mem.zeroes(ImS16),
    WantClose: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTabItem = struct_ImGuiTabItem;
pub const struct_ImVector_ImGuiTabItem = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTabItem = @import("std").mem.zeroes([*c]ImGuiTabItem),
};
pub const ImVector_ImGuiTabItem = struct_ImVector_ImGuiTabItem;
pub const ImGuiTabBarFlags = c_int;
pub const struct_ImGuiTabBar = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    Tabs: ImVector_ImGuiTabItem = @import("std").mem.zeroes(ImVector_ImGuiTabItem),
    Flags: ImGuiTabBarFlags = @import("std").mem.zeroes(ImGuiTabBarFlags),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SelectedTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    NextSelectedTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    VisibleTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    CurrFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    PrevFrameVisible: c_int = @import("std").mem.zeroes(c_int),
    BarRect: ImRect = @import("std").mem.zeroes(ImRect),
    CurrTabsContentsHeight: f32 = @import("std").mem.zeroes(f32),
    PrevTabsContentsHeight: f32 = @import("std").mem.zeroes(f32),
    WidthAllTabs: f32 = @import("std").mem.zeroes(f32),
    WidthAllTabsIdeal: f32 = @import("std").mem.zeroes(f32),
    ScrollingAnim: f32 = @import("std").mem.zeroes(f32),
    ScrollingTarget: f32 = @import("std").mem.zeroes(f32),
    ScrollingTargetDistToVisibility: f32 = @import("std").mem.zeroes(f32),
    ScrollingSpeed: f32 = @import("std").mem.zeroes(f32),
    ScrollingRectMinX: f32 = @import("std").mem.zeroes(f32),
    ScrollingRectMaxX: f32 = @import("std").mem.zeroes(f32),
    SeparatorMinX: f32 = @import("std").mem.zeroes(f32),
    SeparatorMaxX: f32 = @import("std").mem.zeroes(f32),
    ReorderRequestTabId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ReorderRequestOffset: ImS16 = @import("std").mem.zeroes(ImS16),
    BeginCount: ImS8 = @import("std").mem.zeroes(ImS8),
    WantLayout: bool = @import("std").mem.zeroes(bool),
    VisibleTabWasSubmitted: bool = @import("std").mem.zeroes(bool),
    TabsAddedNew: bool = @import("std").mem.zeroes(bool),
    TabsActiveCount: ImS16 = @import("std").mem.zeroes(ImS16),
    LastTabItemIdx: ImS16 = @import("std").mem.zeroes(ImS16),
    ItemSpacingY: f32 = @import("std").mem.zeroes(f32),
    FramePadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TabsNames: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
};
pub const ImGuiTabBar = struct_ImGuiTabBar;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:2511:24: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiDockNode = opaque {};
pub const struct_ImVec1 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
};
pub const ImVec1 = struct_ImVec1;
pub const struct_ImGuiGroupData = extern struct {
    WindowID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    BackupCursorPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorPosPrevLine: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupIndent: ImVec1 = @import("std").mem.zeroes(ImVec1),
    BackupGroupOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    BackupCurrLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCurrLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    BackupActiveIdIsAlive: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    BackupDeactivatedIdIsAlive: bool = @import("std").mem.zeroes(bool),
    BackupHoveredIdIsAlive: bool = @import("std").mem.zeroes(bool),
    BackupIsSameLine: bool = @import("std").mem.zeroes(bool),
    EmitItem: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiGroupData = struct_ImGuiGroupData;
pub const struct_STB_TexteditState = opaque {};
pub const STB_TexteditState = struct_STB_TexteditState;
pub const ImStbTexteditState = STB_TexteditState;
pub const struct_ImGuiInputTextState = extern struct {
    Ctx: ?*ImGuiContext = @import("std").mem.zeroes(?*ImGuiContext),
    Stb: ?*ImStbTexteditState = @import("std").mem.zeroes(?*ImStbTexteditState),
    Flags: ImGuiInputTextFlags = @import("std").mem.zeroes(ImGuiInputTextFlags),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TextLen: c_int = @import("std").mem.zeroes(c_int),
    TextSrc: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    TextA: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    TextToRevertTo: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    CallbackTextBackup: ImVector_char = @import("std").mem.zeroes(ImVector_char),
    BufCapacity: c_int = @import("std").mem.zeroes(c_int),
    Scroll: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CursorAnim: f32 = @import("std").mem.zeroes(f32),
    CursorFollow: bool = @import("std").mem.zeroes(bool),
    SelectedAllMouseLock: bool = @import("std").mem.zeroes(bool),
    Edited: bool = @import("std").mem.zeroes(bool),
    WantReloadUserBuf: bool = @import("std").mem.zeroes(bool),
    ReloadSelectionStart: c_int = @import("std").mem.zeroes(c_int),
    ReloadSelectionEnd: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiInputTextState = struct_ImGuiInputTextState;
pub const struct_ImGuiInputTextDeactivateData = opaque {};
pub const ImGuiInputTextDeactivateData = struct_ImGuiInputTextDeactivateData;
pub const struct_ImGuiLocEntry = extern struct {
    Key: ImGuiLocKey = @import("std").mem.zeroes(ImGuiLocKey),
    Text: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ImGuiLocEntry = struct_ImGuiLocEntry;
pub const struct_ImGuiMenuColumns = extern struct {
    TotalWidth: ImU32 = @import("std").mem.zeroes(ImU32),
    NextTotalWidth: ImU32 = @import("std").mem.zeroes(ImU32),
    Spacing: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetIcon: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetLabel: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetShortcut: ImU16 = @import("std").mem.zeroes(ImU16),
    OffsetMark: ImU16 = @import("std").mem.zeroes(ImU16),
    Widths: [4]ImU16 = @import("std").mem.zeroes([4]ImU16),
};
pub const ImGuiMenuColumns = struct_ImGuiMenuColumns;
pub const struct_ImGuiMultiSelectState = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastFrameActive: c_int = @import("std").mem.zeroes(c_int),
    LastSelectionSize: c_int = @import("std").mem.zeroes(c_int),
    RangeSelected: ImS8 = @import("std").mem.zeroes(ImS8),
    NavIdSelected: ImS8 = @import("std").mem.zeroes(ImS8),
    RangeSrcItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    NavIdItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiMultiSelectState = struct_ImGuiMultiSelectState;
pub const ImGuiMultiSelectFlags = c_int;
pub const struct_ImGuiMultiSelectTempData = extern struct {
    IO: ImGuiMultiSelectIO = @import("std").mem.zeroes(ImGuiMultiSelectIO),
    Storage: [*c]ImGuiMultiSelectState = @import("std").mem.zeroes([*c]ImGuiMultiSelectState),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiMultiSelectFlags = @import("std").mem.zeroes(ImGuiMultiSelectFlags),
    ScopeRectMin: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LastSubmittedItem: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    BoxSelectId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    KeyMods: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    LoopRequestSetAll: ImS8 = @import("std").mem.zeroes(ImS8),
    IsEndIO: bool = @import("std").mem.zeroes(bool),
    IsFocused: bool = @import("std").mem.zeroes(bool),
    IsKeyboardSetRange: bool = @import("std").mem.zeroes(bool),
    NavIdPassedBy: bool = @import("std").mem.zeroes(bool),
    RangeSrcPassedBy: bool = @import("std").mem.zeroes(bool),
    RangeDstPassedBy: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiMultiSelectTempData = struct_ImGuiMultiSelectTempData;
pub const struct_ImGuiNavItemData = extern struct {
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    RectRel: ImRect = @import("std").mem.zeroes(ImRect),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    DistBox: f32 = @import("std").mem.zeroes(f32),
    DistCenter: f32 = @import("std").mem.zeroes(f32),
    DistAxial: f32 = @import("std").mem.zeroes(f32),
    SelectionUserData: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
};
pub const ImGuiNavItemData = struct_ImGuiNavItemData;
pub const struct_ImGuiMetricsConfig = extern struct {
    ShowDebugLog: bool = @import("std").mem.zeroes(bool),
    ShowIDStackTool: bool = @import("std").mem.zeroes(bool),
    ShowWindowsRects: bool = @import("std").mem.zeroes(bool),
    ShowWindowsBeginOrder: bool = @import("std").mem.zeroes(bool),
    ShowTablesRects: bool = @import("std").mem.zeroes(bool),
    ShowDrawCmdMesh: bool = @import("std").mem.zeroes(bool),
    ShowDrawCmdBoundingBoxes: bool = @import("std").mem.zeroes(bool),
    ShowTextEncodingViewer: bool = @import("std").mem.zeroes(bool),
    ShowDockingNodes: bool = @import("std").mem.zeroes(bool),
    ShowWindowsRectsType: c_int = @import("std").mem.zeroes(c_int),
    ShowTablesRectsType: c_int = @import("std").mem.zeroes(c_int),
    HighlightMonitorIdx: c_int = @import("std").mem.zeroes(c_int),
    HighlightViewportID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ShowFontPreview: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiMetricsConfig = struct_ImGuiMetricsConfig;
pub const ImGuiNextWindowDataFlags = c_int;
pub const ImGuiCond = c_int;
pub const ImGuiSizeCallback = ?*const fn ([*c]ImGuiSizeCallbackData) callconv(.c) void;
pub const ImGuiWindowRefreshFlags = c_int;
pub const struct_ImGuiNextWindowData = extern struct {
    HasFlags: ImGuiNextWindowDataFlags = @import("std").mem.zeroes(ImGuiNextWindowDataFlags),
    PosCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    SizeCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    CollapsedCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    DockCond: ImGuiCond = @import("std").mem.zeroes(ImGuiCond),
    PosVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    PosPivotVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    SizeVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ContentSizeVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ScrollVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    WindowFlags: ImGuiWindowFlags = @import("std").mem.zeroes(ImGuiWindowFlags),
    ChildFlags: ImGuiChildFlags = @import("std").mem.zeroes(ImGuiChildFlags),
    PosUndock: bool = @import("std").mem.zeroes(bool),
    CollapsedVal: bool = @import("std").mem.zeroes(bool),
    SizeConstraintRect: ImRect = @import("std").mem.zeroes(ImRect),
    SizeCallback: ImGuiSizeCallback = @import("std").mem.zeroes(ImGuiSizeCallback),
    SizeCallbackUserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    BgAlphaVal: f32 = @import("std").mem.zeroes(f32),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    WindowClass: ImGuiWindowClass = @import("std").mem.zeroes(ImGuiWindowClass),
    MenuBarOffsetMinVal: ImVec2 = @import("std").mem.zeroes(ImVec2),
    RefreshFlagsVal: ImGuiWindowRefreshFlags = @import("std").mem.zeroes(ImGuiWindowRefreshFlags),
};
pub const ImGuiNextWindowData = struct_ImGuiNextWindowData;
pub const ImGuiNextItemDataFlags = c_int;
pub const ImGuiInputFlags = c_int;
pub const struct_ImGuiDataTypeStorage = extern struct {
    Data: [8]ImU8 = @import("std").mem.zeroes([8]ImU8),
};
pub const ImGuiDataTypeStorage = struct_ImGuiDataTypeStorage;
pub const struct_ImGuiNextItemData = extern struct {
    HasFlags: ImGuiNextItemDataFlags = @import("std").mem.zeroes(ImGuiNextItemDataFlags),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    FocusScopeId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SelectionUserData: ImGuiSelectionUserData = @import("std").mem.zeroes(ImGuiSelectionUserData),
    Width: f32 = @import("std").mem.zeroes(f32),
    Shortcut: ImGuiKeyChord = @import("std").mem.zeroes(ImGuiKeyChord),
    ShortcutFlags: ImGuiInputFlags = @import("std").mem.zeroes(ImGuiInputFlags),
    OpenVal: bool = @import("std").mem.zeroes(bool),
    OpenCond: ImU8 = @import("std").mem.zeroes(ImU8),
    RefVal: ImGuiDataTypeStorage = @import("std").mem.zeroes(ImGuiDataTypeStorage),
    StorageId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiNextItemData = struct_ImGuiNextItemData;
pub const ImGuiOldColumnFlags = c_int;
pub const struct_ImGuiOldColumnData = extern struct {
    OffsetNorm: f32 = @import("std").mem.zeroes(f32),
    OffsetNormBeforeResize: f32 = @import("std").mem.zeroes(f32),
    Flags: ImGuiOldColumnFlags = @import("std").mem.zeroes(ImGuiOldColumnFlags),
    ClipRect: ImRect = @import("std").mem.zeroes(ImRect),
};
pub const ImGuiOldColumnData = struct_ImGuiOldColumnData;
pub const struct_ImVector_ImGuiOldColumnData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiOldColumnData = @import("std").mem.zeroes([*c]ImGuiOldColumnData),
};
pub const ImVector_ImGuiOldColumnData = struct_ImVector_ImGuiOldColumnData;
pub const struct_ImGuiOldColumns = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImGuiOldColumnFlags = @import("std").mem.zeroes(ImGuiOldColumnFlags),
    IsFirstFrame: bool = @import("std").mem.zeroes(bool),
    IsBeingResized: bool = @import("std").mem.zeroes(bool),
    Current: c_int = @import("std").mem.zeroes(c_int),
    Count: c_int = @import("std").mem.zeroes(c_int),
    OffMinX: f32 = @import("std").mem.zeroes(f32),
    OffMaxX: f32 = @import("std").mem.zeroes(f32),
    LineMinY: f32 = @import("std").mem.zeroes(f32),
    LineMaxY: f32 = @import("std").mem.zeroes(f32),
    HostCursorPosY: f32 = @import("std").mem.zeroes(f32),
    HostCursorMaxPosX: f32 = @import("std").mem.zeroes(f32),
    HostInitialClipRect: ImRect = @import("std").mem.zeroes(ImRect),
    HostBackupClipRect: ImRect = @import("std").mem.zeroes(ImRect),
    HostBackupParentWorkRect: ImRect = @import("std").mem.zeroes(ImRect),
    Columns: ImVector_ImGuiOldColumnData = @import("std").mem.zeroes(ImVector_ImGuiOldColumnData),
    Splitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
};
pub const ImGuiOldColumns = struct_ImGuiOldColumns;
pub const struct_ImGuiPopupData = extern struct {
    PopupId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Window: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    RestoreNavWindow: ?*ImGuiWindow = @import("std").mem.zeroes(?*ImGuiWindow),
    ParentNavLayer: c_int = @import("std").mem.zeroes(c_int),
    OpenFrameCount: c_int = @import("std").mem.zeroes(c_int),
    OpenParentId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    OpenPopupPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    OpenMousePos: ImVec2 = @import("std").mem.zeroes(ImVec2),
};
pub const ImGuiPopupData = struct_ImGuiPopupData;
pub const ImGuiSettingsHandler = struct_ImGuiSettingsHandler;
pub const struct_ImGuiSettingsHandler = extern struct {
    TypeName: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    TypeHash: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ClearAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    ReadInitFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    ReadOpenFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]const u8) callconv(.c) ?*anyopaque = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]const u8) callconv(.c) ?*anyopaque),
    ReadLineFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, ?*anyopaque, [*c]const u8) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, ?*anyopaque, [*c]const u8) callconv(.c) void),
    ApplyAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler) callconv(.c) void),
    WriteAllFn: ?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]ImGuiTextBuffer) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ImGuiContext, [*c]ImGuiSettingsHandler, [*c]ImGuiTextBuffer) callconv(.c) void),
    UserData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const ImGuiStyleVar = c_int;
const union_unnamed_3 = extern union {
    BackupInt: [2]c_int,
    BackupFloat: [2]f32,
};
pub const struct_ImGuiStyleMod = extern struct {
    VarIdx: ImGuiStyleVar = @import("std").mem.zeroes(ImGuiStyleVar),
    unnamed_0: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
};
pub const ImGuiStyleMod = struct_ImGuiStyleMod;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:1766:11: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiStyleVarInfo = opaque {};
pub const ImGuiStyleVarInfo = struct_ImGuiStyleVarInfo;
pub const ImGuiTableFlags = c_int;
pub const ImGuiTableColumnIdx = ImS16;
pub const struct_ImGuiTableHeaderData = extern struct {
    Index: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    TextColor: ImU32 = @import("std").mem.zeroes(ImU32),
    BgColor0: ImU32 = @import("std").mem.zeroes(ImU32),
    BgColor1: ImU32 = @import("std").mem.zeroes(ImU32),
};
pub const ImGuiTableHeaderData = struct_ImGuiTableHeaderData;
pub const struct_ImVector_ImGuiTableHeaderData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableHeaderData = @import("std").mem.zeroes([*c]ImGuiTableHeaderData),
};
pub const ImVector_ImGuiTableHeaderData = struct_ImVector_ImGuiTableHeaderData;
pub const struct_ImGuiTableTempData = extern struct {
    TableIndex: c_int = @import("std").mem.zeroes(c_int),
    LastTimeActive: f32 = @import("std").mem.zeroes(f32),
    AngledHeadersExtraWidth: f32 = @import("std").mem.zeroes(f32),
    AngledHeadersRequests: ImVector_ImGuiTableHeaderData = @import("std").mem.zeroes(ImVector_ImGuiTableHeaderData),
    UserOuterSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    DrawSplitter: ImDrawListSplitter = @import("std").mem.zeroes(ImDrawListSplitter),
    HostBackupWorkRect: ImRect = @import("std").mem.zeroes(ImRect),
    HostBackupParentWorkRect: ImRect = @import("std").mem.zeroes(ImRect),
    HostBackupPrevLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    HostBackupCurrLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    HostBackupCursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    HostBackupColumnsOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    HostBackupItemWidth: f32 = @import("std").mem.zeroes(f32),
    HostBackupItemWidthStackSize: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTableTempData = struct_ImGuiTableTempData;
pub const ImGuiTableColumnFlags = c_int;
pub const ImGuiTableDrawChannelIdx = ImU16;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:3357:10: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTableColumn = opaque {};
pub const ImGuiTableColumn = struct_ImGuiTableColumn;
pub const struct_ImSpan_ImGuiTableColumn = extern struct {
    Data: ?*ImGuiTableColumn = @import("std").mem.zeroes(?*ImGuiTableColumn),
    DataEnd: ?*ImGuiTableColumn = @import("std").mem.zeroes(?*ImGuiTableColumn),
};
pub const ImSpan_ImGuiTableColumn = struct_ImSpan_ImGuiTableColumn;
pub const struct_ImSpan_ImGuiTableColumnIdx = extern struct {
    Data: [*c]ImGuiTableColumnIdx = @import("std").mem.zeroes([*c]ImGuiTableColumnIdx),
    DataEnd: [*c]ImGuiTableColumnIdx = @import("std").mem.zeroes([*c]ImGuiTableColumnIdx),
};
pub const ImSpan_ImGuiTableColumnIdx = struct_ImSpan_ImGuiTableColumnIdx;
pub const struct_ImGuiTableCellData = extern struct {
    BgColor: ImU32 = @import("std").mem.zeroes(ImU32),
    Column: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
};
pub const ImGuiTableCellData = struct_ImGuiTableCellData;
pub const struct_ImSpan_ImGuiTableCellData = extern struct {
    Data: [*c]ImGuiTableCellData = @import("std").mem.zeroes([*c]ImGuiTableCellData),
    DataEnd: [*c]ImGuiTableCellData = @import("std").mem.zeroes([*c]ImGuiTableCellData),
};
pub const ImSpan_ImGuiTableCellData = struct_ImSpan_ImGuiTableCellData;
pub const ImBitArrayPtr = [*c]ImU32;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:3420:24: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTable = opaque {};
pub const ImGuiTable = struct_ImGuiTable;
pub const struct_ImGuiTableInstanceData = extern struct {
    TableInstanceID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastOuterHeight: f32 = @import("std").mem.zeroes(f32),
    LastTopHeadersRowHeight: f32 = @import("std").mem.zeroes(f32),
    LastFrozenHeight: f32 = @import("std").mem.zeroes(f32),
    HoveredRowLast: c_int = @import("std").mem.zeroes(c_int),
    HoveredRowNext: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiTableInstanceData = struct_ImGuiTableInstanceData;
pub const struct_ImGuiTableSettings = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    SaveFlags: ImGuiTableFlags = @import("std").mem.zeroes(ImGuiTableFlags),
    RefScale: f32 = @import("std").mem.zeroes(f32),
    ColumnsCount: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    ColumnsCountMax: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
    WantApply: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTableSettings = struct_ImGuiTableSettings;
pub const struct_ImGuiTableColumnsSettings = opaque {};
pub const ImGuiTableColumnsSettings = struct_ImGuiTableColumnsSettings;
pub const struct_ImGuiTreeNodeStackData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TreeFlags: ImGuiTreeNodeFlags = @import("std").mem.zeroes(ImGuiTreeNodeFlags),
    ItemFlags: ImGuiItemFlags = @import("std").mem.zeroes(ImGuiItemFlags),
    NavRect: ImRect = @import("std").mem.zeroes(ImRect),
    DrawLinesX1: f32 = @import("std").mem.zeroes(f32),
    DrawLinesToNodesY2: f32 = @import("std").mem.zeroes(f32),
    DrawLinesTableColumn: ImGuiTableColumnIdx = @import("std").mem.zeroes(ImGuiTableColumnIdx),
};
pub const ImGuiTreeNodeStackData = struct_ImGuiTreeNodeStackData;
pub const ImGuiTypingSelectFlags = c_int;
pub const struct_ImGuiTypingSelectRequest = extern struct {
    Flags: ImGuiTypingSelectFlags = @import("std").mem.zeroes(ImGuiTypingSelectFlags),
    SearchBufferLen: c_int = @import("std").mem.zeroes(c_int),
    SearchBuffer: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    SelectRequest: bool = @import("std").mem.zeroes(bool),
    SingleCharMode: bool = @import("std").mem.zeroes(bool),
    SingleCharSize: ImS8 = @import("std").mem.zeroes(ImS8),
};
pub const ImGuiTypingSelectRequest = struct_ImGuiTypingSelectRequest;
pub const struct_ImGuiTypingSelectState = extern struct {
    Request: ImGuiTypingSelectRequest = @import("std").mem.zeroes(ImGuiTypingSelectRequest),
    SearchBuffer: [64]u8 = @import("std").mem.zeroes([64]u8),
    FocusScope: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LastRequestFrame: c_int = @import("std").mem.zeroes(c_int),
    LastRequestTime: f32 = @import("std").mem.zeroes(f32),
    SingleCharModeLock: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiTypingSelectState = struct_ImGuiTypingSelectState;
pub const struct_ImGuiWindowDockStyle = extern struct {
    Colors: [8]ImU32 = @import("std").mem.zeroes([8]ImU32),
};
pub const ImGuiWindowDockStyle = struct_ImGuiWindowDockStyle;
pub const ImGuiLayoutType = c_int;
pub const struct_ImGuiWindowTempData = extern struct {
    CursorPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CursorPosPrevLine: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CursorStartPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    IdealMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CurrLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    PrevLineSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    CurrLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    PrevLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    IsSameLine: bool = @import("std").mem.zeroes(bool),
    IsSetPos: bool = @import("std").mem.zeroes(bool),
    Indent: ImVec1 = @import("std").mem.zeroes(ImVec1),
    ColumnsOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    GroupOffset: ImVec1 = @import("std").mem.zeroes(ImVec1),
    CursorStartPosLossyness: ImVec2 = @import("std").mem.zeroes(ImVec2),
    NavLayerCurrent: ImGuiNavLayer = @import("std").mem.zeroes(ImGuiNavLayer),
    NavLayersActiveMask: c_short = @import("std").mem.zeroes(c_short),
    NavLayersActiveMaskNext: c_short = @import("std").mem.zeroes(c_short),
    NavIsScrollPushableX: bool = @import("std").mem.zeroes(bool),
    NavHideHighlightOneFrame: bool = @import("std").mem.zeroes(bool),
    NavWindowHasScrollY: bool = @import("std").mem.zeroes(bool),
    MenuBarAppending: bool = @import("std").mem.zeroes(bool),
    MenuBarOffset: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MenuColumns: ImGuiMenuColumns = @import("std").mem.zeroes(ImGuiMenuColumns),
    TreeDepth: c_int = @import("std").mem.zeroes(c_int),
    TreeHasStackDataDepthMask: ImU32 = @import("std").mem.zeroes(ImU32),
    TreeRecordsClippedNodesY2Mask: ImU32 = @import("std").mem.zeroes(ImU32),
    ChildWindows: ImVector_ImGuiWindowPtr = @import("std").mem.zeroes(ImVector_ImGuiWindowPtr),
    StateStorage: [*c]ImGuiStorage = @import("std").mem.zeroes([*c]ImGuiStorage),
    CurrentColumns: [*c]ImGuiOldColumns = @import("std").mem.zeroes([*c]ImGuiOldColumns),
    CurrentTableIdx: c_int = @import("std").mem.zeroes(c_int),
    LayoutType: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
    ParentLayoutType: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
    ModalDimBgColor: ImU32 = @import("std").mem.zeroes(ImU32),
    WindowItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    ChildItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    DockTabItemStatusFlags: ImGuiItemStatusFlags = @import("std").mem.zeroes(ImGuiItemStatusFlags),
    DockTabItemRect: ImRect = @import("std").mem.zeroes(ImRect),
    ItemWidth: f32 = @import("std").mem.zeroes(f32),
    TextWrapPos: f32 = @import("std").mem.zeroes(f32),
    ItemWidthStack: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    TextWrapPosStack: ImVector_float = @import("std").mem.zeroes(ImVector_float),
};
pub const ImGuiWindowTempData = struct_ImGuiWindowTempData;
pub const struct_ImVec2ih = extern struct {
    x: c_short = @import("std").mem.zeroes(c_short),
    y: c_short = @import("std").mem.zeroes(c_short),
};
pub const ImVec2ih = struct_ImVec2ih;
pub const struct_ImGuiWindowSettings = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Pos: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    Size: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    ViewportPos: ImVec2ih = @import("std").mem.zeroes(ImVec2ih),
    ViewportId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    ClassId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    DockOrder: c_short = @import("std").mem.zeroes(c_short),
    Collapsed: bool = @import("std").mem.zeroes(bool),
    IsChild: bool = @import("std").mem.zeroes(bool),
    WantApply: bool = @import("std").mem.zeroes(bool),
    WantDelete: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiWindowSettings = struct_ImGuiWindowSettings;
pub const struct_ImVector_const_charPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]const u8 = @import("std").mem.zeroes([*c][*c]const u8),
};
pub const ImVector_const_charPtr = struct_ImVector_const_charPtr;
pub const ImGuiDataType = c_int;
pub const ImGuiMouseButton = c_int;
pub const ImGuiMouseCursor = c_int;
pub const ImGuiTableBgTarget = c_int;
pub const ImDrawFlags = c_int;
pub const ImGuiButtonFlags = c_int;
pub const ImGuiColorEditFlags = c_int;
pub const ImGuiComboFlags = c_int;
pub const ImGuiDragDropFlags = c_int;
pub const ImGuiFocusedFlags = c_int;
pub const ImGuiPopupFlags = c_int;
pub const ImGuiSelectableFlags = c_int;
pub const ImGuiSliderFlags = c_int;
pub const ImGuiTableRowFlags = c_int;
pub const ImWchar32 = c_uint;
pub const ImGuiInputTextCallback = ?*const fn ([*c]ImGuiInputTextCallbackData) callconv(.c) c_int;
pub const ImGuiMemAllocFunc = ?*const fn (usize, ?*anyopaque) callconv(.c) ?*anyopaque;
pub const ImGuiMemFreeFunc = ?*const fn (?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const ImGuiWindowFlags_None: c_int = 0;
pub const ImGuiWindowFlags_NoTitleBar: c_int = 1;
pub const ImGuiWindowFlags_NoResize: c_int = 2;
pub const ImGuiWindowFlags_NoMove: c_int = 4;
pub const ImGuiWindowFlags_NoScrollbar: c_int = 8;
pub const ImGuiWindowFlags_NoScrollWithMouse: c_int = 16;
pub const ImGuiWindowFlags_NoCollapse: c_int = 32;
pub const ImGuiWindowFlags_AlwaysAutoResize: c_int = 64;
pub const ImGuiWindowFlags_NoBackground: c_int = 128;
pub const ImGuiWindowFlags_NoSavedSettings: c_int = 256;
pub const ImGuiWindowFlags_NoMouseInputs: c_int = 512;
pub const ImGuiWindowFlags_MenuBar: c_int = 1024;
pub const ImGuiWindowFlags_HorizontalScrollbar: c_int = 2048;
pub const ImGuiWindowFlags_NoFocusOnAppearing: c_int = 4096;
pub const ImGuiWindowFlags_NoBringToFrontOnFocus: c_int = 8192;
pub const ImGuiWindowFlags_AlwaysVerticalScrollbar: c_int = 16384;
pub const ImGuiWindowFlags_AlwaysHorizontalScrollbar: c_int = 32768;
pub const ImGuiWindowFlags_NoNavInputs: c_int = 65536;
pub const ImGuiWindowFlags_NoNavFocus: c_int = 131072;
pub const ImGuiWindowFlags_UnsavedDocument: c_int = 262144;
pub const ImGuiWindowFlags_NoDocking: c_int = 524288;
pub const ImGuiWindowFlags_NoNav: c_int = 196608;
pub const ImGuiWindowFlags_NoDecoration: c_int = 43;
pub const ImGuiWindowFlags_NoInputs: c_int = 197120;
pub const ImGuiWindowFlags_DockNodeHost: c_int = 8388608;
pub const ImGuiWindowFlags_ChildWindow: c_int = 16777216;
pub const ImGuiWindowFlags_Tooltip: c_int = 33554432;
pub const ImGuiWindowFlags_Popup: c_int = 67108864;
pub const ImGuiWindowFlags_Modal: c_int = 134217728;
pub const ImGuiWindowFlags_ChildMenu: c_int = 268435456;
pub const ImGuiWindowFlags_ = c_uint;
pub const ImGuiChildFlags_None: c_int = 0;
pub const ImGuiChildFlags_Borders: c_int = 1;
pub const ImGuiChildFlags_AlwaysUseWindowPadding: c_int = 2;
pub const ImGuiChildFlags_ResizeX: c_int = 4;
pub const ImGuiChildFlags_ResizeY: c_int = 8;
pub const ImGuiChildFlags_AutoResizeX: c_int = 16;
pub const ImGuiChildFlags_AutoResizeY: c_int = 32;
pub const ImGuiChildFlags_AlwaysAutoResize: c_int = 64;
pub const ImGuiChildFlags_FrameStyle: c_int = 128;
pub const ImGuiChildFlags_NavFlattened: c_int = 256;
pub const ImGuiChildFlags_ = c_uint;
pub const ImGuiItemFlags_None: c_int = 0;
pub const ImGuiItemFlags_NoTabStop: c_int = 1;
pub const ImGuiItemFlags_NoNav: c_int = 2;
pub const ImGuiItemFlags_NoNavDefaultFocus: c_int = 4;
pub const ImGuiItemFlags_ButtonRepeat: c_int = 8;
pub const ImGuiItemFlags_AutoClosePopups: c_int = 16;
pub const ImGuiItemFlags_AllowDuplicateId: c_int = 32;
pub const ImGuiItemFlags_ = c_uint;
pub const ImGuiInputTextFlags_None: c_int = 0;
pub const ImGuiInputTextFlags_CharsDecimal: c_int = 1;
pub const ImGuiInputTextFlags_CharsHexadecimal: c_int = 2;
pub const ImGuiInputTextFlags_CharsScientific: c_int = 4;
pub const ImGuiInputTextFlags_CharsUppercase: c_int = 8;
pub const ImGuiInputTextFlags_CharsNoBlank: c_int = 16;
pub const ImGuiInputTextFlags_AllowTabInput: c_int = 32;
pub const ImGuiInputTextFlags_EnterReturnsTrue: c_int = 64;
pub const ImGuiInputTextFlags_EscapeClearsAll: c_int = 128;
pub const ImGuiInputTextFlags_CtrlEnterForNewLine: c_int = 256;
pub const ImGuiInputTextFlags_ReadOnly: c_int = 512;
pub const ImGuiInputTextFlags_Password: c_int = 1024;
pub const ImGuiInputTextFlags_AlwaysOverwrite: c_int = 2048;
pub const ImGuiInputTextFlags_AutoSelectAll: c_int = 4096;
pub const ImGuiInputTextFlags_ParseEmptyRefVal: c_int = 8192;
pub const ImGuiInputTextFlags_DisplayEmptyRefVal: c_int = 16384;
pub const ImGuiInputTextFlags_NoHorizontalScroll: c_int = 32768;
pub const ImGuiInputTextFlags_NoUndoRedo: c_int = 65536;
pub const ImGuiInputTextFlags_ElideLeft: c_int = 131072;
pub const ImGuiInputTextFlags_CallbackCompletion: c_int = 262144;
pub const ImGuiInputTextFlags_CallbackHistory: c_int = 524288;
pub const ImGuiInputTextFlags_CallbackAlways: c_int = 1048576;
pub const ImGuiInputTextFlags_CallbackCharFilter: c_int = 2097152;
pub const ImGuiInputTextFlags_CallbackResize: c_int = 4194304;
pub const ImGuiInputTextFlags_CallbackEdit: c_int = 8388608;
pub const ImGuiInputTextFlags_ = c_uint;
pub const ImGuiTreeNodeFlags_None: c_int = 0;
pub const ImGuiTreeNodeFlags_Selected: c_int = 1;
pub const ImGuiTreeNodeFlags_Framed: c_int = 2;
pub const ImGuiTreeNodeFlags_AllowOverlap: c_int = 4;
pub const ImGuiTreeNodeFlags_NoTreePushOnOpen: c_int = 8;
pub const ImGuiTreeNodeFlags_NoAutoOpenOnLog: c_int = 16;
pub const ImGuiTreeNodeFlags_DefaultOpen: c_int = 32;
pub const ImGuiTreeNodeFlags_OpenOnDoubleClick: c_int = 64;
pub const ImGuiTreeNodeFlags_OpenOnArrow: c_int = 128;
pub const ImGuiTreeNodeFlags_Leaf: c_int = 256;
pub const ImGuiTreeNodeFlags_Bullet: c_int = 512;
pub const ImGuiTreeNodeFlags_FramePadding: c_int = 1024;
pub const ImGuiTreeNodeFlags_SpanAvailWidth: c_int = 2048;
pub const ImGuiTreeNodeFlags_SpanFullWidth: c_int = 4096;
pub const ImGuiTreeNodeFlags_SpanLabelWidth: c_int = 8192;
pub const ImGuiTreeNodeFlags_SpanAllColumns: c_int = 16384;
pub const ImGuiTreeNodeFlags_LabelSpanAllColumns: c_int = 32768;
pub const ImGuiTreeNodeFlags_NavLeftJumpsToParent: c_int = 131072;
pub const ImGuiTreeNodeFlags_CollapsingHeader: c_int = 26;
pub const ImGuiTreeNodeFlags_DrawLinesNone: c_int = 262144;
pub const ImGuiTreeNodeFlags_DrawLinesFull: c_int = 524288;
pub const ImGuiTreeNodeFlags_DrawLinesToNodes: c_int = 1048576;
pub const ImGuiTreeNodeFlags_ = c_uint;
pub const ImGuiPopupFlags_None: c_int = 0;
pub const ImGuiPopupFlags_MouseButtonLeft: c_int = 0;
pub const ImGuiPopupFlags_MouseButtonRight: c_int = 1;
pub const ImGuiPopupFlags_MouseButtonMiddle: c_int = 2;
pub const ImGuiPopupFlags_MouseButtonMask_: c_int = 31;
pub const ImGuiPopupFlags_MouseButtonDefault_: c_int = 1;
pub const ImGuiPopupFlags_NoReopen: c_int = 32;
pub const ImGuiPopupFlags_NoOpenOverExistingPopup: c_int = 128;
pub const ImGuiPopupFlags_NoOpenOverItems: c_int = 256;
pub const ImGuiPopupFlags_AnyPopupId: c_int = 1024;
pub const ImGuiPopupFlags_AnyPopupLevel: c_int = 2048;
pub const ImGuiPopupFlags_AnyPopup: c_int = 3072;
pub const ImGuiPopupFlags_ = c_uint;
pub const ImGuiSelectableFlags_None: c_int = 0;
pub const ImGuiSelectableFlags_NoAutoClosePopups: c_int = 1;
pub const ImGuiSelectableFlags_SpanAllColumns: c_int = 2;
pub const ImGuiSelectableFlags_AllowDoubleClick: c_int = 4;
pub const ImGuiSelectableFlags_Disabled: c_int = 8;
pub const ImGuiSelectableFlags_AllowOverlap: c_int = 16;
pub const ImGuiSelectableFlags_Highlight: c_int = 32;
pub const ImGuiSelectableFlags_ = c_uint;
pub const ImGuiComboFlags_None: c_int = 0;
pub const ImGuiComboFlags_PopupAlignLeft: c_int = 1;
pub const ImGuiComboFlags_HeightSmall: c_int = 2;
pub const ImGuiComboFlags_HeightRegular: c_int = 4;
pub const ImGuiComboFlags_HeightLarge: c_int = 8;
pub const ImGuiComboFlags_HeightLargest: c_int = 16;
pub const ImGuiComboFlags_NoArrowButton: c_int = 32;
pub const ImGuiComboFlags_NoPreview: c_int = 64;
pub const ImGuiComboFlags_WidthFitPreview: c_int = 128;
pub const ImGuiComboFlags_HeightMask_: c_int = 30;
pub const ImGuiComboFlags_ = c_uint;
pub const ImGuiTabBarFlags_None: c_int = 0;
pub const ImGuiTabBarFlags_Reorderable: c_int = 1;
pub const ImGuiTabBarFlags_AutoSelectNewTabs: c_int = 2;
pub const ImGuiTabBarFlags_TabListPopupButton: c_int = 4;
pub const ImGuiTabBarFlags_NoCloseWithMiddleMouseButton: c_int = 8;
pub const ImGuiTabBarFlags_NoTabListScrollingButtons: c_int = 16;
pub const ImGuiTabBarFlags_NoTooltip: c_int = 32;
pub const ImGuiTabBarFlags_DrawSelectedOverline: c_int = 64;
pub const ImGuiTabBarFlags_FittingPolicyResizeDown: c_int = 128;
pub const ImGuiTabBarFlags_FittingPolicyScroll: c_int = 256;
pub const ImGuiTabBarFlags_FittingPolicyMask_: c_int = 384;
pub const ImGuiTabBarFlags_FittingPolicyDefault_: c_int = 128;
pub const ImGuiTabBarFlags_ = c_uint;
pub const ImGuiTabItemFlags_None: c_int = 0;
pub const ImGuiTabItemFlags_UnsavedDocument: c_int = 1;
pub const ImGuiTabItemFlags_SetSelected: c_int = 2;
pub const ImGuiTabItemFlags_NoCloseWithMiddleMouseButton: c_int = 4;
pub const ImGuiTabItemFlags_NoPushId: c_int = 8;
pub const ImGuiTabItemFlags_NoTooltip: c_int = 16;
pub const ImGuiTabItemFlags_NoReorder: c_int = 32;
pub const ImGuiTabItemFlags_Leading: c_int = 64;
pub const ImGuiTabItemFlags_Trailing: c_int = 128;
pub const ImGuiTabItemFlags_NoAssumedClosure: c_int = 256;
pub const ImGuiTabItemFlags_ = c_uint;
pub const ImGuiFocusedFlags_None: c_int = 0;
pub const ImGuiFocusedFlags_ChildWindows: c_int = 1;
pub const ImGuiFocusedFlags_RootWindow: c_int = 2;
pub const ImGuiFocusedFlags_AnyWindow: c_int = 4;
pub const ImGuiFocusedFlags_NoPopupHierarchy: c_int = 8;
pub const ImGuiFocusedFlags_DockHierarchy: c_int = 16;
pub const ImGuiFocusedFlags_RootAndChildWindows: c_int = 3;
pub const ImGuiFocusedFlags_ = c_uint;
pub const ImGuiHoveredFlags_None: c_int = 0;
pub const ImGuiHoveredFlags_ChildWindows: c_int = 1;
pub const ImGuiHoveredFlags_RootWindow: c_int = 2;
pub const ImGuiHoveredFlags_AnyWindow: c_int = 4;
pub const ImGuiHoveredFlags_NoPopupHierarchy: c_int = 8;
pub const ImGuiHoveredFlags_DockHierarchy: c_int = 16;
pub const ImGuiHoveredFlags_AllowWhenBlockedByPopup: c_int = 32;
pub const ImGuiHoveredFlags_AllowWhenBlockedByActiveItem: c_int = 128;
pub const ImGuiHoveredFlags_AllowWhenOverlappedByItem: c_int = 256;
pub const ImGuiHoveredFlags_AllowWhenOverlappedByWindow: c_int = 512;
pub const ImGuiHoveredFlags_AllowWhenDisabled: c_int = 1024;
pub const ImGuiHoveredFlags_NoNavOverride: c_int = 2048;
pub const ImGuiHoveredFlags_AllowWhenOverlapped: c_int = 768;
pub const ImGuiHoveredFlags_RectOnly: c_int = 928;
pub const ImGuiHoveredFlags_RootAndChildWindows: c_int = 3;
pub const ImGuiHoveredFlags_ForTooltip: c_int = 4096;
pub const ImGuiHoveredFlags_Stationary: c_int = 8192;
pub const ImGuiHoveredFlags_DelayNone: c_int = 16384;
pub const ImGuiHoveredFlags_DelayShort: c_int = 32768;
pub const ImGuiHoveredFlags_DelayNormal: c_int = 65536;
pub const ImGuiHoveredFlags_NoSharedDelay: c_int = 131072;
pub const ImGuiHoveredFlags_ = c_uint;
pub const ImGuiDockNodeFlags_None: c_int = 0;
pub const ImGuiDockNodeFlags_KeepAliveOnly: c_int = 1;
pub const ImGuiDockNodeFlags_NoDockingOverCentralNode: c_int = 4;
pub const ImGuiDockNodeFlags_PassthruCentralNode: c_int = 8;
pub const ImGuiDockNodeFlags_NoDockingSplit: c_int = 16;
pub const ImGuiDockNodeFlags_NoResize: c_int = 32;
pub const ImGuiDockNodeFlags_AutoHideTabBar: c_int = 64;
pub const ImGuiDockNodeFlags_NoUndocking: c_int = 128;
pub const ImGuiDockNodeFlags_ = c_uint;
pub const ImGuiDragDropFlags_None: c_int = 0;
pub const ImGuiDragDropFlags_SourceNoPreviewTooltip: c_int = 1;
pub const ImGuiDragDropFlags_SourceNoDisableHover: c_int = 2;
pub const ImGuiDragDropFlags_SourceNoHoldToOpenOthers: c_int = 4;
pub const ImGuiDragDropFlags_SourceAllowNullID: c_int = 8;
pub const ImGuiDragDropFlags_SourceExtern: c_int = 16;
pub const ImGuiDragDropFlags_PayloadAutoExpire: c_int = 32;
pub const ImGuiDragDropFlags_PayloadNoCrossContext: c_int = 64;
pub const ImGuiDragDropFlags_PayloadNoCrossProcess: c_int = 128;
pub const ImGuiDragDropFlags_AcceptBeforeDelivery: c_int = 1024;
pub const ImGuiDragDropFlags_AcceptNoDrawDefaultRect: c_int = 2048;
pub const ImGuiDragDropFlags_AcceptNoPreviewTooltip: c_int = 4096;
pub const ImGuiDragDropFlags_AcceptPeekOnly: c_int = 3072;
pub const ImGuiDragDropFlags_ = c_uint;
pub const ImGuiDataType_S8: c_int = 0;
pub const ImGuiDataType_U8: c_int = 1;
pub const ImGuiDataType_S16: c_int = 2;
pub const ImGuiDataType_U16: c_int = 3;
pub const ImGuiDataType_S32: c_int = 4;
pub const ImGuiDataType_U32: c_int = 5;
pub const ImGuiDataType_S64: c_int = 6;
pub const ImGuiDataType_U64: c_int = 7;
pub const ImGuiDataType_Float: c_int = 8;
pub const ImGuiDataType_Double: c_int = 9;
pub const ImGuiDataType_Bool: c_int = 10;
pub const ImGuiDataType_String: c_int = 11;
pub const ImGuiDataType_COUNT: c_int = 12;
pub const ImGuiDataType_ = c_uint;
pub const ImGuiDir_None: c_int = -1;
pub const ImGuiDir_Left: c_int = 0;
pub const ImGuiDir_Right: c_int = 1;
pub const ImGuiDir_Up: c_int = 2;
pub const ImGuiDir_Down: c_int = 3;
pub const ImGuiDir_COUNT: c_int = 4;
pub const ImGuiDir = c_int;
pub const ImGuiSortDirection_None: c_int = 0;
pub const ImGuiSortDirection_Ascending: c_int = 1;
pub const ImGuiSortDirection_Descending: c_int = 2;
pub const ImGuiSortDirection = c_uint;
pub const ImGuiKey_None: c_int = 0;
pub const ImGuiKey_NamedKey_BEGIN: c_int = 512;
pub const ImGuiKey_Tab: c_int = 512;
pub const ImGuiKey_LeftArrow: c_int = 513;
pub const ImGuiKey_RightArrow: c_int = 514;
pub const ImGuiKey_UpArrow: c_int = 515;
pub const ImGuiKey_DownArrow: c_int = 516;
pub const ImGuiKey_PageUp: c_int = 517;
pub const ImGuiKey_PageDown: c_int = 518;
pub const ImGuiKey_Home: c_int = 519;
pub const ImGuiKey_End: c_int = 520;
pub const ImGuiKey_Insert: c_int = 521;
pub const ImGuiKey_Delete: c_int = 522;
pub const ImGuiKey_Backspace: c_int = 523;
pub const ImGuiKey_Space: c_int = 524;
pub const ImGuiKey_Enter: c_int = 525;
pub const ImGuiKey_Escape: c_int = 526;
pub const ImGuiKey_LeftCtrl: c_int = 527;
pub const ImGuiKey_LeftShift: c_int = 528;
pub const ImGuiKey_LeftAlt: c_int = 529;
pub const ImGuiKey_LeftSuper: c_int = 530;
pub const ImGuiKey_RightCtrl: c_int = 531;
pub const ImGuiKey_RightShift: c_int = 532;
pub const ImGuiKey_RightAlt: c_int = 533;
pub const ImGuiKey_RightSuper: c_int = 534;
pub const ImGuiKey_Menu: c_int = 535;
pub const ImGuiKey_0: c_int = 536;
pub const ImGuiKey_1: c_int = 537;
pub const ImGuiKey_2: c_int = 538;
pub const ImGuiKey_3: c_int = 539;
pub const ImGuiKey_4: c_int = 540;
pub const ImGuiKey_5: c_int = 541;
pub const ImGuiKey_6: c_int = 542;
pub const ImGuiKey_7: c_int = 543;
pub const ImGuiKey_8: c_int = 544;
pub const ImGuiKey_9: c_int = 545;
pub const ImGuiKey_A: c_int = 546;
pub const ImGuiKey_B: c_int = 547;
pub const ImGuiKey_C: c_int = 548;
pub const ImGuiKey_D: c_int = 549;
pub const ImGuiKey_E: c_int = 550;
pub const ImGuiKey_F: c_int = 551;
pub const ImGuiKey_G: c_int = 552;
pub const ImGuiKey_H: c_int = 553;
pub const ImGuiKey_I: c_int = 554;
pub const ImGuiKey_J: c_int = 555;
pub const ImGuiKey_K: c_int = 556;
pub const ImGuiKey_L: c_int = 557;
pub const ImGuiKey_M: c_int = 558;
pub const ImGuiKey_N: c_int = 559;
pub const ImGuiKey_O: c_int = 560;
pub const ImGuiKey_P: c_int = 561;
pub const ImGuiKey_Q: c_int = 562;
pub const ImGuiKey_R: c_int = 563;
pub const ImGuiKey_S: c_int = 564;
pub const ImGuiKey_T: c_int = 565;
pub const ImGuiKey_U: c_int = 566;
pub const ImGuiKey_V: c_int = 567;
pub const ImGuiKey_W: c_int = 568;
pub const ImGuiKey_X: c_int = 569;
pub const ImGuiKey_Y: c_int = 570;
pub const ImGuiKey_Z: c_int = 571;
pub const ImGuiKey_F1: c_int = 572;
pub const ImGuiKey_F2: c_int = 573;
pub const ImGuiKey_F3: c_int = 574;
pub const ImGuiKey_F4: c_int = 575;
pub const ImGuiKey_F5: c_int = 576;
pub const ImGuiKey_F6: c_int = 577;
pub const ImGuiKey_F7: c_int = 578;
pub const ImGuiKey_F8: c_int = 579;
pub const ImGuiKey_F9: c_int = 580;
pub const ImGuiKey_F10: c_int = 581;
pub const ImGuiKey_F11: c_int = 582;
pub const ImGuiKey_F12: c_int = 583;
pub const ImGuiKey_F13: c_int = 584;
pub const ImGuiKey_F14: c_int = 585;
pub const ImGuiKey_F15: c_int = 586;
pub const ImGuiKey_F16: c_int = 587;
pub const ImGuiKey_F17: c_int = 588;
pub const ImGuiKey_F18: c_int = 589;
pub const ImGuiKey_F19: c_int = 590;
pub const ImGuiKey_F20: c_int = 591;
pub const ImGuiKey_F21: c_int = 592;
pub const ImGuiKey_F22: c_int = 593;
pub const ImGuiKey_F23: c_int = 594;
pub const ImGuiKey_F24: c_int = 595;
pub const ImGuiKey_Apostrophe: c_int = 596;
pub const ImGuiKey_Comma: c_int = 597;
pub const ImGuiKey_Minus: c_int = 598;
pub const ImGuiKey_Period: c_int = 599;
pub const ImGuiKey_Slash: c_int = 600;
pub const ImGuiKey_Semicolon: c_int = 601;
pub const ImGuiKey_Equal: c_int = 602;
pub const ImGuiKey_LeftBracket: c_int = 603;
pub const ImGuiKey_Backslash: c_int = 604;
pub const ImGuiKey_RightBracket: c_int = 605;
pub const ImGuiKey_GraveAccent: c_int = 606;
pub const ImGuiKey_CapsLock: c_int = 607;
pub const ImGuiKey_ScrollLock: c_int = 608;
pub const ImGuiKey_NumLock: c_int = 609;
pub const ImGuiKey_PrintScreen: c_int = 610;
pub const ImGuiKey_Pause: c_int = 611;
pub const ImGuiKey_Keypad0: c_int = 612;
pub const ImGuiKey_Keypad1: c_int = 613;
pub const ImGuiKey_Keypad2: c_int = 614;
pub const ImGuiKey_Keypad3: c_int = 615;
pub const ImGuiKey_Keypad4: c_int = 616;
pub const ImGuiKey_Keypad5: c_int = 617;
pub const ImGuiKey_Keypad6: c_int = 618;
pub const ImGuiKey_Keypad7: c_int = 619;
pub const ImGuiKey_Keypad8: c_int = 620;
pub const ImGuiKey_Keypad9: c_int = 621;
pub const ImGuiKey_KeypadDecimal: c_int = 622;
pub const ImGuiKey_KeypadDivide: c_int = 623;
pub const ImGuiKey_KeypadMultiply: c_int = 624;
pub const ImGuiKey_KeypadSubtract: c_int = 625;
pub const ImGuiKey_KeypadAdd: c_int = 626;
pub const ImGuiKey_KeypadEnter: c_int = 627;
pub const ImGuiKey_KeypadEqual: c_int = 628;
pub const ImGuiKey_AppBack: c_int = 629;
pub const ImGuiKey_AppForward: c_int = 630;
pub const ImGuiKey_Oem102: c_int = 631;
pub const ImGuiKey_GamepadStart: c_int = 632;
pub const ImGuiKey_GamepadBack: c_int = 633;
pub const ImGuiKey_GamepadFaceLeft: c_int = 634;
pub const ImGuiKey_GamepadFaceRight: c_int = 635;
pub const ImGuiKey_GamepadFaceUp: c_int = 636;
pub const ImGuiKey_GamepadFaceDown: c_int = 637;
pub const ImGuiKey_GamepadDpadLeft: c_int = 638;
pub const ImGuiKey_GamepadDpadRight: c_int = 639;
pub const ImGuiKey_GamepadDpadUp: c_int = 640;
pub const ImGuiKey_GamepadDpadDown: c_int = 641;
pub const ImGuiKey_GamepadL1: c_int = 642;
pub const ImGuiKey_GamepadR1: c_int = 643;
pub const ImGuiKey_GamepadL2: c_int = 644;
pub const ImGuiKey_GamepadR2: c_int = 645;
pub const ImGuiKey_GamepadL3: c_int = 646;
pub const ImGuiKey_GamepadR3: c_int = 647;
pub const ImGuiKey_GamepadLStickLeft: c_int = 648;
pub const ImGuiKey_GamepadLStickRight: c_int = 649;
pub const ImGuiKey_GamepadLStickUp: c_int = 650;
pub const ImGuiKey_GamepadLStickDown: c_int = 651;
pub const ImGuiKey_GamepadRStickLeft: c_int = 652;
pub const ImGuiKey_GamepadRStickRight: c_int = 653;
pub const ImGuiKey_GamepadRStickUp: c_int = 654;
pub const ImGuiKey_GamepadRStickDown: c_int = 655;
pub const ImGuiKey_MouseLeft: c_int = 656;
pub const ImGuiKey_MouseRight: c_int = 657;
pub const ImGuiKey_MouseMiddle: c_int = 658;
pub const ImGuiKey_MouseX1: c_int = 659;
pub const ImGuiKey_MouseX2: c_int = 660;
pub const ImGuiKey_MouseWheelX: c_int = 661;
pub const ImGuiKey_MouseWheelY: c_int = 662;
pub const ImGuiKey_ReservedForModCtrl: c_int = 663;
pub const ImGuiKey_ReservedForModShift: c_int = 664;
pub const ImGuiKey_ReservedForModAlt: c_int = 665;
pub const ImGuiKey_ReservedForModSuper: c_int = 666;
pub const ImGuiKey_NamedKey_END: c_int = 667;
pub const ImGuiMod_None: c_int = 0;
pub const ImGuiMod_Ctrl: c_int = 4096;
pub const ImGuiMod_Shift: c_int = 8192;
pub const ImGuiMod_Alt: c_int = 16384;
pub const ImGuiMod_Super: c_int = 32768;
pub const ImGuiMod_Mask_: c_int = 61440;
pub const ImGuiKey_NamedKey_COUNT: c_int = 155;
pub const ImGuiKey = c_uint;
pub const ImGuiInputFlags_None: c_int = 0;
pub const ImGuiInputFlags_Repeat: c_int = 1;
pub const ImGuiInputFlags_RouteActive: c_int = 1024;
pub const ImGuiInputFlags_RouteFocused: c_int = 2048;
pub const ImGuiInputFlags_RouteGlobal: c_int = 4096;
pub const ImGuiInputFlags_RouteAlways: c_int = 8192;
pub const ImGuiInputFlags_RouteOverFocused: c_int = 16384;
pub const ImGuiInputFlags_RouteOverActive: c_int = 32768;
pub const ImGuiInputFlags_RouteUnlessBgFocused: c_int = 65536;
pub const ImGuiInputFlags_RouteFromRootWindow: c_int = 131072;
pub const ImGuiInputFlags_Tooltip: c_int = 262144;
pub const ImGuiInputFlags_ = c_uint;
pub const ImGuiConfigFlags_None: c_int = 0;
pub const ImGuiConfigFlags_NavEnableKeyboard: c_int = 1;
pub const ImGuiConfigFlags_NavEnableGamepad: c_int = 2;
pub const ImGuiConfigFlags_NoMouse: c_int = 16;
pub const ImGuiConfigFlags_NoMouseCursorChange: c_int = 32;
pub const ImGuiConfigFlags_NoKeyboard: c_int = 64;
pub const ImGuiConfigFlags_DockingEnable: c_int = 128;
pub const ImGuiConfigFlags_ViewportsEnable: c_int = 1024;
pub const ImGuiConfigFlags_DpiEnableScaleViewports: c_int = 16384;
pub const ImGuiConfigFlags_DpiEnableScaleFonts: c_int = 32768;
pub const ImGuiConfigFlags_IsSRGB: c_int = 1048576;
pub const ImGuiConfigFlags_IsTouchScreen: c_int = 2097152;
pub const ImGuiConfigFlags_ = c_uint;
pub const ImGuiBackendFlags_None: c_int = 0;
pub const ImGuiBackendFlags_HasGamepad: c_int = 1;
pub const ImGuiBackendFlags_HasMouseCursors: c_int = 2;
pub const ImGuiBackendFlags_HasSetMousePos: c_int = 4;
pub const ImGuiBackendFlags_RendererHasVtxOffset: c_int = 8;
pub const ImGuiBackendFlags_PlatformHasViewports: c_int = 1024;
pub const ImGuiBackendFlags_HasMouseHoveredViewport: c_int = 2048;
pub const ImGuiBackendFlags_RendererHasViewports: c_int = 4096;
pub const ImGuiBackendFlags_ = c_uint;
pub const ImGuiCol_Text: c_int = 0;
pub const ImGuiCol_TextDisabled: c_int = 1;
pub const ImGuiCol_WindowBg: c_int = 2;
pub const ImGuiCol_ChildBg: c_int = 3;
pub const ImGuiCol_PopupBg: c_int = 4;
pub const ImGuiCol_Border: c_int = 5;
pub const ImGuiCol_BorderShadow: c_int = 6;
pub const ImGuiCol_FrameBg: c_int = 7;
pub const ImGuiCol_FrameBgHovered: c_int = 8;
pub const ImGuiCol_FrameBgActive: c_int = 9;
pub const ImGuiCol_TitleBg: c_int = 10;
pub const ImGuiCol_TitleBgActive: c_int = 11;
pub const ImGuiCol_TitleBgCollapsed: c_int = 12;
pub const ImGuiCol_MenuBarBg: c_int = 13;
pub const ImGuiCol_ScrollbarBg: c_int = 14;
pub const ImGuiCol_ScrollbarGrab: c_int = 15;
pub const ImGuiCol_ScrollbarGrabHovered: c_int = 16;
pub const ImGuiCol_ScrollbarGrabActive: c_int = 17;
pub const ImGuiCol_CheckMark: c_int = 18;
pub const ImGuiCol_SliderGrab: c_int = 19;
pub const ImGuiCol_SliderGrabActive: c_int = 20;
pub const ImGuiCol_Button: c_int = 21;
pub const ImGuiCol_ButtonHovered: c_int = 22;
pub const ImGuiCol_ButtonActive: c_int = 23;
pub const ImGuiCol_Header: c_int = 24;
pub const ImGuiCol_HeaderHovered: c_int = 25;
pub const ImGuiCol_HeaderActive: c_int = 26;
pub const ImGuiCol_Separator: c_int = 27;
pub const ImGuiCol_SeparatorHovered: c_int = 28;
pub const ImGuiCol_SeparatorActive: c_int = 29;
pub const ImGuiCol_ResizeGrip: c_int = 30;
pub const ImGuiCol_ResizeGripHovered: c_int = 31;
pub const ImGuiCol_ResizeGripActive: c_int = 32;
pub const ImGuiCol_InputTextCursor: c_int = 33;
pub const ImGuiCol_TabHovered: c_int = 34;
pub const ImGuiCol_Tab: c_int = 35;
pub const ImGuiCol_TabSelected: c_int = 36;
pub const ImGuiCol_TabSelectedOverline: c_int = 37;
pub const ImGuiCol_TabDimmed: c_int = 38;
pub const ImGuiCol_TabDimmedSelected: c_int = 39;
pub const ImGuiCol_TabDimmedSelectedOverline: c_int = 40;
pub const ImGuiCol_DockingPreview: c_int = 41;
pub const ImGuiCol_DockingEmptyBg: c_int = 42;
pub const ImGuiCol_PlotLines: c_int = 43;
pub const ImGuiCol_PlotLinesHovered: c_int = 44;
pub const ImGuiCol_PlotHistogram: c_int = 45;
pub const ImGuiCol_PlotHistogramHovered: c_int = 46;
pub const ImGuiCol_TableHeaderBg: c_int = 47;
pub const ImGuiCol_TableBorderStrong: c_int = 48;
pub const ImGuiCol_TableBorderLight: c_int = 49;
pub const ImGuiCol_TableRowBg: c_int = 50;
pub const ImGuiCol_TableRowBgAlt: c_int = 51;
pub const ImGuiCol_TextLink: c_int = 52;
pub const ImGuiCol_TextSelectedBg: c_int = 53;
pub const ImGuiCol_TreeLines: c_int = 54;
pub const ImGuiCol_DragDropTarget: c_int = 55;
pub const ImGuiCol_NavCursor: c_int = 56;
pub const ImGuiCol_NavWindowingHighlight: c_int = 57;
pub const ImGuiCol_NavWindowingDimBg: c_int = 58;
pub const ImGuiCol_ModalWindowDimBg: c_int = 59;
pub const ImGuiCol_COUNT: c_int = 60;
pub const ImGuiCol_ = c_uint;
pub const ImGuiStyleVar_Alpha: c_int = 0;
pub const ImGuiStyleVar_DisabledAlpha: c_int = 1;
pub const ImGuiStyleVar_WindowPadding: c_int = 2;
pub const ImGuiStyleVar_WindowRounding: c_int = 3;
pub const ImGuiStyleVar_WindowBorderSize: c_int = 4;
pub const ImGuiStyleVar_WindowMinSize: c_int = 5;
pub const ImGuiStyleVar_WindowTitleAlign: c_int = 6;
pub const ImGuiStyleVar_ChildRounding: c_int = 7;
pub const ImGuiStyleVar_ChildBorderSize: c_int = 8;
pub const ImGuiStyleVar_PopupRounding: c_int = 9;
pub const ImGuiStyleVar_PopupBorderSize: c_int = 10;
pub const ImGuiStyleVar_FramePadding: c_int = 11;
pub const ImGuiStyleVar_FrameRounding: c_int = 12;
pub const ImGuiStyleVar_FrameBorderSize: c_int = 13;
pub const ImGuiStyleVar_ItemSpacing: c_int = 14;
pub const ImGuiStyleVar_ItemInnerSpacing: c_int = 15;
pub const ImGuiStyleVar_IndentSpacing: c_int = 16;
pub const ImGuiStyleVar_CellPadding: c_int = 17;
pub const ImGuiStyleVar_ScrollbarSize: c_int = 18;
pub const ImGuiStyleVar_ScrollbarRounding: c_int = 19;
pub const ImGuiStyleVar_GrabMinSize: c_int = 20;
pub const ImGuiStyleVar_GrabRounding: c_int = 21;
pub const ImGuiStyleVar_ImageBorderSize: c_int = 22;
pub const ImGuiStyleVar_TabRounding: c_int = 23;
pub const ImGuiStyleVar_TabBorderSize: c_int = 24;
pub const ImGuiStyleVar_TabBarBorderSize: c_int = 25;
pub const ImGuiStyleVar_TabBarOverlineSize: c_int = 26;
pub const ImGuiStyleVar_TableAngledHeadersAngle: c_int = 27;
pub const ImGuiStyleVar_TableAngledHeadersTextAlign: c_int = 28;
pub const ImGuiStyleVar_TreeLinesSize: c_int = 29;
pub const ImGuiStyleVar_TreeLinesRounding: c_int = 30;
pub const ImGuiStyleVar_ButtonTextAlign: c_int = 31;
pub const ImGuiStyleVar_SelectableTextAlign: c_int = 32;
pub const ImGuiStyleVar_SeparatorTextBorderSize: c_int = 33;
pub const ImGuiStyleVar_SeparatorTextAlign: c_int = 34;
pub const ImGuiStyleVar_SeparatorTextPadding: c_int = 35;
pub const ImGuiStyleVar_DockingSeparatorSize: c_int = 36;
pub const ImGuiStyleVar_COUNT: c_int = 37;
pub const ImGuiStyleVar_ = c_uint;
pub const ImGuiButtonFlags_None: c_int = 0;
pub const ImGuiButtonFlags_MouseButtonLeft: c_int = 1;
pub const ImGuiButtonFlags_MouseButtonRight: c_int = 2;
pub const ImGuiButtonFlags_MouseButtonMiddle: c_int = 4;
pub const ImGuiButtonFlags_MouseButtonMask_: c_int = 7;
pub const ImGuiButtonFlags_EnableNav: c_int = 8;
pub const ImGuiButtonFlags_ = c_uint;
pub const ImGuiColorEditFlags_None: c_int = 0;
pub const ImGuiColorEditFlags_NoAlpha: c_int = 2;
pub const ImGuiColorEditFlags_NoPicker: c_int = 4;
pub const ImGuiColorEditFlags_NoOptions: c_int = 8;
pub const ImGuiColorEditFlags_NoSmallPreview: c_int = 16;
pub const ImGuiColorEditFlags_NoInputs: c_int = 32;
pub const ImGuiColorEditFlags_NoTooltip: c_int = 64;
pub const ImGuiColorEditFlags_NoLabel: c_int = 128;
pub const ImGuiColorEditFlags_NoSidePreview: c_int = 256;
pub const ImGuiColorEditFlags_NoDragDrop: c_int = 512;
pub const ImGuiColorEditFlags_NoBorder: c_int = 1024;
pub const ImGuiColorEditFlags_AlphaOpaque: c_int = 2048;
pub const ImGuiColorEditFlags_AlphaNoBg: c_int = 4096;
pub const ImGuiColorEditFlags_AlphaPreviewHalf: c_int = 8192;
pub const ImGuiColorEditFlags_AlphaBar: c_int = 65536;
pub const ImGuiColorEditFlags_HDR: c_int = 524288;
pub const ImGuiColorEditFlags_DisplayRGB: c_int = 1048576;
pub const ImGuiColorEditFlags_DisplayHSV: c_int = 2097152;
pub const ImGuiColorEditFlags_DisplayHex: c_int = 4194304;
pub const ImGuiColorEditFlags_Uint8: c_int = 8388608;
pub const ImGuiColorEditFlags_Float: c_int = 16777216;
pub const ImGuiColorEditFlags_PickerHueBar: c_int = 33554432;
pub const ImGuiColorEditFlags_PickerHueWheel: c_int = 67108864;
pub const ImGuiColorEditFlags_InputRGB: c_int = 134217728;
pub const ImGuiColorEditFlags_InputHSV: c_int = 268435456;
pub const ImGuiColorEditFlags_DefaultOptions_: c_int = 177209344;
pub const ImGuiColorEditFlags_AlphaMask_: c_int = 14338;
pub const ImGuiColorEditFlags_DisplayMask_: c_int = 7340032;
pub const ImGuiColorEditFlags_DataTypeMask_: c_int = 25165824;
pub const ImGuiColorEditFlags_PickerMask_: c_int = 100663296;
pub const ImGuiColorEditFlags_InputMask_: c_int = 402653184;
pub const ImGuiColorEditFlags_ = c_uint;
pub const ImGuiSliderFlags_None: c_int = 0;
pub const ImGuiSliderFlags_Logarithmic: c_int = 32;
pub const ImGuiSliderFlags_NoRoundToFormat: c_int = 64;
pub const ImGuiSliderFlags_NoInput: c_int = 128;
pub const ImGuiSliderFlags_WrapAround: c_int = 256;
pub const ImGuiSliderFlags_ClampOnInput: c_int = 512;
pub const ImGuiSliderFlags_ClampZeroRange: c_int = 1024;
pub const ImGuiSliderFlags_NoSpeedTweaks: c_int = 2048;
pub const ImGuiSliderFlags_AlwaysClamp: c_int = 1536;
pub const ImGuiSliderFlags_InvalidMask_: c_int = 1879048207;
pub const ImGuiSliderFlags_ = c_uint;
pub const ImGuiMouseButton_Left: c_int = 0;
pub const ImGuiMouseButton_Right: c_int = 1;
pub const ImGuiMouseButton_Middle: c_int = 2;
pub const ImGuiMouseButton_COUNT: c_int = 5;
pub const ImGuiMouseButton_ = c_uint;
pub const ImGuiMouseCursor_None: c_int = -1;
pub const ImGuiMouseCursor_Arrow: c_int = 0;
pub const ImGuiMouseCursor_TextInput: c_int = 1;
pub const ImGuiMouseCursor_ResizeAll: c_int = 2;
pub const ImGuiMouseCursor_ResizeNS: c_int = 3;
pub const ImGuiMouseCursor_ResizeEW: c_int = 4;
pub const ImGuiMouseCursor_ResizeNESW: c_int = 5;
pub const ImGuiMouseCursor_ResizeNWSE: c_int = 6;
pub const ImGuiMouseCursor_Hand: c_int = 7;
pub const ImGuiMouseCursor_Wait: c_int = 8;
pub const ImGuiMouseCursor_Progress: c_int = 9;
pub const ImGuiMouseCursor_NotAllowed: c_int = 10;
pub const ImGuiMouseCursor_COUNT: c_int = 11;
pub const ImGuiMouseCursor_ = c_int;
pub const ImGuiMouseSource_Mouse: c_int = 0;
pub const ImGuiMouseSource_TouchScreen: c_int = 1;
pub const ImGuiMouseSource_Pen: c_int = 2;
pub const ImGuiMouseSource_COUNT: c_int = 3;
pub const ImGuiMouseSource = c_uint;
pub const ImGuiCond_None: c_int = 0;
pub const ImGuiCond_Always: c_int = 1;
pub const ImGuiCond_Once: c_int = 2;
pub const ImGuiCond_FirstUseEver: c_int = 4;
pub const ImGuiCond_Appearing: c_int = 8;
pub const ImGuiCond_ = c_uint;
pub const ImGuiTableFlags_None: c_int = 0;
pub const ImGuiTableFlags_Resizable: c_int = 1;
pub const ImGuiTableFlags_Reorderable: c_int = 2;
pub const ImGuiTableFlags_Hideable: c_int = 4;
pub const ImGuiTableFlags_Sortable: c_int = 8;
pub const ImGuiTableFlags_NoSavedSettings: c_int = 16;
pub const ImGuiTableFlags_ContextMenuInBody: c_int = 32;
pub const ImGuiTableFlags_RowBg: c_int = 64;
pub const ImGuiTableFlags_BordersInnerH: c_int = 128;
pub const ImGuiTableFlags_BordersOuterH: c_int = 256;
pub const ImGuiTableFlags_BordersInnerV: c_int = 512;
pub const ImGuiTableFlags_BordersOuterV: c_int = 1024;
pub const ImGuiTableFlags_BordersH: c_int = 384;
pub const ImGuiTableFlags_BordersV: c_int = 1536;
pub const ImGuiTableFlags_BordersInner: c_int = 640;
pub const ImGuiTableFlags_BordersOuter: c_int = 1280;
pub const ImGuiTableFlags_Borders: c_int = 1920;
pub const ImGuiTableFlags_NoBordersInBody: c_int = 2048;
pub const ImGuiTableFlags_NoBordersInBodyUntilResize: c_int = 4096;
pub const ImGuiTableFlags_SizingFixedFit: c_int = 8192;
pub const ImGuiTableFlags_SizingFixedSame: c_int = 16384;
pub const ImGuiTableFlags_SizingStretchProp: c_int = 24576;
pub const ImGuiTableFlags_SizingStretchSame: c_int = 32768;
pub const ImGuiTableFlags_NoHostExtendX: c_int = 65536;
pub const ImGuiTableFlags_NoHostExtendY: c_int = 131072;
pub const ImGuiTableFlags_NoKeepColumnsVisible: c_int = 262144;
pub const ImGuiTableFlags_PreciseWidths: c_int = 524288;
pub const ImGuiTableFlags_NoClip: c_int = 1048576;
pub const ImGuiTableFlags_PadOuterX: c_int = 2097152;
pub const ImGuiTableFlags_NoPadOuterX: c_int = 4194304;
pub const ImGuiTableFlags_NoPadInnerX: c_int = 8388608;
pub const ImGuiTableFlags_ScrollX: c_int = 16777216;
pub const ImGuiTableFlags_ScrollY: c_int = 33554432;
pub const ImGuiTableFlags_SortMulti: c_int = 67108864;
pub const ImGuiTableFlags_SortTristate: c_int = 134217728;
pub const ImGuiTableFlags_HighlightHoveredColumn: c_int = 268435456;
pub const ImGuiTableFlags_SizingMask_: c_int = 57344;
pub const ImGuiTableFlags_ = c_uint;
pub const ImGuiTableColumnFlags_None: c_int = 0;
pub const ImGuiTableColumnFlags_Disabled: c_int = 1;
pub const ImGuiTableColumnFlags_DefaultHide: c_int = 2;
pub const ImGuiTableColumnFlags_DefaultSort: c_int = 4;
pub const ImGuiTableColumnFlags_WidthStretch: c_int = 8;
pub const ImGuiTableColumnFlags_WidthFixed: c_int = 16;
pub const ImGuiTableColumnFlags_NoResize: c_int = 32;
pub const ImGuiTableColumnFlags_NoReorder: c_int = 64;
pub const ImGuiTableColumnFlags_NoHide: c_int = 128;
pub const ImGuiTableColumnFlags_NoClip: c_int = 256;
pub const ImGuiTableColumnFlags_NoSort: c_int = 512;
pub const ImGuiTableColumnFlags_NoSortAscending: c_int = 1024;
pub const ImGuiTableColumnFlags_NoSortDescending: c_int = 2048;
pub const ImGuiTableColumnFlags_NoHeaderLabel: c_int = 4096;
pub const ImGuiTableColumnFlags_NoHeaderWidth: c_int = 8192;
pub const ImGuiTableColumnFlags_PreferSortAscending: c_int = 16384;
pub const ImGuiTableColumnFlags_PreferSortDescending: c_int = 32768;
pub const ImGuiTableColumnFlags_IndentEnable: c_int = 65536;
pub const ImGuiTableColumnFlags_IndentDisable: c_int = 131072;
pub const ImGuiTableColumnFlags_AngledHeader: c_int = 262144;
pub const ImGuiTableColumnFlags_IsEnabled: c_int = 16777216;
pub const ImGuiTableColumnFlags_IsVisible: c_int = 33554432;
pub const ImGuiTableColumnFlags_IsSorted: c_int = 67108864;
pub const ImGuiTableColumnFlags_IsHovered: c_int = 134217728;
pub const ImGuiTableColumnFlags_WidthMask_: c_int = 24;
pub const ImGuiTableColumnFlags_IndentMask_: c_int = 196608;
pub const ImGuiTableColumnFlags_StatusMask_: c_int = 251658240;
pub const ImGuiTableColumnFlags_NoDirectResize_: c_int = 1073741824;
pub const ImGuiTableColumnFlags_ = c_uint;
pub const ImGuiTableRowFlags_None: c_int = 0;
pub const ImGuiTableRowFlags_Headers: c_int = 1;
pub const ImGuiTableRowFlags_ = c_uint;
pub const ImGuiTableBgTarget_None: c_int = 0;
pub const ImGuiTableBgTarget_RowBg0: c_int = 1;
pub const ImGuiTableBgTarget_RowBg1: c_int = 2;
pub const ImGuiTableBgTarget_CellBg: c_int = 3;
pub const ImGuiTableBgTarget_ = c_uint;
pub const ImGuiMultiSelectFlags_None: c_int = 0;
pub const ImGuiMultiSelectFlags_SingleSelect: c_int = 1;
pub const ImGuiMultiSelectFlags_NoSelectAll: c_int = 2;
pub const ImGuiMultiSelectFlags_NoRangeSelect: c_int = 4;
pub const ImGuiMultiSelectFlags_NoAutoSelect: c_int = 8;
pub const ImGuiMultiSelectFlags_NoAutoClear: c_int = 16;
pub const ImGuiMultiSelectFlags_NoAutoClearOnReselect: c_int = 32;
pub const ImGuiMultiSelectFlags_BoxSelect1d: c_int = 64;
pub const ImGuiMultiSelectFlags_BoxSelect2d: c_int = 128;
pub const ImGuiMultiSelectFlags_BoxSelectNoScroll: c_int = 256;
pub const ImGuiMultiSelectFlags_ClearOnEscape: c_int = 512;
pub const ImGuiMultiSelectFlags_ClearOnClickVoid: c_int = 1024;
pub const ImGuiMultiSelectFlags_ScopeWindow: c_int = 2048;
pub const ImGuiMultiSelectFlags_ScopeRect: c_int = 4096;
pub const ImGuiMultiSelectFlags_SelectOnClick: c_int = 8192;
pub const ImGuiMultiSelectFlags_SelectOnClickRelease: c_int = 16384;
pub const ImGuiMultiSelectFlags_NavWrapX: c_int = 65536;
pub const ImGuiMultiSelectFlags_ = c_uint;
pub const ImGuiSelectionRequestType_None: c_int = 0;
pub const ImGuiSelectionRequestType_SetAll: c_int = 1;
pub const ImGuiSelectionRequestType_SetRange: c_int = 2;
pub const ImGuiSelectionRequestType = c_uint;
pub const ImDrawFlags_None: c_int = 0;
pub const ImDrawFlags_Closed: c_int = 1;
pub const ImDrawFlags_RoundCornersTopLeft: c_int = 16;
pub const ImDrawFlags_RoundCornersTopRight: c_int = 32;
pub const ImDrawFlags_RoundCornersBottomLeft: c_int = 64;
pub const ImDrawFlags_RoundCornersBottomRight: c_int = 128;
pub const ImDrawFlags_RoundCornersNone: c_int = 256;
pub const ImDrawFlags_RoundCornersTop: c_int = 48;
pub const ImDrawFlags_RoundCornersBottom: c_int = 192;
pub const ImDrawFlags_RoundCornersLeft: c_int = 80;
pub const ImDrawFlags_RoundCornersRight: c_int = 160;
pub const ImDrawFlags_RoundCornersAll: c_int = 240;
pub const ImDrawFlags_RoundCornersDefault_: c_int = 240;
pub const ImDrawFlags_RoundCornersMask_: c_int = 496;
pub const ImDrawFlags_ = c_uint;
pub const ImDrawListFlags_None: c_int = 0;
pub const ImDrawListFlags_AntiAliasedLines: c_int = 1;
pub const ImDrawListFlags_AntiAliasedLinesUseTex: c_int = 2;
pub const ImDrawListFlags_AntiAliasedFill: c_int = 4;
pub const ImDrawListFlags_AllowVtxOffset: c_int = 8;
pub const ImDrawListFlags_ = c_uint;
pub const ImFontAtlasFlags_None: c_int = 0;
pub const ImFontAtlasFlags_NoPowerOfTwoHeight: c_int = 1;
pub const ImFontAtlasFlags_NoMouseCursors: c_int = 2;
pub const ImFontAtlasFlags_NoBakedLines: c_int = 4;
pub const ImFontAtlasFlags_ = c_uint;
pub const ImGuiViewportFlags_None: c_int = 0;
pub const ImGuiViewportFlags_IsPlatformWindow: c_int = 1;
pub const ImGuiViewportFlags_IsPlatformMonitor: c_int = 2;
pub const ImGuiViewportFlags_OwnedByApp: c_int = 4;
pub const ImGuiViewportFlags_NoDecoration: c_int = 8;
pub const ImGuiViewportFlags_NoTaskBarIcon: c_int = 16;
pub const ImGuiViewportFlags_NoFocusOnAppearing: c_int = 32;
pub const ImGuiViewportFlags_NoFocusOnClick: c_int = 64;
pub const ImGuiViewportFlags_NoInputs: c_int = 128;
pub const ImGuiViewportFlags_NoRendererClear: c_int = 256;
pub const ImGuiViewportFlags_NoAutoMerge: c_int = 512;
pub const ImGuiViewportFlags_TopMost: c_int = 1024;
pub const ImGuiViewportFlags_CanHostOtherWindows: c_int = 2048;
pub const ImGuiViewportFlags_IsMinimized: c_int = 4096;
pub const ImGuiViewportFlags_IsFocused: c_int = 8192;
pub const ImGuiViewportFlags_ = c_uint;
pub const ImGuiDataAuthority = c_int;
pub const ImGuiActivateFlags = c_int;
pub const ImGuiDebugLogFlags = c_int;
pub const ImGuiFocusRequestFlags = c_int;
pub const ImGuiLogFlags = c_int;
pub const ImGuiNavRenderCursorFlags = c_int;
pub const ImGuiNavMoveFlags = c_int;
pub const ImGuiScrollFlags = c_int;
pub const ImGuiSeparatorFlags = c_int;
pub const ImGuiTextFlags = c_int;
pub const ImGuiTooltipFlags = c_int;
pub extern var GImGui: ?*ImGuiContext;
pub const ImFileHandle = [*c]FILE;
pub const ImPoolIdx = c_int;
pub const ImGuiDataType_Pointer: c_int = 12;
pub const ImGuiDataType_ID: c_int = 13;
pub const ImGuiDataTypePrivate_ = c_uint;
pub const ImGuiItemFlags_Disabled: c_int = 1024;
pub const ImGuiItemFlags_ReadOnly: c_int = 2048;
pub const ImGuiItemFlags_MixedValue: c_int = 4096;
pub const ImGuiItemFlags_NoWindowHoverableCheck: c_int = 8192;
pub const ImGuiItemFlags_AllowOverlap: c_int = 16384;
pub const ImGuiItemFlags_NoNavDisableMouseHover: c_int = 32768;
pub const ImGuiItemFlags_NoMarkEdited: c_int = 65536;
pub const ImGuiItemFlags_Inputable: c_int = 1048576;
pub const ImGuiItemFlags_HasSelectionUserData: c_int = 2097152;
pub const ImGuiItemFlags_IsMultiSelect: c_int = 4194304;
pub const ImGuiItemFlags_Default_: c_int = 16;
pub const ImGuiItemFlagsPrivate_ = c_uint;
pub const ImGuiItemStatusFlags_None: c_int = 0;
pub const ImGuiItemStatusFlags_HoveredRect: c_int = 1;
pub const ImGuiItemStatusFlags_HasDisplayRect: c_int = 2;
pub const ImGuiItemStatusFlags_Edited: c_int = 4;
pub const ImGuiItemStatusFlags_ToggledSelection: c_int = 8;
pub const ImGuiItemStatusFlags_ToggledOpen: c_int = 16;
pub const ImGuiItemStatusFlags_HasDeactivated: c_int = 32;
pub const ImGuiItemStatusFlags_Deactivated: c_int = 64;
pub const ImGuiItemStatusFlags_HoveredWindow: c_int = 128;
pub const ImGuiItemStatusFlags_Visible: c_int = 256;
pub const ImGuiItemStatusFlags_HasClipRect: c_int = 512;
pub const ImGuiItemStatusFlags_HasShortcut: c_int = 1024;
pub const ImGuiItemStatusFlags_ = c_uint;
pub const ImGuiHoveredFlags_DelayMask_: c_int = 245760;
pub const ImGuiHoveredFlags_AllowedMaskForIsWindowHovered: c_int = 12479;
pub const ImGuiHoveredFlags_AllowedMaskForIsItemHovered: c_int = 262048;
pub const ImGuiHoveredFlagsPrivate_ = c_uint;
pub const ImGuiInputTextFlags_Multiline: c_int = 67108864;
pub const ImGuiInputTextFlags_MergedItem: c_int = 134217728;
pub const ImGuiInputTextFlags_LocalizeDecimalPoint: c_int = 268435456;
pub const ImGuiInputTextFlagsPrivate_ = c_uint;
pub const ImGuiButtonFlags_PressedOnClick: c_int = 16;
pub const ImGuiButtonFlags_PressedOnClickRelease: c_int = 32;
pub const ImGuiButtonFlags_PressedOnClickReleaseAnywhere: c_int = 64;
pub const ImGuiButtonFlags_PressedOnRelease: c_int = 128;
pub const ImGuiButtonFlags_PressedOnDoubleClick: c_int = 256;
pub const ImGuiButtonFlags_PressedOnDragDropHold: c_int = 512;
pub const ImGuiButtonFlags_FlattenChildren: c_int = 2048;
pub const ImGuiButtonFlags_AllowOverlap: c_int = 4096;
pub const ImGuiButtonFlags_AlignTextBaseLine: c_int = 32768;
pub const ImGuiButtonFlags_NoKeyModsAllowed: c_int = 65536;
pub const ImGuiButtonFlags_NoHoldingActiveId: c_int = 131072;
pub const ImGuiButtonFlags_NoNavFocus: c_int = 262144;
pub const ImGuiButtonFlags_NoHoveredOnFocus: c_int = 524288;
pub const ImGuiButtonFlags_NoSetKeyOwner: c_int = 1048576;
pub const ImGuiButtonFlags_NoTestKeyOwner: c_int = 2097152;
pub const ImGuiButtonFlags_PressedOnMask_: c_int = 1008;
pub const ImGuiButtonFlags_PressedOnDefault_: c_int = 32;
pub const ImGuiButtonFlagsPrivate_ = c_uint;
pub const ImGuiComboFlags_CustomPreview: c_int = 1048576;
pub const ImGuiComboFlagsPrivate_ = c_uint;
pub const ImGuiSliderFlags_Vertical: c_int = 1048576;
pub const ImGuiSliderFlags_ReadOnly: c_int = 2097152;
pub const ImGuiSliderFlagsPrivate_ = c_uint;
pub const ImGuiSelectableFlags_NoHoldingActiveID: c_int = 1048576;
pub const ImGuiSelectableFlags_SelectOnNav: c_int = 2097152;
pub const ImGuiSelectableFlags_SelectOnClick: c_int = 4194304;
pub const ImGuiSelectableFlags_SelectOnRelease: c_int = 8388608;
pub const ImGuiSelectableFlags_SpanAvailWidth: c_int = 16777216;
pub const ImGuiSelectableFlags_SetNavIdOnHover: c_int = 33554432;
pub const ImGuiSelectableFlags_NoPadWithHalfSpacing: c_int = 67108864;
pub const ImGuiSelectableFlags_NoSetKeyOwner: c_int = 134217728;
pub const ImGuiSelectableFlagsPrivate_ = c_uint;
pub const ImGuiTreeNodeFlags_NoNavFocus: c_int = 134217728;
pub const ImGuiTreeNodeFlags_ClipLabelForTrailingButton: c_int = 268435456;
pub const ImGuiTreeNodeFlags_UpsideDownArrow: c_int = 536870912;
pub const ImGuiTreeNodeFlags_OpenOnMask_: c_int = 192;
pub const ImGuiTreeNodeFlags_DrawLinesMask_: c_int = 1835008;
pub const ImGuiTreeNodeFlagsPrivate_ = c_uint;
pub const ImGuiSeparatorFlags_None: c_int = 0;
pub const ImGuiSeparatorFlags_Horizontal: c_int = 1;
pub const ImGuiSeparatorFlags_Vertical: c_int = 2;
pub const ImGuiSeparatorFlags_SpanAllColumns: c_int = 4;
pub const ImGuiSeparatorFlags_ = c_uint;
pub const ImGuiFocusRequestFlags_None: c_int = 0;
pub const ImGuiFocusRequestFlags_RestoreFocusedChild: c_int = 1;
pub const ImGuiFocusRequestFlags_UnlessBelowModal: c_int = 2;
pub const ImGuiFocusRequestFlags_ = c_uint;
pub const ImGuiTextFlags_None: c_int = 0;
pub const ImGuiTextFlags_NoWidthForLargeClippedText: c_int = 1;
pub const ImGuiTextFlags_ = c_uint;
pub const ImGuiTooltipFlags_None: c_int = 0;
pub const ImGuiTooltipFlags_OverridePrevious: c_int = 2;
pub const ImGuiTooltipFlags_ = c_uint;
pub const ImGuiLayoutType_Horizontal: c_int = 0;
pub const ImGuiLayoutType_Vertical: c_int = 1;
pub const ImGuiLayoutType_ = c_uint;
pub const ImGuiLogFlags_None: c_int = 0;
pub const ImGuiLogFlags_OutputTTY: c_int = 1;
pub const ImGuiLogFlags_OutputFile: c_int = 2;
pub const ImGuiLogFlags_OutputBuffer: c_int = 4;
pub const ImGuiLogFlags_OutputClipboard: c_int = 8;
pub const ImGuiLogFlags_OutputMask_: c_int = 15;
pub const ImGuiLogFlags_ = c_uint;
pub const ImGuiAxis_None: c_int = -1;
pub const ImGuiAxis_X: c_int = 0;
pub const ImGuiAxis_Y: c_int = 1;
pub const ImGuiAxis = c_int;
pub const ImGuiPlotType_Lines: c_int = 0;
pub const ImGuiPlotType_Histogram: c_int = 1;
pub const ImGuiPlotType = c_uint;
pub const struct_ImGuiComboPreviewData = extern struct {
    PreviewRect: ImRect = @import("std").mem.zeroes(ImRect),
    BackupCursorPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorMaxPos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupCursorPosPrevLine: ImVec2 = @import("std").mem.zeroes(ImVec2),
    BackupPrevLineTextBaseOffset: f32 = @import("std").mem.zeroes(f32),
    BackupLayout: ImGuiLayoutType = @import("std").mem.zeroes(ImGuiLayoutType),
};
pub const ImGuiComboPreviewData = struct_ImGuiComboPreviewData;
pub const struct_ImGuiInputTextDeactivatedState = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    TextA: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImGuiInputTextDeactivatedState = struct_ImGuiInputTextDeactivatedState;
pub const ImGuiWindowRefreshFlags_None: c_int = 0;
pub const ImGuiWindowRefreshFlags_TryToAvoidRefresh: c_int = 1;
pub const ImGuiWindowRefreshFlags_RefreshOnHover: c_int = 2;
pub const ImGuiWindowRefreshFlags_RefreshOnFocus: c_int = 4;
pub const ImGuiWindowRefreshFlags_ = c_uint;
pub const ImGuiNextWindowDataFlags_None: c_int = 0;
pub const ImGuiNextWindowDataFlags_HasPos: c_int = 1;
pub const ImGuiNextWindowDataFlags_HasSize: c_int = 2;
pub const ImGuiNextWindowDataFlags_HasContentSize: c_int = 4;
pub const ImGuiNextWindowDataFlags_HasCollapsed: c_int = 8;
pub const ImGuiNextWindowDataFlags_HasSizeConstraint: c_int = 16;
pub const ImGuiNextWindowDataFlags_HasFocus: c_int = 32;
pub const ImGuiNextWindowDataFlags_HasBgAlpha: c_int = 64;
pub const ImGuiNextWindowDataFlags_HasScroll: c_int = 128;
pub const ImGuiNextWindowDataFlags_HasWindowFlags: c_int = 256;
pub const ImGuiNextWindowDataFlags_HasChildFlags: c_int = 512;
pub const ImGuiNextWindowDataFlags_HasRefreshPolicy: c_int = 1024;
pub const ImGuiNextWindowDataFlags_HasViewport: c_int = 2048;
pub const ImGuiNextWindowDataFlags_HasDock: c_int = 4096;
pub const ImGuiNextWindowDataFlags_HasWindowClass: c_int = 8192;
pub const ImGuiNextWindowDataFlags_ = c_uint;
pub const ImGuiNextItemDataFlags_None: c_int = 0;
pub const ImGuiNextItemDataFlags_HasWidth: c_int = 1;
pub const ImGuiNextItemDataFlags_HasOpen: c_int = 2;
pub const ImGuiNextItemDataFlags_HasShortcut: c_int = 4;
pub const ImGuiNextItemDataFlags_HasRefVal: c_int = 8;
pub const ImGuiNextItemDataFlags_HasStorageID: c_int = 16;
pub const ImGuiNextItemDataFlags_ = c_uint;
pub const struct_ImGuiShrinkWidthItem = extern struct {
    Index: c_int = @import("std").mem.zeroes(c_int),
    Width: f32 = @import("std").mem.zeroes(f32),
    InitialWidth: f32 = @import("std").mem.zeroes(f32),
};
pub const ImGuiShrinkWidthItem = struct_ImGuiShrinkWidthItem;
pub const struct_ImGuiPtrOrIndex = extern struct {
    Ptr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    Index: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImGuiPtrOrIndex = struct_ImGuiPtrOrIndex;
pub const ImGuiPopupPositionPolicy_Default: c_int = 0;
pub const ImGuiPopupPositionPolicy_ComboBox: c_int = 1;
pub const ImGuiPopupPositionPolicy_Tooltip: c_int = 2;
pub const ImGuiPopupPositionPolicy = c_uint;
pub const struct_ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN = extern struct {
    Storage: [5]ImU32 = @import("std").mem.zeroes([5]ImU32),
};
pub const ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN = struct_ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
pub const ImBitArrayForNamedKeys = ImBitArray_ImGuiKey_NamedKey_COUNT__lessImGuiKey_NamedKey_BEGIN;
pub const ImGuiInputEventType_None: c_int = 0;
pub const ImGuiInputEventType_MousePos: c_int = 1;
pub const ImGuiInputEventType_MouseWheel: c_int = 2;
pub const ImGuiInputEventType_MouseButton: c_int = 3;
pub const ImGuiInputEventType_MouseViewport: c_int = 4;
pub const ImGuiInputEventType_Key: c_int = 5;
pub const ImGuiInputEventType_Text: c_int = 6;
pub const ImGuiInputEventType_Focus: c_int = 7;
pub const ImGuiInputEventType_COUNT: c_int = 8;
pub const ImGuiInputEventType = c_uint;
pub const ImGuiInputSource_None: c_int = 0;
pub const ImGuiInputSource_Mouse: c_int = 1;
pub const ImGuiInputSource_Keyboard: c_int = 2;
pub const ImGuiInputSource_Gamepad: c_int = 3;
pub const ImGuiInputSource_COUNT: c_int = 4;
pub const ImGuiInputSource = c_uint;
pub const ImGuiKeyRoutingIndex = ImS16;
pub const struct_ImGuiKeyRoutingData = extern struct {
    NextEntryIndex: ImGuiKeyRoutingIndex = @import("std").mem.zeroes(ImGuiKeyRoutingIndex),
    Mods: ImU16 = @import("std").mem.zeroes(ImU16),
    RoutingCurrScore: ImU8 = @import("std").mem.zeroes(ImU8),
    RoutingNextScore: ImU8 = @import("std").mem.zeroes(ImU8),
    RoutingCurr: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    RoutingNext: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiKeyRoutingData = struct_ImGuiKeyRoutingData;
pub const struct_ImVector_ImGuiKeyRoutingData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiKeyRoutingData = @import("std").mem.zeroes([*c]ImGuiKeyRoutingData),
};
pub const ImVector_ImGuiKeyRoutingData = struct_ImVector_ImGuiKeyRoutingData;
pub const struct_ImGuiKeyRoutingTable = extern struct {
    Index: [155]ImGuiKeyRoutingIndex = @import("std").mem.zeroes([155]ImGuiKeyRoutingIndex),
    Entries: ImVector_ImGuiKeyRoutingData = @import("std").mem.zeroes(ImVector_ImGuiKeyRoutingData),
    EntriesNext: ImVector_ImGuiKeyRoutingData = @import("std").mem.zeroes(ImVector_ImGuiKeyRoutingData),
};
pub const ImGuiKeyRoutingTable = struct_ImGuiKeyRoutingTable;
pub const struct_ImGuiKeyOwnerData = extern struct {
    OwnerCurr: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    OwnerNext: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    LockThisFrame: bool = @import("std").mem.zeroes(bool),
    LockUntilRelease: bool = @import("std").mem.zeroes(bool),
};
pub const ImGuiKeyOwnerData = struct_ImGuiKeyOwnerData;
pub const ImGuiInputFlags_RepeatRateDefault: c_int = 2;
pub const ImGuiInputFlags_RepeatRateNavMove: c_int = 4;
pub const ImGuiInputFlags_RepeatRateNavTweak: c_int = 8;
pub const ImGuiInputFlags_RepeatUntilRelease: c_int = 16;
pub const ImGuiInputFlags_RepeatUntilKeyModsChange: c_int = 32;
pub const ImGuiInputFlags_RepeatUntilKeyModsChangeFromNone: c_int = 64;
pub const ImGuiInputFlags_RepeatUntilOtherKeyPress: c_int = 128;
pub const ImGuiInputFlags_LockThisFrame: c_int = 1048576;
pub const ImGuiInputFlags_LockUntilRelease: c_int = 2097152;
pub const ImGuiInputFlags_CondHovered: c_int = 4194304;
pub const ImGuiInputFlags_CondActive: c_int = 8388608;
pub const ImGuiInputFlags_CondDefault_: c_int = 12582912;
pub const ImGuiInputFlags_RepeatRateMask_: c_int = 14;
pub const ImGuiInputFlags_RepeatUntilMask_: c_int = 240;
pub const ImGuiInputFlags_RepeatMask_: c_int = 255;
pub const ImGuiInputFlags_CondMask_: c_int = 12582912;
pub const ImGuiInputFlags_RouteTypeMask_: c_int = 15360;
pub const ImGuiInputFlags_RouteOptionsMask_: c_int = 245760;
pub const ImGuiInputFlags_SupportedByIsKeyPressed: c_int = 255;
pub const ImGuiInputFlags_SupportedByIsMouseClicked: c_int = 1;
pub const ImGuiInputFlags_SupportedByShortcut: c_int = 261375;
pub const ImGuiInputFlags_SupportedBySetNextItemShortcut: c_int = 523519;
pub const ImGuiInputFlags_SupportedBySetKeyOwner: c_int = 3145728;
pub const ImGuiInputFlags_SupportedBySetItemKeyOwner: c_int = 15728640;
pub const ImGuiInputFlagsPrivate_ = c_uint;
pub const struct_ImGuiListClipperRange = extern struct {
    Min: c_int = @import("std").mem.zeroes(c_int),
    Max: c_int = @import("std").mem.zeroes(c_int),
    PosToIndexConvert: bool = @import("std").mem.zeroes(bool),
    PosToIndexOffsetMin: ImS8 = @import("std").mem.zeroes(ImS8),
    PosToIndexOffsetMax: ImS8 = @import("std").mem.zeroes(ImS8),
};
pub const ImGuiListClipperRange = struct_ImGuiListClipperRange;
pub const struct_ImVector_ImGuiListClipperRange = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiListClipperRange = @import("std").mem.zeroes([*c]ImGuiListClipperRange),
};
pub const ImVector_ImGuiListClipperRange = struct_ImVector_ImGuiListClipperRange;
pub const struct_ImGuiListClipperData = extern struct {
    ListClipper: [*c]ImGuiListClipper = @import("std").mem.zeroes([*c]ImGuiListClipper),
    LossynessOffset: f32 = @import("std").mem.zeroes(f32),
    StepNo: c_int = @import("std").mem.zeroes(c_int),
    ItemsFrozen: c_int = @import("std").mem.zeroes(c_int),
    Ranges: ImVector_ImGuiListClipperRange = @import("std").mem.zeroes(ImVector_ImGuiListClipperRange),
};
pub const ImGuiListClipperData = struct_ImGuiListClipperData;
pub const ImGuiActivateFlags_None: c_int = 0;
pub const ImGuiActivateFlags_PreferInput: c_int = 1;
pub const ImGuiActivateFlags_PreferTweak: c_int = 2;
pub const ImGuiActivateFlags_TryToPreserveState: c_int = 4;
pub const ImGuiActivateFlags_FromTabbing: c_int = 8;
pub const ImGuiActivateFlags_FromShortcut: c_int = 16;
pub const ImGuiActivateFlags_ = c_uint;
pub const ImGuiScrollFlags_None: c_int = 0;
pub const ImGuiScrollFlags_KeepVisibleEdgeX: c_int = 1;
pub const ImGuiScrollFlags_KeepVisibleEdgeY: c_int = 2;
pub const ImGuiScrollFlags_KeepVisibleCenterX: c_int = 4;
pub const ImGuiScrollFlags_KeepVisibleCenterY: c_int = 8;
pub const ImGuiScrollFlags_AlwaysCenterX: c_int = 16;
pub const ImGuiScrollFlags_AlwaysCenterY: c_int = 32;
pub const ImGuiScrollFlags_NoScrollParent: c_int = 64;
pub const ImGuiScrollFlags_MaskX_: c_int = 21;
pub const ImGuiScrollFlags_MaskY_: c_int = 42;
pub const ImGuiScrollFlags_ = c_uint;
pub const ImGuiNavRenderCursorFlags_None: c_int = 0;
pub const ImGuiNavRenderCursorFlags_Compact: c_int = 2;
pub const ImGuiNavRenderCursorFlags_AlwaysDraw: c_int = 4;
pub const ImGuiNavRenderCursorFlags_NoRounding: c_int = 8;
pub const ImGuiNavRenderCursorFlags_ = c_uint;
pub const ImGuiNavMoveFlags_None: c_int = 0;
pub const ImGuiNavMoveFlags_LoopX: c_int = 1;
pub const ImGuiNavMoveFlags_LoopY: c_int = 2;
pub const ImGuiNavMoveFlags_WrapX: c_int = 4;
pub const ImGuiNavMoveFlags_WrapY: c_int = 8;
pub const ImGuiNavMoveFlags_WrapMask_: c_int = 15;
pub const ImGuiNavMoveFlags_AllowCurrentNavId: c_int = 16;
pub const ImGuiNavMoveFlags_AlsoScoreVisibleSet: c_int = 32;
pub const ImGuiNavMoveFlags_ScrollToEdgeY: c_int = 64;
pub const ImGuiNavMoveFlags_Forwarded: c_int = 128;
pub const ImGuiNavMoveFlags_DebugNoResult: c_int = 256;
pub const ImGuiNavMoveFlags_FocusApi: c_int = 512;
pub const ImGuiNavMoveFlags_IsTabbing: c_int = 1024;
pub const ImGuiNavMoveFlags_IsPageMove: c_int = 2048;
pub const ImGuiNavMoveFlags_Activate: c_int = 4096;
pub const ImGuiNavMoveFlags_NoSelect: c_int = 8192;
pub const ImGuiNavMoveFlags_NoSetNavCursorVisible: c_int = 16384;
pub const ImGuiNavMoveFlags_NoClearActiveId: c_int = 32768;
pub const ImGuiNavMoveFlags_ = c_uint;
pub const ImGuiNavLayer_Main: c_int = 0;
pub const ImGuiNavLayer_Menu: c_int = 1;
pub const ImGuiNavLayer_COUNT: c_int = 2;
pub const ImGuiNavLayer = c_uint;
pub const struct_ImGuiFocusScopeData = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    WindowID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
};
pub const ImGuiFocusScopeData = struct_ImGuiFocusScopeData;
pub const ImGuiTypingSelectFlags_None: c_int = 0;
pub const ImGuiTypingSelectFlags_AllowBackspace: c_int = 1;
pub const ImGuiTypingSelectFlags_AllowSingleCharMode: c_int = 2;
pub const ImGuiTypingSelectFlags_ = c_uint;
pub const ImGuiOldColumnFlags_None: c_int = 0;
pub const ImGuiOldColumnFlags_NoBorder: c_int = 1;
pub const ImGuiOldColumnFlags_NoResize: c_int = 2;
pub const ImGuiOldColumnFlags_NoPreserveWidths: c_int = 4;
pub const ImGuiOldColumnFlags_NoForceWithinWindow: c_int = 8;
pub const ImGuiOldColumnFlags_GrowParentContentsSize: c_int = 16;
pub const ImGuiOldColumnFlags_ = c_uint;
pub const ImGuiDockNodeFlags_DockSpace: c_int = 1024;
pub const ImGuiDockNodeFlags_CentralNode: c_int = 2048;
pub const ImGuiDockNodeFlags_NoTabBar: c_int = 4096;
pub const ImGuiDockNodeFlags_HiddenTabBar: c_int = 8192;
pub const ImGuiDockNodeFlags_NoWindowMenuButton: c_int = 16384;
pub const ImGuiDockNodeFlags_NoCloseButton: c_int = 32768;
pub const ImGuiDockNodeFlags_NoResizeX: c_int = 65536;
pub const ImGuiDockNodeFlags_NoResizeY: c_int = 131072;
pub const ImGuiDockNodeFlags_DockedWindowsInFocusRoute: c_int = 262144;
pub const ImGuiDockNodeFlags_NoDockingSplitOther: c_int = 524288;
pub const ImGuiDockNodeFlags_NoDockingOverMe: c_int = 1048576;
pub const ImGuiDockNodeFlags_NoDockingOverOther: c_int = 2097152;
pub const ImGuiDockNodeFlags_NoDockingOverEmpty: c_int = 4194304;
pub const ImGuiDockNodeFlags_NoDocking: c_int = 7864336;
pub const ImGuiDockNodeFlags_SharedFlagsInheritMask_: c_int = -1;
pub const ImGuiDockNodeFlags_NoResizeFlagsMask_: c_int = 196640;
pub const ImGuiDockNodeFlags_LocalFlagsTransferMask_: c_int = 260208;
pub const ImGuiDockNodeFlags_SavedFlagsMask_: c_int = 261152;
pub const ImGuiDockNodeFlagsPrivate_ = c_int;
pub const ImGuiDataAuthority_Auto: c_int = 0;
pub const ImGuiDataAuthority_DockNode: c_int = 1;
pub const ImGuiDataAuthority_Window: c_int = 2;
pub const ImGuiDataAuthority_ = c_uint;
pub const ImGuiDockNodeState_Unknown: c_int = 0;
pub const ImGuiDockNodeState_HostWindowHiddenBecauseSingleWindow: c_int = 1;
pub const ImGuiDockNodeState_HostWindowHiddenBecauseWindowsAreResizing: c_int = 2;
pub const ImGuiDockNodeState_HostWindowVisible: c_int = 3;
pub const ImGuiDockNodeState = c_uint;
pub const ImGuiWindowDockStyleCol_Text: c_int = 0;
pub const ImGuiWindowDockStyleCol_TabHovered: c_int = 1;
pub const ImGuiWindowDockStyleCol_TabFocused: c_int = 2;
pub const ImGuiWindowDockStyleCol_TabSelected: c_int = 3;
pub const ImGuiWindowDockStyleCol_TabSelectedOverline: c_int = 4;
pub const ImGuiWindowDockStyleCol_TabDimmed: c_int = 5;
pub const ImGuiWindowDockStyleCol_TabDimmedSelected: c_int = 6;
pub const ImGuiWindowDockStyleCol_TabDimmedSelectedOverline: c_int = 7;
pub const ImGuiWindowDockStyleCol_COUNT: c_int = 8;
pub const ImGuiWindowDockStyleCol = c_uint;
pub const ImGuiLocKey_VersionStr: c_int = 0;
pub const ImGuiLocKey_TableSizeOne: c_int = 1;
pub const ImGuiLocKey_TableSizeAllFit: c_int = 2;
pub const ImGuiLocKey_TableSizeAllDefault: c_int = 3;
pub const ImGuiLocKey_TableResetOrder: c_int = 4;
pub const ImGuiLocKey_WindowingMainMenuBar: c_int = 5;
pub const ImGuiLocKey_WindowingPopup: c_int = 6;
pub const ImGuiLocKey_WindowingUntitled: c_int = 7;
pub const ImGuiLocKey_OpenLink_s: c_int = 8;
pub const ImGuiLocKey_CopyLink: c_int = 9;
pub const ImGuiLocKey_DockingHideTabBar: c_int = 10;
pub const ImGuiLocKey_DockingHoldShiftToDock: c_int = 11;
pub const ImGuiLocKey_DockingDragToUndockOrMoveNode: c_int = 12;
pub const ImGuiLocKey_COUNT: c_int = 13;
pub const ImGuiLocKey = c_uint;
pub const ImGuiErrorCallback = ?*const fn (?*ImGuiContext, ?*anyopaque, [*c]const u8) callconv(.c) void;
pub const ImGuiDebugLogFlags_None: c_int = 0;
pub const ImGuiDebugLogFlags_EventError: c_int = 1;
pub const ImGuiDebugLogFlags_EventActiveId: c_int = 2;
pub const ImGuiDebugLogFlags_EventFocus: c_int = 4;
pub const ImGuiDebugLogFlags_EventPopup: c_int = 8;
pub const ImGuiDebugLogFlags_EventNav: c_int = 16;
pub const ImGuiDebugLogFlags_EventClipper: c_int = 32;
pub const ImGuiDebugLogFlags_EventSelection: c_int = 64;
pub const ImGuiDebugLogFlags_EventIO: c_int = 128;
pub const ImGuiDebugLogFlags_EventFont: c_int = 256;
pub const ImGuiDebugLogFlags_EventInputRouting: c_int = 512;
pub const ImGuiDebugLogFlags_EventDocking: c_int = 1024;
pub const ImGuiDebugLogFlags_EventViewport: c_int = 2048;
pub const ImGuiDebugLogFlags_EventMask_: c_int = 4095;
pub const ImGuiDebugLogFlags_OutputToTTY: c_int = 1048576;
pub const ImGuiDebugLogFlags_OutputToTestEngine: c_int = 2097152;
pub const ImGuiDebugLogFlags_ = c_uint;
pub const struct_ImGuiDebugAllocEntry = extern struct {
    FrameCount: c_int = @import("std").mem.zeroes(c_int),
    AllocCount: ImS16 = @import("std").mem.zeroes(ImS16),
    FreeCount: ImS16 = @import("std").mem.zeroes(ImS16),
};
pub const ImGuiDebugAllocEntry = struct_ImGuiDebugAllocEntry;
pub const struct_ImGuiDebugAllocInfo = extern struct {
    TotalAllocCount: c_int = @import("std").mem.zeroes(c_int),
    TotalFreeCount: c_int = @import("std").mem.zeroes(c_int),
    LastEntriesIdx: ImS16 = @import("std").mem.zeroes(ImS16),
    LastEntriesBuf: [6]ImGuiDebugAllocEntry = @import("std").mem.zeroes([6]ImGuiDebugAllocEntry),
};
pub const ImGuiDebugAllocInfo = struct_ImGuiDebugAllocInfo;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:2684:19: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiStackLevelInfo = opaque {};
pub const ImGuiStackLevelInfo = struct_ImGuiStackLevelInfo;
pub const struct_ImVector_ImGuiStackLevelInfo = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiStackLevelInfo = @import("std").mem.zeroes(?*ImGuiStackLevelInfo),
};
pub const ImVector_ImGuiStackLevelInfo = struct_ImVector_ImGuiStackLevelInfo;
pub const struct_ImGuiIDStackTool = extern struct {
    LastActiveFrame: c_int = @import("std").mem.zeroes(c_int),
    StackLevel: c_int = @import("std").mem.zeroes(c_int),
    QueryId: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Results: ImVector_ImGuiStackLevelInfo = @import("std").mem.zeroes(ImVector_ImGuiStackLevelInfo),
    CopyToClipboardOnCtrlC: bool = @import("std").mem.zeroes(bool),
    CopyToClipboardLastTime: f32 = @import("std").mem.zeroes(f32),
    ResultPathBuf: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
};
pub const ImGuiIDStackTool = struct_ImGuiIDStackTool;
pub const ImGuiContextHookType_NewFramePre: c_int = 0;
pub const ImGuiContextHookType_NewFramePost: c_int = 1;
pub const ImGuiContextHookType_EndFramePre: c_int = 2;
pub const ImGuiContextHookType_EndFramePost: c_int = 3;
pub const ImGuiContextHookType_RenderPre: c_int = 4;
pub const ImGuiContextHookType_RenderPost: c_int = 5;
pub const ImGuiContextHookType_Shutdown: c_int = 6;
pub const ImGuiContextHookType_PendingRemoval_: c_int = 7;
pub const ImGuiContextHookType = c_uint;
pub const struct_ImVector_ImGuiColorMod = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiColorMod = @import("std").mem.zeroes([*c]ImGuiColorMod),
};
pub const ImVector_ImGuiColorMod = struct_ImVector_ImGuiColorMod;
pub const struct_ImVector_ImGuiStyleMod = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiStyleMod = @import("std").mem.zeroes([*c]ImGuiStyleMod),
};
pub const ImVector_ImGuiStyleMod = struct_ImVector_ImGuiStyleMod;
pub const struct_ImVector_ImGuiFocusScopeData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiFocusScopeData = @import("std").mem.zeroes([*c]ImGuiFocusScopeData),
};
pub const ImVector_ImGuiFocusScopeData = struct_ImVector_ImGuiFocusScopeData;
pub const struct_ImVector_ImGuiItemFlags = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiItemFlags = @import("std").mem.zeroes([*c]ImGuiItemFlags),
};
pub const ImVector_ImGuiItemFlags = struct_ImVector_ImGuiItemFlags;
pub const struct_ImVector_ImGuiGroupData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiGroupData = @import("std").mem.zeroes([*c]ImGuiGroupData),
};
pub const ImVector_ImGuiGroupData = struct_ImVector_ImGuiGroupData;
pub const struct_ImVector_ImGuiPopupData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPopupData = @import("std").mem.zeroes([*c]ImGuiPopupData),
};
pub const ImVector_ImGuiPopupData = struct_ImVector_ImGuiPopupData;
pub const struct_ImVector_ImGuiTreeNodeStackData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTreeNodeStackData = @import("std").mem.zeroes([*c]ImGuiTreeNodeStackData),
};
pub const ImVector_ImGuiTreeNodeStackData = struct_ImVector_ImGuiTreeNodeStackData;
pub const struct_ImVector_ImGuiViewportPPtr = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c][*c]ImGuiViewportP = @import("std").mem.zeroes([*c][*c]ImGuiViewportP),
};
pub const ImVector_ImGuiViewportPPtr = struct_ImVector_ImGuiViewportPPtr;
pub const struct_ImVector_unsigned_char = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const ImVector_unsigned_char = struct_ImVector_unsigned_char;
pub const struct_ImVector_ImGuiListClipperData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiListClipperData = @import("std").mem.zeroes([*c]ImGuiListClipperData),
};
pub const ImVector_ImGuiListClipperData = struct_ImVector_ImGuiListClipperData;
pub const struct_ImVector_ImGuiTableTempData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableTempData = @import("std").mem.zeroes([*c]ImGuiTableTempData),
};
pub const ImVector_ImGuiTableTempData = struct_ImVector_ImGuiTableTempData;
pub const struct_ImVector_ImGuiTable = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: ?*ImGuiTable = @import("std").mem.zeroes(?*ImGuiTable),
};
pub const ImVector_ImGuiTable = struct_ImVector_ImGuiTable;
pub const struct_ImPool_ImGuiTable = extern struct {
    Buf: ImVector_ImGuiTable = @import("std").mem.zeroes(ImVector_ImGuiTable),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiTable = struct_ImPool_ImGuiTable;
pub const struct_ImVector_ImGuiTabBar = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTabBar = @import("std").mem.zeroes([*c]ImGuiTabBar),
};
pub const ImVector_ImGuiTabBar = struct_ImVector_ImGuiTabBar;
pub const struct_ImPool_ImGuiTabBar = extern struct {
    Buf: ImVector_ImGuiTabBar = @import("std").mem.zeroes(ImVector_ImGuiTabBar),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiTabBar = struct_ImPool_ImGuiTabBar;
pub const struct_ImVector_ImGuiPtrOrIndex = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiPtrOrIndex = @import("std").mem.zeroes([*c]ImGuiPtrOrIndex),
};
pub const ImVector_ImGuiPtrOrIndex = struct_ImVector_ImGuiPtrOrIndex;
pub const struct_ImVector_ImGuiShrinkWidthItem = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiShrinkWidthItem = @import("std").mem.zeroes([*c]ImGuiShrinkWidthItem),
};
pub const ImVector_ImGuiShrinkWidthItem = struct_ImVector_ImGuiShrinkWidthItem;
pub const struct_ImVector_ImGuiMultiSelectTempData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiMultiSelectTempData = @import("std").mem.zeroes([*c]ImGuiMultiSelectTempData),
};
pub const ImVector_ImGuiMultiSelectTempData = struct_ImVector_ImGuiMultiSelectTempData;
pub const struct_ImVector_ImGuiMultiSelectState = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiMultiSelectState = @import("std").mem.zeroes([*c]ImGuiMultiSelectState),
};
pub const ImVector_ImGuiMultiSelectState = struct_ImVector_ImGuiMultiSelectState;
pub const struct_ImPool_ImGuiMultiSelectState = extern struct {
    Buf: ImVector_ImGuiMultiSelectState = @import("std").mem.zeroes(ImVector_ImGuiMultiSelectState),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImGuiMultiSelectState = struct_ImPool_ImGuiMultiSelectState;
pub const struct_ImVector_ImGuiID = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiID = @import("std").mem.zeroes([*c]ImGuiID),
};
pub const ImVector_ImGuiID = struct_ImVector_ImGuiID;
pub const struct_ImVector_ImGuiSettingsHandler = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiSettingsHandler = @import("std").mem.zeroes([*c]ImGuiSettingsHandler),
};
pub const ImVector_ImGuiSettingsHandler = struct_ImVector_ImGuiSettingsHandler;
pub const struct_ImChunkStream_ImGuiWindowSettings = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImChunkStream_ImGuiWindowSettings = struct_ImChunkStream_ImGuiWindowSettings;
pub const struct_ImChunkStream_ImGuiTableSettings = extern struct {
    Buf: ImVector_char = @import("std").mem.zeroes(ImVector_char),
};
pub const ImChunkStream_ImGuiTableSettings = struct_ImChunkStream_ImGuiTableSettings;
pub const struct_ImVector_ImGuiContextHook = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiContextHook = @import("std").mem.zeroes([*c]ImGuiContextHook),
};
pub const ImVector_ImGuiContextHook = struct_ImVector_ImGuiContextHook;
pub const struct_ImVector_ImGuiOldColumns = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiOldColumns = @import("std").mem.zeroes([*c]ImGuiOldColumns),
};
pub const ImVector_ImGuiOldColumns = struct_ImVector_ImGuiOldColumns;
pub const ImGuiTabBarFlags_DockNode: c_int = 1048576;
pub const ImGuiTabBarFlags_IsFocused: c_int = 2097152;
pub const ImGuiTabBarFlags_SaveSettings: c_int = 4194304;
pub const ImGuiTabBarFlagsPrivate_ = c_uint;
pub const ImGuiTabItemFlags_SectionMask_: c_int = 192;
pub const ImGuiTabItemFlags_NoCloseButton: c_int = 1048576;
pub const ImGuiTabItemFlags_Button: c_int = 2097152;
pub const ImGuiTabItemFlags_Invisible: c_int = 4194304;
pub const ImGuiTabItemFlags_Unsorted: c_int = 8388608;
pub const ImGuiTabItemFlagsPrivate_ = c_uint;
pub const struct_ImVector_ImGuiTableInstanceData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableInstanceData = @import("std").mem.zeroes([*c]ImGuiTableInstanceData),
};
pub const ImVector_ImGuiTableInstanceData = struct_ImVector_ImGuiTableInstanceData;
pub const struct_ImVector_ImGuiTableColumnSortSpecs = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImGuiTableColumnSortSpecs = @import("std").mem.zeroes([*c]ImGuiTableColumnSortSpecs),
};
pub const ImVector_ImGuiTableColumnSortSpecs = struct_ImVector_ImGuiTableColumnSortSpecs;
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:3537:10: warning: struct demoted to opaque type - has bitfield
pub const struct_ImGuiTableColumnSettings = opaque {};
pub const ImGuiTableColumnSettings = struct_ImGuiTableColumnSettings;
pub extern fn ImVec2_ImVec2_Nil() [*c]ImVec2;
pub extern fn ImVec2_destroy(self: [*c]ImVec2) void;
pub extern fn ImVec2_ImVec2_Float(_x: f32, _y: f32) [*c]ImVec2;
pub extern fn ImVec4_ImVec4_Nil() [*c]ImVec4;
pub extern fn ImVec4_destroy(self: [*c]ImVec4) void;
pub extern fn ImVec4_ImVec4_Float(_x: f32, _y: f32, _z: f32, _w: f32) [*c]ImVec4;
pub extern fn igCreateContext(shared_font_atlas: [*c]ImFontAtlas) ?*ImGuiContext;
pub extern fn igDestroyContext(ctx: ?*ImGuiContext) void;
pub extern fn igGetCurrentContext() ?*ImGuiContext;
pub extern fn igSetCurrentContext(ctx: ?*ImGuiContext) void;
pub extern fn igGetIO_Nil() [*c]ImGuiIO;
pub extern fn igGetPlatformIO_Nil() [*c]ImGuiPlatformIO;
pub extern fn igGetStyle() [*c]ImGuiStyle;
pub extern fn igNewFrame() void;
pub extern fn igEndFrame() void;
pub extern fn igRender() void;
pub extern fn igGetDrawData() [*c]ImDrawData;
pub extern fn igShowDemoWindow(p_open: [*c]bool) void;
pub extern fn igShowMetricsWindow(p_open: [*c]bool) void;
pub extern fn igShowDebugLogWindow(p_open: [*c]bool) void;
pub extern fn igShowIDStackToolWindow(p_open: [*c]bool) void;
pub extern fn igShowAboutWindow(p_open: [*c]bool) void;
pub extern fn igShowStyleEditor(ref: [*c]ImGuiStyle) void;
pub extern fn igShowStyleSelector(label: [*c]const u8) bool;
pub extern fn igShowFontSelector(label: [*c]const u8) void;
pub extern fn igShowUserGuide() void;
pub extern fn igGetVersion() [*c]const u8;
pub extern fn igStyleColorsDark(dst: [*c]ImGuiStyle) void;
pub extern fn igStyleColorsLight(dst: [*c]ImGuiStyle) void;
pub extern fn igStyleColorsClassic(dst: [*c]ImGuiStyle) void;
pub extern fn igBegin(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEnd() void;
pub extern fn igBeginChild_Str(str_id: [*c]const u8, size: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginChild_ID(id: ImGuiID, size: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igEndChild() void;
pub extern fn igIsWindowAppearing() bool;
pub extern fn igIsWindowCollapsed() bool;
pub extern fn igIsWindowFocused(flags: ImGuiFocusedFlags) bool;
pub extern fn igIsWindowHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igGetWindowDrawList() [*c]ImDrawList;
pub extern fn igGetWindowDpiScale() f32;
pub extern fn igGetWindowPos(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowSize(pOut: [*c]ImVec2) void;
pub extern fn igGetWindowWidth() f32;
pub extern fn igGetWindowHeight() f32;
pub extern fn igGetWindowViewport() [*c]ImGuiViewport;
pub extern fn igSetNextWindowPos(pos: ImVec2, cond: ImGuiCond, pivot: ImVec2) void;
pub extern fn igSetNextWindowSize(size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetNextWindowSizeConstraints(size_min: ImVec2, size_max: ImVec2, custom_callback: ImGuiSizeCallback, custom_callback_data: ?*anyopaque) void;
pub extern fn igSetNextWindowContentSize(size: ImVec2) void;
pub extern fn igSetNextWindowCollapsed(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetNextWindowFocus() void;
pub extern fn igSetNextWindowScroll(scroll: ImVec2) void;
pub extern fn igSetNextWindowBgAlpha(alpha: f32) void;
pub extern fn igSetNextWindowViewport(viewport_id: ImGuiID) void;
pub extern fn igSetWindowPos_Vec2(pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_Vec2(size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_Bool(collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocus_Nil() void;
pub extern fn igSetWindowFontScale(scale: f32) void;
pub extern fn igSetWindowPos_Str(name: [*c]const u8, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_Str(name: [*c]const u8, size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_Str(name: [*c]const u8, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowFocus_Str(name: [*c]const u8) void;
pub extern fn igGetScrollX() f32;
pub extern fn igGetScrollY() f32;
pub extern fn igSetScrollX_Float(scroll_x: f32) void;
pub extern fn igSetScrollY_Float(scroll_y: f32) void;
pub extern fn igGetScrollMaxX() f32;
pub extern fn igGetScrollMaxY() f32;
pub extern fn igSetScrollHereX(center_x_ratio: f32) void;
pub extern fn igSetScrollHereY(center_y_ratio: f32) void;
pub extern fn igSetScrollFromPosX_Float(local_x: f32, center_x_ratio: f32) void;
pub extern fn igSetScrollFromPosY_Float(local_y: f32, center_y_ratio: f32) void;
pub extern fn igPushFont(font: [*c]ImFont) void;
pub extern fn igPopFont() void;
pub extern fn igPushStyleColor_U32(idx: ImGuiCol, col: ImU32) void;
pub extern fn igPushStyleColor_Vec4(idx: ImGuiCol, col: ImVec4) void;
pub extern fn igPopStyleColor(count: c_int) void;
pub extern fn igPushStyleVar_Float(idx: ImGuiStyleVar, val: f32) void;
pub extern fn igPushStyleVar_Vec2(idx: ImGuiStyleVar, val: ImVec2) void;
pub extern fn igPushStyleVarX(idx: ImGuiStyleVar, val_x: f32) void;
pub extern fn igPushStyleVarY(idx: ImGuiStyleVar, val_y: f32) void;
pub extern fn igPopStyleVar(count: c_int) void;
pub extern fn igPushItemFlag(option: ImGuiItemFlags, enabled: bool) void;
pub extern fn igPopItemFlag() void;
pub extern fn igPushItemWidth(item_width: f32) void;
pub extern fn igPopItemWidth() void;
pub extern fn igSetNextItemWidth(item_width: f32) void;
pub extern fn igCalcItemWidth() f32;
pub extern fn igPushTextWrapPos(wrap_local_pos_x: f32) void;
pub extern fn igPopTextWrapPos() void;
pub extern fn igGetFont() [*c]ImFont;
pub extern fn igGetFontSize() f32;
pub extern fn igGetFontTexUvWhitePixel(pOut: [*c]ImVec2) void;
pub extern fn igGetColorU32_Col(idx: ImGuiCol, alpha_mul: f32) ImU32;
pub extern fn igGetColorU32_Vec4(col: ImVec4) ImU32;
pub extern fn igGetColorU32_U32(col: ImU32, alpha_mul: f32) ImU32;
pub extern fn igGetStyleColorVec4(idx: ImGuiCol) [*c]const ImVec4;
pub extern fn igGetCursorScreenPos(pOut: [*c]ImVec2) void;
pub extern fn igSetCursorScreenPos(pos: ImVec2) void;
pub extern fn igGetContentRegionAvail(pOut: [*c]ImVec2) void;
pub extern fn igGetCursorPos(pOut: [*c]ImVec2) void;
pub extern fn igGetCursorPosX() f32;
pub extern fn igGetCursorPosY() f32;
pub extern fn igSetCursorPos(local_pos: ImVec2) void;
pub extern fn igSetCursorPosX(local_x: f32) void;
pub extern fn igSetCursorPosY(local_y: f32) void;
pub extern fn igGetCursorStartPos(pOut: [*c]ImVec2) void;
pub extern fn igSeparator() void;
pub extern fn igSameLine(offset_from_start_x: f32, spacing: f32) void;
pub extern fn igNewLine() void;
pub extern fn igSpacing() void;
pub extern fn igDummy(size: ImVec2) void;
pub extern fn igIndent(indent_w: f32) void;
pub extern fn igUnindent(indent_w: f32) void;
pub extern fn igBeginGroup() void;
pub extern fn igEndGroup() void;
pub extern fn igAlignTextToFramePadding() void;
pub extern fn igGetTextLineHeight() f32;
pub extern fn igGetTextLineHeightWithSpacing() f32;
pub extern fn igGetFrameHeight() f32;
pub extern fn igGetFrameHeightWithSpacing() f32;
pub extern fn igPushID_Str(str_id: [*c]const u8) void;
pub extern fn igPushID_StrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) void;
pub extern fn igPushID_Ptr(ptr_id: ?*const anyopaque) void;
pub extern fn igPushID_Int(int_id: c_int) void;
pub extern fn igPopID() void;
pub extern fn igGetID_Str(str_id: [*c]const u8) ImGuiID;
pub extern fn igGetID_StrStr(str_id_begin: [*c]const u8, str_id_end: [*c]const u8) ImGuiID;
pub extern fn igGetID_Ptr(ptr_id: ?*const anyopaque) ImGuiID;
pub extern fn igGetID_Int(int_id: c_int) ImGuiID;
pub extern fn igTextUnformatted(text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn igText(fmt: [*c]const u8, ...) void;
pub extern fn igTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextColored(col: ImVec4, fmt: [*c]const u8, ...) void;
pub extern fn igTextColoredV(col: ImVec4, fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextDisabled(fmt: [*c]const u8, ...) void;
pub extern fn igTextDisabledV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igTextWrapped(fmt: [*c]const u8, ...) void;
pub extern fn igTextWrappedV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igLabelText(label: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn igLabelTextV(label: [*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn igBulletText(fmt: [*c]const u8, ...) void;
pub extern fn igBulletTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igSeparatorText(label: [*c]const u8) void;
pub extern fn igButton(label: [*c]const u8, size: ImVec2) bool;
pub extern fn igSmallButton(label: [*c]const u8) bool;
pub extern fn igInvisibleButton(str_id: [*c]const u8, size: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igArrowButton(str_id: [*c]const u8, dir: ImGuiDir) bool;
pub extern fn igCheckbox(label: [*c]const u8, v: [*c]bool) bool;
pub extern fn igCheckboxFlags_IntPtr(label: [*c]const u8, flags: [*c]c_int, flags_value: c_int) bool;
pub extern fn igCheckboxFlags_UintPtr(label: [*c]const u8, flags: [*c]c_uint, flags_value: c_uint) bool;
pub extern fn igRadioButton_Bool(label: [*c]const u8, active: bool) bool;
pub extern fn igRadioButton_IntPtr(label: [*c]const u8, v: [*c]c_int, v_button: c_int) bool;
pub extern fn igProgressBar(fraction: f32, size_arg: ImVec2, overlay: [*c]const u8) void;
pub extern fn igBullet() void;
pub extern fn igTextLink(label: [*c]const u8) bool;
pub extern fn igTextLinkOpenURL(label: [*c]const u8, url: [*c]const u8) void;
pub extern fn igImage(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2) void;
pub extern fn igImageWithBg(user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) void;
pub extern fn igImageButton(str_id: [*c]const u8, user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) bool;
pub extern fn igBeginCombo(label: [*c]const u8, preview_value: [*c]const u8, flags: ImGuiComboFlags) bool;
pub extern fn igEndCombo() void;
pub extern fn igCombo_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igCombo_Str(label: [*c]const u8, current_item: [*c]c_int, items_separated_by_zeros: [*c]const u8, popup_max_height_in_items: c_int) bool;
pub extern fn igCombo_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, popup_max_height_in_items: c_int) bool;
pub extern fn igDragFloat(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat2(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat3(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloat4(label: [*c]const u8, v: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragFloatRange2(label: [*c]const u8, v_current_min: [*c]f32, v_current_max: [*c]f32, v_speed: f32, v_min: f32, v_max: f32, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt2(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt3(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragInt4(label: [*c]const u8, v: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragIntRange2(label: [*c]const u8, v_current_min: [*c]c_int, v_current_max: [*c]c_int, v_speed: f32, v_min: c_int, v_max: c_int, format: [*c]const u8, format_max: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igDragScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat2(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat3(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderFloat4(label: [*c]const u8, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderAngle(label: [*c]const u8, v_rad: [*c]f32, v_degrees_min: f32, v_degrees_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt2(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt3(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderInt4(label: [*c]const u8, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderFloat(label: [*c]const u8, size: ImVec2, v: [*c]f32, v_min: f32, v_max: f32, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderInt(label: [*c]const u8, size: ImVec2, v: [*c]c_int, v_min: c_int, v_max: c_int, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igVSliderScalar(label: [*c]const u8, size: ImVec2, data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igInputText(label: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextMultiline(label: [*c]const u8, buf: [*c]u8, buf_size: usize, size: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextWithHint(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: usize, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputFloat(label: [*c]const u8, v: [*c]f32, step: f32, step_fast: f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat2(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat3(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputFloat4(label: [*c]const u8, v: [*c]f32, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt(label: [*c]const u8, v: [*c]c_int, step: c_int, step_fast: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt2(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt3(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputInt4(label: [*c]const u8, v: [*c]c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputDouble(label: [*c]const u8, v: [*c]f64, step: f64, step_fast: f64, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalar(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igInputScalarN(label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, components: c_int, p_step: ?*const anyopaque, p_step_fast: ?*const anyopaque, format: [*c]const u8, flags: ImGuiInputTextFlags) bool;
pub extern fn igColorEdit3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorEdit4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker3(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags) bool;
pub extern fn igColorPicker4(label: [*c]const u8, col: [*c]f32, flags: ImGuiColorEditFlags, ref_col: [*c]const f32) bool;
pub extern fn igColorButton(desc_id: [*c]const u8, col: ImVec4, flags: ImGuiColorEditFlags, size: ImVec2) bool;
pub extern fn igSetColorEditOptions(flags: ImGuiColorEditFlags) void;
pub extern fn igTreeNode_Str(label: [*c]const u8) bool;
pub extern fn igTreeNode_StrStr(str_id: [*c]const u8, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNode_Ptr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeV_Str(str_id: [*c]const u8, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeV_Ptr(ptr_id: ?*const anyopaque, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeEx_Str(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igTreeNodeEx_StrStr(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeEx_Ptr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, ...) bool;
pub extern fn igTreeNodeExV_Str(str_id: [*c]const u8, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreeNodeExV_Ptr(ptr_id: ?*const anyopaque, flags: ImGuiTreeNodeFlags, fmt: [*c]const u8, args: va_list) bool;
pub extern fn igTreePush_Str(str_id: [*c]const u8) void;
pub extern fn igTreePush_Ptr(ptr_id: ?*const anyopaque) void;
pub extern fn igTreePop() void;
pub extern fn igGetTreeNodeToLabelSpacing() f32;
pub extern fn igCollapsingHeader_TreeNodeFlags(label: [*c]const u8, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igCollapsingHeader_BoolPtr(label: [*c]const u8, p_visible: [*c]bool, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igSetNextItemOpen(is_open: bool, cond: ImGuiCond) void;
pub extern fn igSetNextItemStorageID(storage_id: ImGuiID) void;
pub extern fn igSelectable_Bool(label: [*c]const u8, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn igSelectable_BoolPtr(label: [*c]const u8, p_selected: [*c]bool, flags: ImGuiSelectableFlags, size: ImVec2) bool;
pub extern fn igBeginMultiSelect(flags: ImGuiMultiSelectFlags, selection_size: c_int, items_count: c_int) [*c]ImGuiMultiSelectIO;
pub extern fn igEndMultiSelect() [*c]ImGuiMultiSelectIO;
pub extern fn igSetNextItemSelectionUserData(selection_user_data: ImGuiSelectionUserData) void;
pub extern fn igIsItemToggledSelection() bool;
pub extern fn igBeginListBox(label: [*c]const u8, size: ImVec2) bool;
pub extern fn igEndListBox() void;
pub extern fn igListBox_Str_arr(label: [*c]const u8, current_item: [*c]c_int, items: [*c]const [*c]const u8, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igListBox_FnStrPtr(label: [*c]const u8, current_item: [*c]c_int, getter: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, items_count: c_int, height_in_items: c_int) bool;
pub extern fn igPlotLines_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn igPlotLines_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn igPlotHistogram_FloatPtr(label: [*c]const u8, values: [*c]const f32, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: c_int) void;
pub extern fn igPlotHistogram_FnFloatPtr(label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, graph_size: ImVec2) void;
pub extern fn igValue_Bool(prefix: [*c]const u8, b: bool) void;
pub extern fn igValue_Int(prefix: [*c]const u8, v: c_int) void;
pub extern fn igValue_Uint(prefix: [*c]const u8, v: c_uint) void;
pub extern fn igValue_Float(prefix: [*c]const u8, v: f32, float_format: [*c]const u8) void;
pub extern fn igBeginMenuBar() bool;
pub extern fn igEndMenuBar() void;
pub extern fn igBeginMainMenuBar() bool;
pub extern fn igEndMainMenuBar() void;
pub extern fn igBeginMenu(label: [*c]const u8, enabled: bool) bool;
pub extern fn igEndMenu() void;
pub extern fn igMenuItem_Bool(label: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn igMenuItem_BoolPtr(label: [*c]const u8, shortcut: [*c]const u8, p_selected: [*c]bool, enabled: bool) bool;
pub extern fn igBeginTooltip() bool;
pub extern fn igEndTooltip() void;
pub extern fn igSetTooltip(fmt: [*c]const u8, ...) void;
pub extern fn igSetTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginItemTooltip() bool;
pub extern fn igSetItemTooltip(fmt: [*c]const u8, ...) void;
pub extern fn igSetItemTooltipV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginPopup(str_id: [*c]const u8, flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupModal(name: [*c]const u8, p_open: [*c]bool, flags: ImGuiWindowFlags) bool;
pub extern fn igEndPopup() void;
pub extern fn igOpenPopup_Str(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn igOpenPopup_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn igOpenPopupOnItemClick(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) void;
pub extern fn igCloseCurrentPopup() void;
pub extern fn igBeginPopupContextItem(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupContextWindow(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igBeginPopupContextVoid(str_id: [*c]const u8, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igIsPopupOpen_Str(str_id: [*c]const u8, flags: ImGuiPopupFlags) bool;
pub extern fn igBeginTable(str_id: [*c]const u8, columns: c_int, flags: ImGuiTableFlags, outer_size: ImVec2, inner_width: f32) bool;
pub extern fn igEndTable() void;
pub extern fn igTableNextRow(row_flags: ImGuiTableRowFlags, min_row_height: f32) void;
pub extern fn igTableNextColumn() bool;
pub extern fn igTableSetColumnIndex(column_n: c_int) bool;
pub extern fn igTableSetupColumn(label: [*c]const u8, flags: ImGuiTableColumnFlags, init_width_or_weight: f32, user_id: ImGuiID) void;
pub extern fn igTableSetupScrollFreeze(cols: c_int, rows: c_int) void;
pub extern fn igTableHeader(label: [*c]const u8) void;
pub extern fn igTableHeadersRow() void;
pub extern fn igTableAngledHeadersRow() void;
pub extern fn igTableGetSortSpecs() [*c]ImGuiTableSortSpecs;
pub extern fn igTableGetColumnCount() c_int;
pub extern fn igTableGetColumnIndex() c_int;
pub extern fn igTableGetRowIndex() c_int;
pub extern fn igTableGetColumnName_Int(column_n: c_int) [*c]const u8;
pub extern fn igTableGetColumnFlags(column_n: c_int) ImGuiTableColumnFlags;
pub extern fn igTableSetColumnEnabled(column_n: c_int, v: bool) void;
pub extern fn igTableGetHoveredColumn() c_int;
pub extern fn igTableSetBgColor(target: ImGuiTableBgTarget, color: ImU32, column_n: c_int) void;
pub extern fn igColumns(count: c_int, id: [*c]const u8, borders: bool) void;
pub extern fn igNextColumn() void;
pub extern fn igGetColumnIndex() c_int;
pub extern fn igGetColumnWidth(column_index: c_int) f32;
pub extern fn igSetColumnWidth(column_index: c_int, width: f32) void;
pub extern fn igGetColumnOffset(column_index: c_int) f32;
pub extern fn igSetColumnOffset(column_index: c_int, offset_x: f32) void;
pub extern fn igGetColumnsCount() c_int;
pub extern fn igBeginTabBar(str_id: [*c]const u8, flags: ImGuiTabBarFlags) bool;
pub extern fn igEndTabBar() void;
pub extern fn igBeginTabItem(label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags) bool;
pub extern fn igEndTabItem() void;
pub extern fn igTabItemButton(label: [*c]const u8, flags: ImGuiTabItemFlags) bool;
pub extern fn igSetTabItemClosed(tab_or_docked_window_label: [*c]const u8) void;
pub extern fn igDockSpace(dockspace_id: ImGuiID, size: ImVec2, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn igDockSpaceOverViewport(dockspace_id: ImGuiID, viewport: [*c]const ImGuiViewport, flags: ImGuiDockNodeFlags, window_class: [*c]const ImGuiWindowClass) ImGuiID;
pub extern fn igSetNextWindowDockID(dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn igSetNextWindowClass(window_class: [*c]const ImGuiWindowClass) void;
pub extern fn igGetWindowDockID() ImGuiID;
pub extern fn igIsWindowDocked() bool;
pub extern fn igLogToTTY(auto_open_depth: c_int) void;
pub extern fn igLogToFile(auto_open_depth: c_int, filename: [*c]const u8) void;
pub extern fn igLogToClipboard(auto_open_depth: c_int) void;
pub extern fn igLogFinish() void;
pub extern fn igLogButtons() void;
pub extern fn igLogText(fmt: [*c]const u8, ...) void;
pub extern fn igLogTextV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igBeginDragDropSource(flags: ImGuiDragDropFlags) bool;
pub extern fn igSetDragDropPayload(@"type": [*c]const u8, data: ?*const anyopaque, sz: usize, cond: ImGuiCond) bool;
pub extern fn igEndDragDropSource() void;
pub extern fn igBeginDragDropTarget() bool;
pub extern fn igAcceptDragDropPayload(@"type": [*c]const u8, flags: ImGuiDragDropFlags) [*c]const ImGuiPayload;
pub extern fn igEndDragDropTarget() void;
pub extern fn igGetDragDropPayload() [*c]const ImGuiPayload;
pub extern fn igBeginDisabled(disabled: bool) void;
pub extern fn igEndDisabled() void;
pub extern fn igPushClipRect(clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn igPopClipRect() void;
pub extern fn igSetItemDefaultFocus() void;
pub extern fn igSetKeyboardFocusHere(offset: c_int) void;
pub extern fn igSetNavCursorVisible(visible: bool) void;
pub extern fn igSetNextItemAllowOverlap() void;
pub extern fn igIsItemHovered(flags: ImGuiHoveredFlags) bool;
pub extern fn igIsItemActive() bool;
pub extern fn igIsItemFocused() bool;
pub extern fn igIsItemClicked(mouse_button: ImGuiMouseButton) bool;
pub extern fn igIsItemVisible() bool;
pub extern fn igIsItemEdited() bool;
pub extern fn igIsItemActivated() bool;
pub extern fn igIsItemDeactivated() bool;
pub extern fn igIsItemDeactivatedAfterEdit() bool;
pub extern fn igIsItemToggledOpen() bool;
pub extern fn igIsAnyItemHovered() bool;
pub extern fn igIsAnyItemActive() bool;
pub extern fn igIsAnyItemFocused() bool;
pub extern fn igGetItemID() ImGuiID;
pub extern fn igGetItemRectMin(pOut: [*c]ImVec2) void;
pub extern fn igGetItemRectMax(pOut: [*c]ImVec2) void;
pub extern fn igGetItemRectSize(pOut: [*c]ImVec2) void;
pub extern fn igGetMainViewport() [*c]ImGuiViewport;
pub extern fn igGetBackgroundDrawList(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn igGetForegroundDrawList_ViewportPtr(viewport: [*c]ImGuiViewport) [*c]ImDrawList;
pub extern fn igIsRectVisible_Nil(size: ImVec2) bool;
pub extern fn igIsRectVisible_Vec2(rect_min: ImVec2, rect_max: ImVec2) bool;
pub extern fn igGetTime() f64;
pub extern fn igGetFrameCount() c_int;
pub extern fn igGetDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn igGetStyleColorName(idx: ImGuiCol) [*c]const u8;
pub extern fn igSetStateStorage(storage: [*c]ImGuiStorage) void;
pub extern fn igGetStateStorage() [*c]ImGuiStorage;
pub extern fn igCalcTextSize(pOut: [*c]ImVec2, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_double_hash: bool, wrap_width: f32) void;
pub extern fn igColorConvertU32ToFloat4(pOut: [*c]ImVec4, in: ImU32) void;
pub extern fn igColorConvertFloat4ToU32(in: ImVec4) ImU32;
pub extern fn igColorConvertRGBtoHSV(r: f32, g: f32, b: f32, out_h: [*c]f32, out_s: [*c]f32, out_v: [*c]f32) void;
pub extern fn igColorConvertHSVtoRGB(h: f32, s: f32, v: f32, out_r: [*c]f32, out_g: [*c]f32, out_b: [*c]f32) void;
pub extern fn igIsKeyDown_Nil(key: ImGuiKey) bool;
pub extern fn igIsKeyPressed_Bool(key: ImGuiKey, repeat: bool) bool;
pub extern fn igIsKeyReleased_Nil(key: ImGuiKey) bool;
pub extern fn igIsKeyChordPressed_Nil(key_chord: ImGuiKeyChord) bool;
pub extern fn igGetKeyPressedAmount(key: ImGuiKey, repeat_delay: f32, rate: f32) c_int;
pub extern fn igGetKeyName(key: ImGuiKey) [*c]const u8;
pub extern fn igSetNextFrameWantCaptureKeyboard(want_capture_keyboard: bool) void;
pub extern fn igShortcut_Nil(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) bool;
pub extern fn igSetNextItemShortcut(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags) void;
pub extern fn igSetItemKeyOwner_Nil(key: ImGuiKey) void;
pub extern fn igIsMouseDown_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseClicked_Bool(button: ImGuiMouseButton, repeat: bool) bool;
pub extern fn igIsMouseReleased_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseDoubleClicked_Nil(button: ImGuiMouseButton) bool;
pub extern fn igIsMouseReleasedWithDelay(button: ImGuiMouseButton, delay: f32) bool;
pub extern fn igGetMouseClickedCount(button: ImGuiMouseButton) c_int;
pub extern fn igIsMouseHoveringRect(r_min: ImVec2, r_max: ImVec2, clip: bool) bool;
pub extern fn igIsMousePosValid(mouse_pos: [*c]const ImVec2) bool;
pub extern fn igIsAnyMouseDown() bool;
pub extern fn igGetMousePos(pOut: [*c]ImVec2) void;
pub extern fn igGetMousePosOnOpeningCurrentPopup(pOut: [*c]ImVec2) void;
pub extern fn igIsMouseDragging(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn igGetMouseDragDelta(pOut: [*c]ImVec2, button: ImGuiMouseButton, lock_threshold: f32) void;
pub extern fn igResetMouseDragDelta(button: ImGuiMouseButton) void;
pub extern fn igGetMouseCursor() ImGuiMouseCursor;
pub extern fn igSetMouseCursor(cursor_type: ImGuiMouseCursor) void;
pub extern fn igSetNextFrameWantCaptureMouse(want_capture_mouse: bool) void;
pub extern fn igGetClipboardText() [*c]const u8;
pub extern fn igSetClipboardText(text: [*c]const u8) void;
pub extern fn igLoadIniSettingsFromDisk(ini_filename: [*c]const u8) void;
pub extern fn igLoadIniSettingsFromMemory(ini_data: [*c]const u8, ini_size: usize) void;
pub extern fn igSaveIniSettingsToDisk(ini_filename: [*c]const u8) void;
pub extern fn igSaveIniSettingsToMemory(out_ini_size: [*c]usize) [*c]const u8;
pub extern fn igDebugTextEncoding(text: [*c]const u8) void;
pub extern fn igDebugFlashStyleColor(idx: ImGuiCol) void;
pub extern fn igDebugStartItemPicker() void;
pub extern fn igDebugCheckVersionAndDataLayout(version_str: [*c]const u8, sz_io: usize, sz_style: usize, sz_vec2: usize, sz_vec4: usize, sz_drawvert: usize, sz_drawidx: usize) bool;
pub extern fn igDebugLog(fmt: [*c]const u8, ...) void;
pub extern fn igDebugLogV(fmt: [*c]const u8, args: va_list) void;
pub extern fn igSetAllocatorFunctions(alloc_func: ImGuiMemAllocFunc, free_func: ImGuiMemFreeFunc, user_data: ?*anyopaque) void;
pub extern fn igGetAllocatorFunctions(p_alloc_func: [*c]ImGuiMemAllocFunc, p_free_func: [*c]ImGuiMemFreeFunc, p_user_data: [*c]?*anyopaque) void;
pub extern fn igMemAlloc(size: usize) ?*anyopaque;
pub extern fn igMemFree(ptr: ?*anyopaque) void;
pub extern fn igUpdatePlatformWindows() void;
pub extern fn igRenderPlatformWindowsDefault(platform_render_arg: ?*anyopaque, renderer_render_arg: ?*anyopaque) void;
pub extern fn igDestroyPlatformWindows() void;
pub extern fn igFindViewportByID(id: ImGuiID) [*c]ImGuiViewport;
pub extern fn igFindViewportByPlatformHandle(platform_handle: ?*anyopaque) [*c]ImGuiViewport;
pub extern fn ImGuiTableSortSpecs_ImGuiTableSortSpecs() [*c]ImGuiTableSortSpecs;
pub extern fn ImGuiTableSortSpecs_destroy(self: [*c]ImGuiTableSortSpecs) void;
pub extern fn ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs() [*c]ImGuiTableColumnSortSpecs;
pub extern fn ImGuiTableColumnSortSpecs_destroy(self: [*c]ImGuiTableColumnSortSpecs) void;
pub extern fn ImGuiStyle_ImGuiStyle() [*c]ImGuiStyle;
pub extern fn ImGuiStyle_destroy(self: [*c]ImGuiStyle) void;
pub extern fn ImGuiStyle_ScaleAllSizes(self: [*c]ImGuiStyle, scale_factor: f32) void;
pub extern fn ImGuiIO_AddKeyEvent(self: [*c]ImGuiIO, key: ImGuiKey, down: bool) void;
pub extern fn ImGuiIO_AddKeyAnalogEvent(self: [*c]ImGuiIO, key: ImGuiKey, down: bool, v: f32) void;
pub extern fn ImGuiIO_AddMousePosEvent(self: [*c]ImGuiIO, x: f32, y: f32) void;
pub extern fn ImGuiIO_AddMouseButtonEvent(self: [*c]ImGuiIO, button: c_int, down: bool) void;
pub extern fn ImGuiIO_AddMouseWheelEvent(self: [*c]ImGuiIO, wheel_x: f32, wheel_y: f32) void;
pub extern fn ImGuiIO_AddMouseSourceEvent(self: [*c]ImGuiIO, source: ImGuiMouseSource) void;
pub extern fn ImGuiIO_AddMouseViewportEvent(self: [*c]ImGuiIO, id: ImGuiID) void;
pub extern fn ImGuiIO_AddFocusEvent(self: [*c]ImGuiIO, focused: bool) void;
pub extern fn ImGuiIO_AddInputCharacter(self: [*c]ImGuiIO, c: c_uint) void;
pub extern fn ImGuiIO_AddInputCharacterUTF16(self: [*c]ImGuiIO, c: ImWchar16) void;
pub extern fn ImGuiIO_AddInputCharactersUTF8(self: [*c]ImGuiIO, str: [*c]const u8) void;
pub extern fn ImGuiIO_SetKeyEventNativeData(self: [*c]ImGuiIO, key: ImGuiKey, native_keycode: c_int, native_scancode: c_int, native_legacy_index: c_int) void;
pub extern fn ImGuiIO_SetAppAcceptingEvents(self: [*c]ImGuiIO, accepting_events: bool) void;
pub extern fn ImGuiIO_ClearEventsQueue(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputKeys(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ClearInputMouse(self: [*c]ImGuiIO) void;
pub extern fn ImGuiIO_ImGuiIO() [*c]ImGuiIO;
pub extern fn ImGuiIO_destroy(self: [*c]ImGuiIO) void;
pub extern fn ImGuiInputTextCallbackData_ImGuiInputTextCallbackData() [*c]ImGuiInputTextCallbackData;
pub extern fn ImGuiInputTextCallbackData_destroy(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_DeleteChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, bytes_count: c_int) void;
pub extern fn ImGuiInputTextCallbackData_InsertChars(self: [*c]ImGuiInputTextCallbackData, pos: c_int, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImGuiInputTextCallbackData_SelectAll(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_ClearSelection(self: [*c]ImGuiInputTextCallbackData) void;
pub extern fn ImGuiInputTextCallbackData_HasSelection(self: [*c]ImGuiInputTextCallbackData) bool;
pub extern fn ImGuiWindowClass_ImGuiWindowClass() [*c]ImGuiWindowClass;
pub extern fn ImGuiWindowClass_destroy(self: [*c]ImGuiWindowClass) void;
pub extern fn ImGuiPayload_ImGuiPayload() [*c]ImGuiPayload;
pub extern fn ImGuiPayload_destroy(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_Clear(self: [*c]ImGuiPayload) void;
pub extern fn ImGuiPayload_IsDataType(self: [*c]ImGuiPayload, @"type": [*c]const u8) bool;
pub extern fn ImGuiPayload_IsPreview(self: [*c]ImGuiPayload) bool;
pub extern fn ImGuiPayload_IsDelivery(self: [*c]ImGuiPayload) bool;
pub extern fn ImGuiOnceUponAFrame_ImGuiOnceUponAFrame() [*c]ImGuiOnceUponAFrame;
pub extern fn ImGuiOnceUponAFrame_destroy(self: [*c]ImGuiOnceUponAFrame) void;
pub extern fn ImGuiTextFilter_ImGuiTextFilter(default_filter: [*c]const u8) [*c]ImGuiTextFilter;
pub extern fn ImGuiTextFilter_destroy(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Draw(self: [*c]ImGuiTextFilter, label: [*c]const u8, width: f32) bool;
pub extern fn ImGuiTextFilter_PassFilter(self: [*c]ImGuiTextFilter, text: [*c]const u8, text_end: [*c]const u8) bool;
pub extern fn ImGuiTextFilter_Build(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_Clear(self: [*c]ImGuiTextFilter) void;
pub extern fn ImGuiTextFilter_IsActive(self: [*c]ImGuiTextFilter) bool;
pub extern fn ImGuiTextRange_ImGuiTextRange_Nil() [*c]ImGuiTextRange;
pub extern fn ImGuiTextRange_destroy(self: [*c]ImGuiTextRange) void;
pub extern fn ImGuiTextRange_ImGuiTextRange_Str(_b: [*c]const u8, _e: [*c]const u8) [*c]ImGuiTextRange;
pub extern fn ImGuiTextRange_empty(self: [*c]ImGuiTextRange) bool;
pub extern fn ImGuiTextRange_split(self: [*c]ImGuiTextRange, separator: u8, out: [*c]ImVector_ImGuiTextRange) void;
pub extern fn ImGuiTextBuffer_ImGuiTextBuffer() [*c]ImGuiTextBuffer;
pub extern fn ImGuiTextBuffer_destroy(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_begin(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_end(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_size(self: [*c]ImGuiTextBuffer) c_int;
pub extern fn ImGuiTextBuffer_empty(self: [*c]ImGuiTextBuffer) bool;
pub extern fn ImGuiTextBuffer_clear(self: [*c]ImGuiTextBuffer) void;
pub extern fn ImGuiTextBuffer_resize(self: [*c]ImGuiTextBuffer, size: c_int) void;
pub extern fn ImGuiTextBuffer_reserve(self: [*c]ImGuiTextBuffer, capacity: c_int) void;
pub extern fn ImGuiTextBuffer_c_str(self: [*c]ImGuiTextBuffer) [*c]const u8;
pub extern fn ImGuiTextBuffer_append(self: [*c]ImGuiTextBuffer, str: [*c]const u8, str_end: [*c]const u8) void;
pub extern fn ImGuiTextBuffer_appendfv(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Int(_key: ImGuiID, _val: c_int) [*c]ImGuiStoragePair;
pub extern fn ImGuiStoragePair_destroy(self: [*c]ImGuiStoragePair) void;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Float(_key: ImGuiID, _val: f32) [*c]ImGuiStoragePair;
pub extern fn ImGuiStoragePair_ImGuiStoragePair_Ptr(_key: ImGuiID, _val: ?*anyopaque) [*c]ImGuiStoragePair;
pub extern fn ImGuiStorage_Clear(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_GetInt(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) c_int;
pub extern fn ImGuiStorage_SetInt(self: [*c]ImGuiStorage, key: ImGuiID, val: c_int) void;
pub extern fn ImGuiStorage_GetBool(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) bool;
pub extern fn ImGuiStorage_SetBool(self: [*c]ImGuiStorage, key: ImGuiID, val: bool) void;
pub extern fn ImGuiStorage_GetFloat(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) f32;
pub extern fn ImGuiStorage_SetFloat(self: [*c]ImGuiStorage, key: ImGuiID, val: f32) void;
pub extern fn ImGuiStorage_GetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID) ?*anyopaque;
pub extern fn ImGuiStorage_SetVoidPtr(self: [*c]ImGuiStorage, key: ImGuiID, val: ?*anyopaque) void;
pub extern fn ImGuiStorage_GetIntRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: c_int) [*c]c_int;
pub extern fn ImGuiStorage_GetBoolRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: bool) [*c]bool;
pub extern fn ImGuiStorage_GetFloatRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: f32) [*c]f32;
pub extern fn ImGuiStorage_GetVoidPtrRef(self: [*c]ImGuiStorage, key: ImGuiID, default_val: ?*anyopaque) [*c]?*anyopaque;
pub extern fn ImGuiStorage_BuildSortByKey(self: [*c]ImGuiStorage) void;
pub extern fn ImGuiStorage_SetAllInt(self: [*c]ImGuiStorage, val: c_int) void;
pub extern fn ImGuiListClipper_ImGuiListClipper() [*c]ImGuiListClipper;
pub extern fn ImGuiListClipper_destroy(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Begin(self: [*c]ImGuiListClipper, items_count: c_int, items_height: f32) void;
pub extern fn ImGuiListClipper_End(self: [*c]ImGuiListClipper) void;
pub extern fn ImGuiListClipper_Step(self: [*c]ImGuiListClipper) bool;
pub extern fn ImGuiListClipper_IncludeItemByIndex(self: [*c]ImGuiListClipper, item_index: c_int) void;
pub extern fn ImGuiListClipper_IncludeItemsByIndex(self: [*c]ImGuiListClipper, item_begin: c_int, item_end: c_int) void;
pub extern fn ImGuiListClipper_SeekCursorForItem(self: [*c]ImGuiListClipper, item_index: c_int) void;
pub extern fn ImColor_ImColor_Nil() [*c]ImColor;
pub extern fn ImColor_destroy(self: [*c]ImColor) void;
pub extern fn ImColor_ImColor_Float(r: f32, g: f32, b: f32, a: f32) [*c]ImColor;
pub extern fn ImColor_ImColor_Vec4(col: ImVec4) [*c]ImColor;
pub extern fn ImColor_ImColor_Int(r: c_int, g: c_int, b: c_int, a: c_int) [*c]ImColor;
pub extern fn ImColor_ImColor_U32(rgba: ImU32) [*c]ImColor;
pub extern fn ImColor_SetHSV(self: [*c]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImColor_HSV(pOut: [*c]ImColor, h: f32, s: f32, v: f32, a: f32) void;
pub extern fn ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage() [*c]ImGuiSelectionBasicStorage;
pub extern fn ImGuiSelectionBasicStorage_destroy(self: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_ApplyRequests(self: [*c]ImGuiSelectionBasicStorage, ms_io: [*c]ImGuiMultiSelectIO) void;
pub extern fn ImGuiSelectionBasicStorage_Contains(self: [*c]ImGuiSelectionBasicStorage, id: ImGuiID) bool;
pub extern fn ImGuiSelectionBasicStorage_Clear(self: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_Swap(self: [*c]ImGuiSelectionBasicStorage, r: [*c]ImGuiSelectionBasicStorage) void;
pub extern fn ImGuiSelectionBasicStorage_SetItemSelected(self: [*c]ImGuiSelectionBasicStorage, id: ImGuiID, selected: bool) void;
pub extern fn ImGuiSelectionBasicStorage_GetNextSelectedItem(self: [*c]ImGuiSelectionBasicStorage, opaque_it: [*c]?*anyopaque, out_id: [*c]ImGuiID) bool;
pub extern fn ImGuiSelectionBasicStorage_GetStorageIdFromIndex(self: [*c]ImGuiSelectionBasicStorage, idx: c_int) ImGuiID;
pub extern fn ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage() [*c]ImGuiSelectionExternalStorage;
pub extern fn ImGuiSelectionExternalStorage_destroy(self: [*c]ImGuiSelectionExternalStorage) void;
pub extern fn ImGuiSelectionExternalStorage_ApplyRequests(self: [*c]ImGuiSelectionExternalStorage, ms_io: [*c]ImGuiMultiSelectIO) void;
pub extern fn ImDrawCmd_ImDrawCmd() [*c]ImDrawCmd;
pub extern fn ImDrawCmd_destroy(self: [*c]ImDrawCmd) void;
pub extern fn ImDrawCmd_GetTexID(self: [*c]ImDrawCmd) ImTextureID;
pub extern fn ImDrawListSplitter_ImDrawListSplitter() [*c]ImDrawListSplitter;
pub extern fn ImDrawListSplitter_destroy(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Clear(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_ClearFreeMemory(self: [*c]ImDrawListSplitter) void;
pub extern fn ImDrawListSplitter_Split(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawListSplitter_Merge(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawListSplitter_SetCurrentChannel(self: [*c]ImDrawListSplitter, draw_list: [*c]ImDrawList, channel_idx: c_int) void;
pub extern fn ImDrawList_ImDrawList(shared_data: [*c]ImDrawListSharedData) [*c]ImDrawList;
pub extern fn ImDrawList_destroy(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushClipRect(self: [*c]ImDrawList, clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) void;
pub extern fn ImDrawList_PushClipRectFullScreen(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PopClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PushTextureID(self: [*c]ImDrawList, texture_id: ImTextureID) void;
pub extern fn ImDrawList_PopTextureID(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMin(pOut: [*c]ImVec2, self: [*c]ImDrawList) void;
pub extern fn ImDrawList_GetClipRectMax(pOut: [*c]ImVec2, self: [*c]ImDrawList) void;
pub extern fn ImDrawList_AddLine(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddRect(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_AddRectFilled(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_AddRectFilledMultiColor(self: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, col_upr_left: ImU32, col_upr_right: ImU32, col_bot_right: ImU32, col_bot_left: ImU32) void;
pub extern fn ImDrawList_AddQuad(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddQuadFilled(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddTriangle(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: f32) void;
pub extern fn ImDrawList_AddTriangleFilled(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddCircle(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddCircleFilled(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddNgon(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddNgonFilled(self: [*c]ImDrawList, center: ImVec2, radius: f32, col: ImU32, num_segments: c_int) void;
pub extern fn ImDrawList_AddEllipse(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32, rot: f32, num_segments: c_int, thickness: f32) void;
pub extern fn ImDrawList_AddEllipseFilled(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, col: ImU32, rot: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddText_Vec2(self: [*c]ImDrawList, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImDrawList_AddText_FontPtr(self: [*c]ImDrawList, font: [*c]ImFont, font_size: f32, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip_rect: [*c]const ImVec4) void;
pub extern fn ImDrawList_AddBezierCubic(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddBezierQuadratic(self: [*c]ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: ImU32, thickness: f32, num_segments: c_int) void;
pub extern fn ImDrawList_AddPolyline(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_AddConvexPolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddConcavePolyFilled(self: [*c]ImDrawList, points: [*c]const ImVec2, num_points: c_int, col: ImU32) void;
pub extern fn ImDrawList_AddImage(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageQuad(self: [*c]ImDrawList, user_texture_id: ImTextureID, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, uv1: ImVec2, uv2: ImVec2, uv3: ImVec2, uv4: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_AddImageRounded(self: [*c]ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: ImU32, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_PathClear(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_PathLineTo(self: [*c]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathLineToMergeDuplicate(self: [*c]ImDrawList, pos: ImVec2) void;
pub extern fn ImDrawList_PathFillConvex(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathFillConcave(self: [*c]ImDrawList, col: ImU32) void;
pub extern fn ImDrawList_PathStroke(self: [*c]ImDrawList, col: ImU32, flags: ImDrawFlags, thickness: f32) void;
pub extern fn ImDrawList_PathArcTo(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathArcToFast(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min_of_12: c_int, a_max_of_12: c_int) void;
pub extern fn ImDrawList_PathEllipticalArcTo(self: [*c]ImDrawList, center: ImVec2, radius: ImVec2, rot: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawList_PathBezierCubicCurveTo(self: [*c]ImDrawList, p2: ImVec2, p3: ImVec2, p4: ImVec2, num_segments: c_int) void;
pub extern fn ImDrawList_PathBezierQuadraticCurveTo(self: [*c]ImDrawList, p2: ImVec2, p3: ImVec2, num_segments: c_int) void;
pub extern fn ImDrawList_PathRect(self: [*c]ImDrawList, rect_min: ImVec2, rect_max: ImVec2, rounding: f32, flags: ImDrawFlags) void;
pub extern fn ImDrawList_AddCallback(self: [*c]ImDrawList, callback: ImDrawCallback, userdata: ?*anyopaque, userdata_size: usize) void;
pub extern fn ImDrawList_AddDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_CloneOutput(self: [*c]ImDrawList) [*c]ImDrawList;
pub extern fn ImDrawList_ChannelsSplit(self: [*c]ImDrawList, count: c_int) void;
pub extern fn ImDrawList_ChannelsMerge(self: [*c]ImDrawList) void;
pub extern fn ImDrawList_ChannelsSetCurrent(self: [*c]ImDrawList, n: c_int) void;
pub extern fn ImDrawList_PrimReserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimUnreserve(self: [*c]ImDrawList, idx_count: c_int, vtx_count: c_int) void;
pub extern fn ImDrawList_PrimRect(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimRectUV(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimQuadUV(self: [*c]ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, uv_a: ImVec2, uv_b: ImVec2, uv_c: ImVec2, uv_d: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteVtx(self: [*c]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList_PrimWriteIdx(self: [*c]ImDrawList, idx: ImDrawIdx) void;
pub extern fn ImDrawList_PrimVtx(self: [*c]ImDrawList, pos: ImVec2, uv: ImVec2, col: ImU32) void;
pub extern fn ImDrawList__ResetForNewFrame(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__ClearFreeMemory(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__PopUnusedDrawCmd(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__TryMergeDrawCmds(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedClipRect(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedTextureID(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__OnChangedVtxOffset(self: [*c]ImDrawList) void;
pub extern fn ImDrawList__SetTextureID(self: [*c]ImDrawList, texture_id: ImTextureID) void;
pub extern fn ImDrawList__CalcCircleAutoSegmentCount(self: [*c]ImDrawList, radius: f32) c_int;
pub extern fn ImDrawList__PathArcToFastEx(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min_sample: c_int, a_max_sample: c_int, a_step: c_int) void;
pub extern fn ImDrawList__PathArcToN(self: [*c]ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: c_int) void;
pub extern fn ImDrawData_ImDrawData() [*c]ImDrawData;
pub extern fn ImDrawData_destroy(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_Clear(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_AddDrawList(self: [*c]ImDrawData, draw_list: [*c]ImDrawList) void;
pub extern fn ImDrawData_DeIndexAllBuffers(self: [*c]ImDrawData) void;
pub extern fn ImDrawData_ScaleClipRects(self: [*c]ImDrawData, fb_scale: ImVec2) void;
pub extern fn ImFontConfig_ImFontConfig() [*c]ImFontConfig;
pub extern fn ImFontConfig_destroy(self: [*c]ImFontConfig) void;
pub extern fn ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder() [*c]ImFontGlyphRangesBuilder;
pub extern fn ImFontGlyphRangesBuilder_destroy(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_Clear(self: [*c]ImFontGlyphRangesBuilder) void;
pub extern fn ImFontGlyphRangesBuilder_GetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) bool;
pub extern fn ImFontGlyphRangesBuilder_SetBit(self: [*c]ImFontGlyphRangesBuilder, n: usize) void;
pub extern fn ImFontGlyphRangesBuilder_AddChar(self: [*c]ImFontGlyphRangesBuilder, c: ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_AddText(self: [*c]ImFontGlyphRangesBuilder, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImFontGlyphRangesBuilder_AddRanges(self: [*c]ImFontGlyphRangesBuilder, ranges: [*c]const ImWchar) void;
pub extern fn ImFontGlyphRangesBuilder_BuildRanges(self: [*c]ImFontGlyphRangesBuilder, out_ranges: [*c]ImVector_ImWchar) void;
pub extern fn ImFontAtlasCustomRect_ImFontAtlasCustomRect() ?*ImFontAtlasCustomRect;
pub extern fn ImFontAtlasCustomRect_destroy(self: ?*ImFontAtlasCustomRect) void;
pub extern fn ImFontAtlasCustomRect_IsPacked(self: ?*ImFontAtlasCustomRect) bool;
pub extern fn ImFontAtlas_ImFontAtlas() [*c]ImFontAtlas;
pub extern fn ImFontAtlas_destroy(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_AddFont(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontDefault(self: [*c]ImFontAtlas, font_cfg: [*c]const ImFontConfig) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromFileTTF(self: [*c]ImFontAtlas, filename: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryTTF(self: [*c]ImFontAtlas, font_data: ?*anyopaque, font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedTTF(self: [*c]ImFontAtlas, compressed_font_data: ?*const anyopaque, compressed_font_data_size: c_int, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_AddFontFromMemoryCompressedBase85TTF(self: [*c]ImFontAtlas, compressed_font_data_base85: [*c]const u8, size_pixels: f32, font_cfg: [*c]const ImFontConfig, glyph_ranges: [*c]const ImWchar) [*c]ImFont;
pub extern fn ImFontAtlas_ClearInputData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearFonts(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_ClearTexData(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_Clear(self: [*c]ImFontAtlas) void;
pub extern fn ImFontAtlas_Build(self: [*c]ImFontAtlas) bool;
pub extern fn ImFontAtlas_GetTexDataAsAlpha8(self: [*c]ImFontAtlas, out_pixels: [*c][*c]u8, out_width: [*c]c_int, out_height: [*c]c_int, out_bytes_per_pixel: [*c]c_int) void;
pub extern fn ImFontAtlas_GetTexDataAsRGBA32(self: [*c]ImFontAtlas, out_pixels: [*c][*c]u8, out_width: [*c]c_int, out_height: [*c]c_int, out_bytes_per_pixel: [*c]c_int) void;
pub extern fn ImFontAtlas_IsBuilt(self: [*c]ImFontAtlas) bool;
pub extern fn ImFontAtlas_SetTexID(self: [*c]ImFontAtlas, id: ImTextureID) void;
pub extern fn ImFontAtlas_GetGlyphRangesDefault(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesGreek(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesKorean(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesJapanese(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseFull(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesCyrillic(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesThai(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_GetGlyphRangesVietnamese(self: [*c]ImFontAtlas) [*c]const ImWchar;
pub extern fn ImFontAtlas_AddCustomRectRegular(self: [*c]ImFontAtlas, width: c_int, height: c_int) c_int;
pub extern fn ImFontAtlas_AddCustomRectFontGlyph(self: [*c]ImFontAtlas, font: [*c]ImFont, id: ImWchar, width: c_int, height: c_int, advance_x: f32, offset: ImVec2) c_int;
pub extern fn ImFontAtlas_GetCustomRectByIndex(self: [*c]ImFontAtlas, index: c_int) ?*ImFontAtlasCustomRect;
pub extern fn ImFontAtlas_CalcCustomRectUV(self: [*c]ImFontAtlas, rect: ?*const ImFontAtlasCustomRect, out_uv_min: [*c]ImVec2, out_uv_max: [*c]ImVec2) void;
pub extern fn ImFont_ImFont() [*c]ImFont;
pub extern fn ImFont_destroy(self: [*c]ImFont) void;
pub extern fn ImFont_FindGlyph(self: [*c]ImFont, c: ImWchar) ?*ImFontGlyph;
pub extern fn ImFont_FindGlyphNoFallback(self: [*c]ImFont, c: ImWchar) ?*ImFontGlyph;
pub extern fn ImFont_GetCharAdvance(self: [*c]ImFont, c: ImWchar) f32;
pub extern fn ImFont_IsLoaded(self: [*c]ImFont) bool;
pub extern fn ImFont_GetDebugName(self: [*c]ImFont) [*c]const u8;
pub extern fn ImFont_CalcTextSizeA(pOut: [*c]ImVec2, self: [*c]ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: [*c]const u8, text_end: [*c]const u8, remaining: [*c][*c]const u8) void;
pub extern fn ImFont_CalcWordWrapPositionA(self: [*c]ImFont, scale: f32, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) [*c]const u8;
pub extern fn ImFont_RenderChar(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, c: ImWchar, cpu_fine_clip: [*c]const ImVec4) void;
pub extern fn ImFont_RenderText(self: [*c]ImFont, draw_list: [*c]ImDrawList, size: f32, pos: ImVec2, col: ImU32, clip_rect: ImVec4, text_begin: [*c]const u8, text_end: [*c]const u8, wrap_width: f32, cpu_fine_clip: bool) void;
pub extern fn ImFont_BuildLookupTable(self: [*c]ImFont) void;
pub extern fn ImFont_ClearOutputData(self: [*c]ImFont) void;
pub extern fn ImFont_GrowIndex(self: [*c]ImFont, new_size: c_int) void;
pub extern fn ImFont_AddGlyph(self: [*c]ImFont, src_cfg: [*c]const ImFontConfig, c: ImWchar, x0: f32, y0: f32, x1: f32, y1: f32, @"u0": f32, v0: f32, @"u1": f32, v1: f32, advance_x: f32) void;
pub extern fn ImFont_AddRemapChar(self: [*c]ImFont, from_codepoint: ImWchar, to_codepoint: ImWchar, overwrite_dst: bool) void;
pub extern fn ImFont_IsGlyphRangeUnused(self: [*c]ImFont, c_begin: c_uint, c_last: c_uint) bool;
pub extern fn ImGuiViewport_ImGuiViewport() [*c]ImGuiViewport;
pub extern fn ImGuiViewport_destroy(self: [*c]ImGuiViewport) void;
pub extern fn ImGuiViewport_GetCenter(pOut: [*c]ImVec2, self: [*c]ImGuiViewport) void;
pub extern fn ImGuiViewport_GetWorkCenter(pOut: [*c]ImVec2, self: [*c]ImGuiViewport) void;
pub extern fn ImGuiPlatformIO_ImGuiPlatformIO() [*c]ImGuiPlatformIO;
pub extern fn ImGuiPlatformIO_destroy(self: [*c]ImGuiPlatformIO) void;
pub extern fn ImGuiPlatformMonitor_ImGuiPlatformMonitor() [*c]ImGuiPlatformMonitor;
pub extern fn ImGuiPlatformMonitor_destroy(self: [*c]ImGuiPlatformMonitor) void;
pub extern fn ImGuiPlatformImeData_ImGuiPlatformImeData() [*c]ImGuiPlatformImeData;
pub extern fn ImGuiPlatformImeData_destroy(self: [*c]ImGuiPlatformImeData) void;
pub extern fn igImHashData(data: ?*const anyopaque, data_size: usize, seed: ImGuiID) ImGuiID;
pub extern fn igImHashStr(data: [*c]const u8, data_size: usize, seed: ImGuiID) ImGuiID;
pub extern fn igImQsort(base: ?*anyopaque, count: usize, size_of_element: usize, compare_func: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int) void;
pub extern fn igImAlphaBlendColors(col_a: ImU32, col_b: ImU32) ImU32;
pub extern fn igImIsPowerOfTwo_Int(v: c_int) bool;
pub extern fn igImIsPowerOfTwo_U64(v: ImU64) bool;
pub extern fn igImUpperPowerOfTwo(v: c_int) c_int;
pub extern fn igImCountSetBits(v: c_uint) c_uint;
pub extern fn igImStricmp(str1: [*c]const u8, str2: [*c]const u8) c_int;
pub extern fn igImStrnicmp(str1: [*c]const u8, str2: [*c]const u8, count: usize) c_int;
pub extern fn igImStrncpy(dst: [*c]u8, src: [*c]const u8, count: usize) void;
pub extern fn igImStrdup(str: [*c]const u8) [*c]u8;
pub extern fn igImStrdupcpy(dst: [*c]u8, p_dst_size: [*c]usize, str: [*c]const u8) [*c]u8;
pub extern fn igImStrchrRange(str_begin: [*c]const u8, str_end: [*c]const u8, c: u8) [*c]const u8;
pub extern fn igImStreolRange(str: [*c]const u8, str_end: [*c]const u8) [*c]const u8;
pub extern fn igImStristr(haystack: [*c]const u8, haystack_end: [*c]const u8, needle: [*c]const u8, needle_end: [*c]const u8) [*c]const u8;
pub extern fn igImStrTrimBlanks(str: [*c]u8) void;
pub extern fn igImStrSkipBlank(str: [*c]const u8) [*c]const u8;
pub extern fn igImStrlenW(str: [*c]const ImWchar) c_int;
pub extern fn igImStrbol(buf_mid_line: [*c]const u8, buf_begin: [*c]const u8) [*c]const u8;
pub extern fn igImToUpper(c: u8) u8;
pub extern fn igImCharIsBlankA(c: u8) bool;
pub extern fn igImCharIsBlankW(c: c_uint) bool;
pub extern fn igImCharIsXdigitA(c: u8) bool;
pub extern fn igImFormatString(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn igImFormatStringV(buf: [*c]u8, buf_size: usize, fmt: [*c]const u8, args: va_list) c_int;
pub extern fn igImFormatStringToTempBuffer(out_buf: [*c][*c]const u8, out_buf_end: [*c][*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn igImFormatStringToTempBufferV(out_buf: [*c][*c]const u8, out_buf_end: [*c][*c]const u8, fmt: [*c]const u8, args: va_list) void;
pub extern fn igImParseFormatFindStart(format: [*c]const u8) [*c]const u8;
pub extern fn igImParseFormatFindEnd(format: [*c]const u8) [*c]const u8;
pub extern fn igImParseFormatTrimDecorations(format: [*c]const u8, buf: [*c]u8, buf_size: usize) [*c]const u8;
pub extern fn igImParseFormatSanitizeForPrinting(fmt_in: [*c]const u8, fmt_out: [*c]u8, fmt_out_size: usize) void;
pub extern fn igImParseFormatSanitizeForScanning(fmt_in: [*c]const u8, fmt_out: [*c]u8, fmt_out_size: usize) [*c]const u8;
pub extern fn igImParseFormatPrecision(format: [*c]const u8, default_value: c_int) c_int;
pub extern fn igImTextCharToUtf8(out_buf: [*c]u8, c: c_uint) [*c]const u8;
pub extern fn igImTextStrToUtf8(out_buf: [*c]u8, out_buf_size: c_int, in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn igImTextCharFromUtf8(out_char: [*c]c_uint, in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextStrFromUtf8(out_buf: [*c]ImWchar, out_buf_size: c_int, in_text: [*c]const u8, in_text_end: [*c]const u8, in_remaining: [*c][*c]const u8) c_int;
pub extern fn igImTextCountCharsFromUtf8(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextCountUtf8BytesFromChar(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImTextCountUtf8BytesFromStr(in_text: [*c]const ImWchar, in_text_end: [*c]const ImWchar) c_int;
pub extern fn igImTextFindPreviousUtf8Codepoint(in_text_start: [*c]const u8, in_text_curr: [*c]const u8) [*c]const u8;
pub extern fn igImTextCountLines(in_text: [*c]const u8, in_text_end: [*c]const u8) c_int;
pub extern fn igImFileOpen(filename: [*c]const u8, mode: [*c]const u8) ImFileHandle;
pub extern fn igImFileClose(file: ImFileHandle) bool;
pub extern fn igImFileGetSize(file: ImFileHandle) ImU64;
pub extern fn igImFileRead(data: ?*anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn igImFileWrite(data: ?*const anyopaque, size: ImU64, count: ImU64, file: ImFileHandle) ImU64;
pub extern fn igImFileLoadToMemory(filename: [*c]const u8, mode: [*c]const u8, out_file_size: [*c]usize, padding_bytes: c_int) ?*anyopaque;
pub extern fn igImPow_Float(x: f32, y: f32) f32;
pub extern fn igImPow_double(x: f64, y: f64) f64;
pub extern fn igImLog_Float(x: f32) f32;
pub extern fn igImLog_double(x: f64) f64;
pub extern fn igImAbs_Int(x: c_int) c_int;
pub extern fn igImAbs_Float(x: f32) f32;
pub extern fn igImAbs_double(x: f64) f64;
pub extern fn igImSign_Float(x: f32) f32;
pub extern fn igImSign_double(x: f64) f64;
pub extern fn igImRsqrt_Float(x: f32) f32;
pub extern fn igImRsqrt_double(x: f64) f64;
pub extern fn igImMin(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImMax(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImClamp(pOut: [*c]ImVec2, v: ImVec2, mn: ImVec2, mx: ImVec2) void;
pub extern fn igImLerp_Vec2Float(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, t: f32) void;
pub extern fn igImLerp_Vec2Vec2(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, t: ImVec2) void;
pub extern fn igImLerp_Vec4(pOut: [*c]ImVec4, a: ImVec4, b: ImVec4, t: f32) void;
pub extern fn igImSaturate(f: f32) f32;
pub extern fn igImLengthSqr_Vec2(lhs: ImVec2) f32;
pub extern fn igImLengthSqr_Vec4(lhs: ImVec4) f32;
pub extern fn igImInvLength(lhs: ImVec2, fail_value: f32) f32;
pub extern fn igImTrunc_Float(f: f32) f32;
pub extern fn igImTrunc_Vec2(pOut: [*c]ImVec2, v: ImVec2) void;
pub extern fn igImFloor_Float(f: f32) f32;
pub extern fn igImFloor_Vec2(pOut: [*c]ImVec2, v: ImVec2) void;
pub extern fn igImModPositive(a: c_int, b: c_int) c_int;
pub extern fn igImDot(a: ImVec2, b: ImVec2) f32;
pub extern fn igImRotate(pOut: [*c]ImVec2, v: ImVec2, cos_a: f32, sin_a: f32) void;
pub extern fn igImLinearSweep(current: f32, target: f32, speed: f32) f32;
pub extern fn igImLinearRemapClamp(s0: f32, s1: f32, d0: f32, d1: f32, x: f32) f32;
pub extern fn igImMul(pOut: [*c]ImVec2, lhs: ImVec2, rhs: ImVec2) void;
pub extern fn igImIsFloatAboveGuaranteedIntegerPrecision(f: f32) bool;
pub extern fn igImExponentialMovingAverage(avg: f32, sample: f32, n: c_int) f32;
pub extern fn igImBezierCubicCalc(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, t: f32) void;
pub extern fn igImBezierCubicClosestPoint(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, num_segments: c_int) void;
pub extern fn igImBezierCubicClosestPointCasteljau(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, p: ImVec2, tess_tol: f32) void;
pub extern fn igImBezierQuadraticCalc(pOut: [*c]ImVec2, p1: ImVec2, p2: ImVec2, p3: ImVec2, t: f32) void;
pub extern fn igImLineClosestPoint(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, p: ImVec2) void;
pub extern fn igImTriangleContainsPoint(a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) bool;
pub extern fn igImTriangleClosestPoint(pOut: [*c]ImVec2, a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2) void;
pub extern fn igImTriangleBarycentricCoords(a: ImVec2, b: ImVec2, c: ImVec2, p: ImVec2, out_u: [*c]f32, out_v: [*c]f32, out_w: [*c]f32) void;
pub extern fn igImTriangleArea(a: ImVec2, b: ImVec2, c: ImVec2) f32;
pub extern fn igImTriangleIsClockwise(a: ImVec2, b: ImVec2, c: ImVec2) bool;
pub extern fn ImVec1_ImVec1_Nil() [*c]ImVec1;
pub extern fn ImVec1_destroy(self: [*c]ImVec1) void;
pub extern fn ImVec1_ImVec1_Float(_x: f32) [*c]ImVec1;
pub extern fn ImVec2ih_ImVec2ih_Nil() [*c]ImVec2ih;
pub extern fn ImVec2ih_destroy(self: [*c]ImVec2ih) void;
pub extern fn ImVec2ih_ImVec2ih_short(_x: c_short, _y: c_short) [*c]ImVec2ih;
pub extern fn ImVec2ih_ImVec2ih_Vec2(rhs: ImVec2) [*c]ImVec2ih;
pub extern fn ImRect_ImRect_Nil() [*c]ImRect;
pub extern fn ImRect_destroy(self: [*c]ImRect) void;
pub extern fn ImRect_ImRect_Vec2(min: ImVec2, max: ImVec2) [*c]ImRect;
pub extern fn ImRect_ImRect_Vec4(v: ImVec4) [*c]ImRect;
pub extern fn ImRect_ImRect_Float(x1: f32, y1: f32, x2: f32, y2: f32) [*c]ImRect;
pub extern fn ImRect_GetCenter(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetSize(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetWidth(self: [*c]ImRect) f32;
pub extern fn ImRect_GetHeight(self: [*c]ImRect) f32;
pub extern fn ImRect_GetArea(self: [*c]ImRect) f32;
pub extern fn ImRect_GetTL(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetTR(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetBL(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_GetBR(pOut: [*c]ImVec2, self: [*c]ImRect) void;
pub extern fn ImRect_Contains_Vec2(self: [*c]ImRect, p: ImVec2) bool;
pub extern fn ImRect_Contains_Rect(self: [*c]ImRect, r: ImRect) bool;
pub extern fn ImRect_ContainsWithPad(self: [*c]ImRect, p: ImVec2, pad: ImVec2) bool;
pub extern fn ImRect_Overlaps(self: [*c]ImRect, r: ImRect) bool;
pub extern fn ImRect_Add_Vec2(self: [*c]ImRect, p: ImVec2) void;
pub extern fn ImRect_Add_Rect(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_Expand_Float(self: [*c]ImRect, amount: f32) void;
pub extern fn ImRect_Expand_Vec2(self: [*c]ImRect, amount: ImVec2) void;
pub extern fn ImRect_Translate(self: [*c]ImRect, d: ImVec2) void;
pub extern fn ImRect_TranslateX(self: [*c]ImRect, dx: f32) void;
pub extern fn ImRect_TranslateY(self: [*c]ImRect, dy: f32) void;
pub extern fn ImRect_ClipWith(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_ClipWithFull(self: [*c]ImRect, r: ImRect) void;
pub extern fn ImRect_Floor(self: [*c]ImRect) void;
pub extern fn ImRect_IsInverted(self: [*c]ImRect) bool;
pub extern fn ImRect_ToVec4(pOut: [*c]ImVec4, self: [*c]ImRect) void;
pub extern fn igImBitArrayGetStorageSizeInBytes(bitcount: c_int) usize;
pub extern fn igImBitArrayClearAllBits(arr: [*c]ImU32, bitcount: c_int) void;
pub extern fn igImBitArrayTestBit(arr: [*c]const ImU32, n: c_int) bool;
pub extern fn igImBitArrayClearBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn igImBitArraySetBit(arr: [*c]ImU32, n: c_int) void;
pub extern fn igImBitArraySetBitRange(arr: [*c]ImU32, n: c_int, n2: c_int) void;
pub extern fn ImBitVector_Create(self: [*c]ImBitVector, sz: c_int) void;
pub extern fn ImBitVector_Clear(self: [*c]ImBitVector) void;
pub extern fn ImBitVector_TestBit(self: [*c]ImBitVector, n: c_int) bool;
pub extern fn ImBitVector_SetBit(self: [*c]ImBitVector, n: c_int) void;
pub extern fn ImBitVector_ClearBit(self: [*c]ImBitVector, n: c_int) void;
pub extern fn ImGuiTextIndex_clear(self: [*c]ImGuiTextIndex) void;
pub extern fn ImGuiTextIndex_size(self: [*c]ImGuiTextIndex) c_int;
pub extern fn ImGuiTextIndex_get_line_begin(self: [*c]ImGuiTextIndex, base: [*c]const u8, n: c_int) [*c]const u8;
pub extern fn ImGuiTextIndex_get_line_end(self: [*c]ImGuiTextIndex, base: [*c]const u8, n: c_int) [*c]const u8;
pub extern fn ImGuiTextIndex_append(self: [*c]ImGuiTextIndex, base: [*c]const u8, old_size: c_int, new_size: c_int) void;
pub extern fn igImLowerBound(in_begin: [*c]ImGuiStoragePair, in_end: [*c]ImGuiStoragePair, key: ImGuiID) [*c]ImGuiStoragePair;
pub extern fn ImDrawListSharedData_ImDrawListSharedData() [*c]ImDrawListSharedData;
pub extern fn ImDrawListSharedData_destroy(self: [*c]ImDrawListSharedData) void;
pub extern fn ImDrawListSharedData_SetCircleTessellationMaxError(self: [*c]ImDrawListSharedData, max_error: f32) void;
pub extern fn ImDrawDataBuilder_ImDrawDataBuilder() [*c]ImDrawDataBuilder;
pub extern fn ImDrawDataBuilder_destroy(self: [*c]ImDrawDataBuilder) void;
pub extern fn ImGuiStyleVarInfo_GetVarPtr(self: ?*ImGuiStyleVarInfo, parent: ?*anyopaque) ?*anyopaque;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Int(idx: ImGuiStyleVar, v: c_int) [*c]ImGuiStyleMod;
pub extern fn ImGuiStyleMod_destroy(self: [*c]ImGuiStyleMod) void;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Float(idx: ImGuiStyleVar, v: f32) [*c]ImGuiStyleMod;
pub extern fn ImGuiStyleMod_ImGuiStyleMod_Vec2(idx: ImGuiStyleVar, v: ImVec2) [*c]ImGuiStyleMod;
pub extern fn ImGuiComboPreviewData_ImGuiComboPreviewData() [*c]ImGuiComboPreviewData;
pub extern fn ImGuiComboPreviewData_destroy(self: [*c]ImGuiComboPreviewData) void;
pub extern fn ImGuiMenuColumns_ImGuiMenuColumns() [*c]ImGuiMenuColumns;
pub extern fn ImGuiMenuColumns_destroy(self: [*c]ImGuiMenuColumns) void;
pub extern fn ImGuiMenuColumns_Update(self: [*c]ImGuiMenuColumns, spacing: f32, window_reappearing: bool) void;
pub extern fn ImGuiMenuColumns_DeclColumns(self: [*c]ImGuiMenuColumns, w_icon: f32, w_label: f32, w_shortcut: f32, w_mark: f32) f32;
pub extern fn ImGuiMenuColumns_CalcNextTotalWidth(self: [*c]ImGuiMenuColumns, update_offsets: bool) void;
pub extern fn ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState() [*c]ImGuiInputTextDeactivatedState;
pub extern fn ImGuiInputTextDeactivatedState_destroy(self: [*c]ImGuiInputTextDeactivatedState) void;
pub extern fn ImGuiInputTextDeactivatedState_ClearFreeMemory(self: [*c]ImGuiInputTextDeactivatedState) void;
pub extern fn ImGuiInputTextState_ImGuiInputTextState() [*c]ImGuiInputTextState;
pub extern fn ImGuiInputTextState_destroy(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ClearText(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ClearFreeMemory(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_OnKeyPressed(self: [*c]ImGuiInputTextState, key: c_int) void;
pub extern fn ImGuiInputTextState_OnCharPressed(self: [*c]ImGuiInputTextState, c: c_uint) void;
pub extern fn ImGuiInputTextState_CursorAnimReset(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_CursorClamp(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_HasSelection(self: [*c]ImGuiInputTextState) bool;
pub extern fn ImGuiInputTextState_ClearSelection(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_GetCursorPos(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetSelectionStart(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_GetSelectionEnd(self: [*c]ImGuiInputTextState) c_int;
pub extern fn ImGuiInputTextState_SelectAll(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndSelectAll(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndKeepSelection(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiInputTextState_ReloadUserBufAndMoveToEnd(self: [*c]ImGuiInputTextState) void;
pub extern fn ImGuiNextWindowData_ImGuiNextWindowData() [*c]ImGuiNextWindowData;
pub extern fn ImGuiNextWindowData_destroy(self: [*c]ImGuiNextWindowData) void;
pub extern fn ImGuiNextWindowData_ClearFlags(self: [*c]ImGuiNextWindowData) void;
pub extern fn ImGuiNextItemData_ImGuiNextItemData() [*c]ImGuiNextItemData;
pub extern fn ImGuiNextItemData_destroy(self: [*c]ImGuiNextItemData) void;
pub extern fn ImGuiNextItemData_ClearFlags(self: [*c]ImGuiNextItemData) void;
pub extern fn ImGuiLastItemData_ImGuiLastItemData() [*c]ImGuiLastItemData;
pub extern fn ImGuiLastItemData_destroy(self: [*c]ImGuiLastItemData) void;
pub extern fn ImGuiErrorRecoveryState_ImGuiErrorRecoveryState() [*c]ImGuiErrorRecoveryState;
pub extern fn ImGuiErrorRecoveryState_destroy(self: [*c]ImGuiErrorRecoveryState) void;
pub extern fn ImGuiPtrOrIndex_ImGuiPtrOrIndex_Ptr(ptr: ?*anyopaque) [*c]ImGuiPtrOrIndex;
pub extern fn ImGuiPtrOrIndex_destroy(self: [*c]ImGuiPtrOrIndex) void;
pub extern fn ImGuiPtrOrIndex_ImGuiPtrOrIndex_Int(index: c_int) [*c]ImGuiPtrOrIndex;
pub extern fn ImGuiPopupData_ImGuiPopupData() [*c]ImGuiPopupData;
pub extern fn ImGuiPopupData_destroy(self: [*c]ImGuiPopupData) void;
pub extern fn ImGuiInputEvent_ImGuiInputEvent() [*c]ImGuiInputEvent;
pub extern fn ImGuiInputEvent_destroy(self: [*c]ImGuiInputEvent) void;
pub extern fn ImGuiKeyRoutingData_ImGuiKeyRoutingData() [*c]ImGuiKeyRoutingData;
pub extern fn ImGuiKeyRoutingData_destroy(self: [*c]ImGuiKeyRoutingData) void;
pub extern fn ImGuiKeyRoutingTable_ImGuiKeyRoutingTable() [*c]ImGuiKeyRoutingTable;
pub extern fn ImGuiKeyRoutingTable_destroy(self: [*c]ImGuiKeyRoutingTable) void;
pub extern fn ImGuiKeyRoutingTable_Clear(self: [*c]ImGuiKeyRoutingTable) void;
pub extern fn ImGuiKeyOwnerData_ImGuiKeyOwnerData() [*c]ImGuiKeyOwnerData;
pub extern fn ImGuiKeyOwnerData_destroy(self: [*c]ImGuiKeyOwnerData) void;
pub extern fn ImGuiListClipperRange_FromIndices(min: c_int, max: c_int) ImGuiListClipperRange;
pub extern fn ImGuiListClipperRange_FromPositions(y1: f32, y2: f32, off_min: c_int, off_max: c_int) ImGuiListClipperRange;
pub extern fn ImGuiListClipperData_ImGuiListClipperData() [*c]ImGuiListClipperData;
pub extern fn ImGuiListClipperData_destroy(self: [*c]ImGuiListClipperData) void;
pub extern fn ImGuiListClipperData_Reset(self: [*c]ImGuiListClipperData, clipper: [*c]ImGuiListClipper) void;
pub extern fn ImGuiNavItemData_ImGuiNavItemData() [*c]ImGuiNavItemData;
pub extern fn ImGuiNavItemData_destroy(self: [*c]ImGuiNavItemData) void;
pub extern fn ImGuiNavItemData_Clear(self: [*c]ImGuiNavItemData) void;
pub extern fn ImGuiTypingSelectState_ImGuiTypingSelectState() [*c]ImGuiTypingSelectState;
pub extern fn ImGuiTypingSelectState_destroy(self: [*c]ImGuiTypingSelectState) void;
pub extern fn ImGuiTypingSelectState_Clear(self: [*c]ImGuiTypingSelectState) void;
pub extern fn ImGuiOldColumnData_ImGuiOldColumnData() [*c]ImGuiOldColumnData;
pub extern fn ImGuiOldColumnData_destroy(self: [*c]ImGuiOldColumnData) void;
pub extern fn ImGuiOldColumns_ImGuiOldColumns() [*c]ImGuiOldColumns;
pub extern fn ImGuiOldColumns_destroy(self: [*c]ImGuiOldColumns) void;
pub extern fn ImGuiBoxSelectState_ImGuiBoxSelectState() ?*ImGuiBoxSelectState;
pub extern fn ImGuiBoxSelectState_destroy(self: ?*ImGuiBoxSelectState) void;
pub extern fn ImGuiMultiSelectTempData_ImGuiMultiSelectTempData() [*c]ImGuiMultiSelectTempData;
pub extern fn ImGuiMultiSelectTempData_destroy(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectTempData_Clear(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectTempData_ClearIO(self: [*c]ImGuiMultiSelectTempData) void;
pub extern fn ImGuiMultiSelectState_ImGuiMultiSelectState() [*c]ImGuiMultiSelectState;
pub extern fn ImGuiMultiSelectState_destroy(self: [*c]ImGuiMultiSelectState) void;
pub extern fn ImGuiDockNode_ImGuiDockNode(id: ImGuiID) ?*ImGuiDockNode;
pub extern fn ImGuiDockNode_destroy(self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockNode_IsRootNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsDockSpace(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsFloatingNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsCentralNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsHiddenTabBar(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsNoTabBar(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsSplitNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsLeafNode(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_IsEmpty(self: ?*ImGuiDockNode) bool;
pub extern fn ImGuiDockNode_Rect(pOut: [*c]ImRect, self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockNode_SetLocalFlags(self: ?*ImGuiDockNode, flags: ImGuiDockNodeFlags) void;
pub extern fn ImGuiDockNode_UpdateMergedFlags(self: ?*ImGuiDockNode) void;
pub extern fn ImGuiDockContext_ImGuiDockContext() [*c]ImGuiDockContext;
pub extern fn ImGuiDockContext_destroy(self: [*c]ImGuiDockContext) void;
pub extern fn ImGuiViewportP_ImGuiViewportP() [*c]ImGuiViewportP;
pub extern fn ImGuiViewportP_destroy(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_ClearRequestFlags(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_CalcWorkRectPos(pOut: [*c]ImVec2, self: [*c]ImGuiViewportP, inset_min: ImVec2) void;
pub extern fn ImGuiViewportP_CalcWorkRectSize(pOut: [*c]ImVec2, self: [*c]ImGuiViewportP, inset_min: ImVec2, inset_max: ImVec2) void;
pub extern fn ImGuiViewportP_UpdateWorkRect(self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetMainRect(pOut: [*c]ImRect, self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetWorkRect(pOut: [*c]ImRect, self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiViewportP_GetBuildWorkRect(pOut: [*c]ImRect, self: [*c]ImGuiViewportP) void;
pub extern fn ImGuiWindowSettings_ImGuiWindowSettings() [*c]ImGuiWindowSettings;
pub extern fn ImGuiWindowSettings_destroy(self: [*c]ImGuiWindowSettings) void;
pub extern fn ImGuiWindowSettings_GetName(self: [*c]ImGuiWindowSettings) [*c]u8;
pub extern fn ImGuiSettingsHandler_ImGuiSettingsHandler() [*c]ImGuiSettingsHandler;
pub extern fn ImGuiSettingsHandler_destroy(self: [*c]ImGuiSettingsHandler) void;
pub extern fn ImGuiDebugAllocInfo_ImGuiDebugAllocInfo() [*c]ImGuiDebugAllocInfo;
pub extern fn ImGuiDebugAllocInfo_destroy(self: [*c]ImGuiDebugAllocInfo) void;
pub extern fn ImGuiStackLevelInfo_ImGuiStackLevelInfo() ?*ImGuiStackLevelInfo;
pub extern fn ImGuiStackLevelInfo_destroy(self: ?*ImGuiStackLevelInfo) void;
pub extern fn ImGuiIDStackTool_ImGuiIDStackTool() [*c]ImGuiIDStackTool;
pub extern fn ImGuiIDStackTool_destroy(self: [*c]ImGuiIDStackTool) void;
pub extern fn ImGuiContextHook_ImGuiContextHook() [*c]ImGuiContextHook;
pub extern fn ImGuiContextHook_destroy(self: [*c]ImGuiContextHook) void;
pub extern fn ImGuiContext_ImGuiContext(shared_font_atlas: [*c]ImFontAtlas) ?*ImGuiContext;
pub extern fn ImGuiContext_destroy(self: ?*ImGuiContext) void;
pub extern fn ImGuiWindow_ImGuiWindow(context: ?*ImGuiContext, name: [*c]const u8) ?*ImGuiWindow;
pub extern fn ImGuiWindow_destroy(self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_GetID_Str(self: ?*ImGuiWindow, str: [*c]const u8, str_end: [*c]const u8) ImGuiID;
pub extern fn ImGuiWindow_GetID_Ptr(self: ?*ImGuiWindow, ptr: ?*const anyopaque) ImGuiID;
pub extern fn ImGuiWindow_GetID_Int(self: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn ImGuiWindow_GetIDFromPos(self: ?*ImGuiWindow, p_abs: ImVec2) ImGuiID;
pub extern fn ImGuiWindow_GetIDFromRectangle(self: ?*ImGuiWindow, r_abs: ImRect) ImGuiID;
pub extern fn ImGuiWindow_Rect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_CalcFontSize(self: ?*ImGuiWindow) f32;
pub extern fn ImGuiWindow_TitleBarRect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiWindow_MenuBarRect(pOut: [*c]ImRect, self: ?*ImGuiWindow) void;
pub extern fn ImGuiTabItem_ImGuiTabItem() [*c]ImGuiTabItem;
pub extern fn ImGuiTabItem_destroy(self: [*c]ImGuiTabItem) void;
pub extern fn ImGuiTabBar_ImGuiTabBar() [*c]ImGuiTabBar;
pub extern fn ImGuiTabBar_destroy(self: [*c]ImGuiTabBar) void;
pub extern fn ImGuiTableColumn_ImGuiTableColumn() ?*ImGuiTableColumn;
pub extern fn ImGuiTableColumn_destroy(self: ?*ImGuiTableColumn) void;
pub extern fn ImGuiTableInstanceData_ImGuiTableInstanceData() [*c]ImGuiTableInstanceData;
pub extern fn ImGuiTableInstanceData_destroy(self: [*c]ImGuiTableInstanceData) void;
pub extern fn ImGuiTable_ImGuiTable() ?*ImGuiTable;
pub extern fn ImGuiTable_destroy(self: ?*ImGuiTable) void;
pub extern fn ImGuiTableTempData_ImGuiTableTempData() [*c]ImGuiTableTempData;
pub extern fn ImGuiTableTempData_destroy(self: [*c]ImGuiTableTempData) void;
pub extern fn ImGuiTableColumnSettings_ImGuiTableColumnSettings() ?*ImGuiTableColumnSettings;
pub extern fn ImGuiTableColumnSettings_destroy(self: ?*ImGuiTableColumnSettings) void;
pub extern fn ImGuiTableSettings_ImGuiTableSettings() [*c]ImGuiTableSettings;
pub extern fn ImGuiTableSettings_destroy(self: [*c]ImGuiTableSettings) void;
pub extern fn ImGuiTableSettings_GetColumnSettings(self: [*c]ImGuiTableSettings) ?*ImGuiTableColumnSettings;
pub extern fn igGetIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiIO;
pub extern fn igGetPlatformIO_ContextPtr(ctx: ?*ImGuiContext) [*c]ImGuiPlatformIO;
pub extern fn igGetCurrentWindowRead() ?*ImGuiWindow;
pub extern fn igGetCurrentWindow() ?*ImGuiWindow;
pub extern fn igFindWindowByID(id: ImGuiID) ?*ImGuiWindow;
pub extern fn igFindWindowByName(name: [*c]const u8) ?*ImGuiWindow;
pub extern fn igUpdateWindowParentAndRootLinks(window: ?*ImGuiWindow, flags: ImGuiWindowFlags, parent_window: ?*ImGuiWindow) void;
pub extern fn igUpdateWindowSkipRefresh(window: ?*ImGuiWindow) void;
pub extern fn igCalcWindowNextAutoFitSize(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn igIsWindowChildOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow, popup_hierarchy: bool, dock_hierarchy: bool) bool;
pub extern fn igIsWindowWithinBeginStackOf(window: ?*ImGuiWindow, potential_parent: ?*ImGuiWindow) bool;
pub extern fn igIsWindowAbove(potential_above: ?*ImGuiWindow, potential_below: ?*ImGuiWindow) bool;
pub extern fn igIsWindowNavFocusable(window: ?*ImGuiWindow) bool;
pub extern fn igSetWindowPos_WindowPtr(window: ?*ImGuiWindow, pos: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowSize_WindowPtr(window: ?*ImGuiWindow, size: ImVec2, cond: ImGuiCond) void;
pub extern fn igSetWindowCollapsed_WindowPtr(window: ?*ImGuiWindow, collapsed: bool, cond: ImGuiCond) void;
pub extern fn igSetWindowHitTestHole(window: ?*ImGuiWindow, pos: ImVec2, size: ImVec2) void;
pub extern fn igSetWindowHiddenAndSkipItemsForCurrentFrame(window: ?*ImGuiWindow) void;
pub extern fn igSetWindowParentWindowForFocusRoute(window: ?*ImGuiWindow, parent_window: ?*ImGuiWindow) void;
pub extern fn igWindowRectAbsToRel(pOut: [*c]ImRect, window: ?*ImGuiWindow, r: ImRect) void;
pub extern fn igWindowRectRelToAbs(pOut: [*c]ImRect, window: ?*ImGuiWindow, r: ImRect) void;
pub extern fn igWindowPosAbsToRel(pOut: [*c]ImVec2, window: ?*ImGuiWindow, p: ImVec2) void;
pub extern fn igWindowPosRelToAbs(pOut: [*c]ImVec2, window: ?*ImGuiWindow, p: ImVec2) void;
pub extern fn igFocusWindow(window: ?*ImGuiWindow, flags: ImGuiFocusRequestFlags) void;
pub extern fn igFocusTopMostWindowUnderOne(under_this_window: ?*ImGuiWindow, ignore_window: ?*ImGuiWindow, filter_viewport: [*c]ImGuiViewport, flags: ImGuiFocusRequestFlags) void;
pub extern fn igBringWindowToFocusFront(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayFront(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayBack(window: ?*ImGuiWindow) void;
pub extern fn igBringWindowToDisplayBehind(window: ?*ImGuiWindow, above_window: ?*ImGuiWindow) void;
pub extern fn igFindWindowDisplayIndex(window: ?*ImGuiWindow) c_int;
pub extern fn igFindBottomMostVisibleWindowWithinBeginStack(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn igSetNextWindowRefreshPolicy(flags: ImGuiWindowRefreshFlags) void;
pub extern fn igSetCurrentFont(font: [*c]ImFont) void;
pub extern fn igGetDefaultFont() [*c]ImFont;
pub extern fn igPushPasswordFont() void;
pub extern fn igGetForegroundDrawList_WindowPtr(window: ?*ImGuiWindow) [*c]ImDrawList;
pub extern fn igAddDrawListToDrawDataEx(draw_data: [*c]ImDrawData, out_list: [*c]ImVector_ImDrawListPtr, draw_list: [*c]ImDrawList) void;
pub extern fn igInitialize() void;
pub extern fn igShutdown() void;
pub extern fn igUpdateInputEvents(trickle_fast_inputs: bool) void;
pub extern fn igUpdateHoveredWindowAndCaptureFlags(mouse_pos: ImVec2) void;
pub extern fn igFindHoveredWindowEx(pos: ImVec2, find_first_and_in_any_viewport: bool, out_hovered_window: [*c]?*ImGuiWindow, out_hovered_window_under_moving_window: [*c]?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindow(window: ?*ImGuiWindow) void;
pub extern fn igStartMouseMovingWindowOrNode(window: ?*ImGuiWindow, node: ?*ImGuiDockNode, undock: bool) void;
pub extern fn igUpdateMouseMovingWindowNewFrame() void;
pub extern fn igUpdateMouseMovingWindowEndFrame() void;
pub extern fn igAddContextHook(context: ?*ImGuiContext, hook: [*c]const ImGuiContextHook) ImGuiID;
pub extern fn igRemoveContextHook(context: ?*ImGuiContext, hook_to_remove: ImGuiID) void;
pub extern fn igCallContextHooks(context: ?*ImGuiContext, @"type": ImGuiContextHookType) void;
pub extern fn igTranslateWindowsInViewport(viewport: [*c]ImGuiViewportP, old_pos: ImVec2, new_pos: ImVec2, old_size: ImVec2, new_size: ImVec2) void;
pub extern fn igScaleWindowsInViewport(viewport: [*c]ImGuiViewportP, scale: f32) void;
pub extern fn igDestroyPlatformWindow(viewport: [*c]ImGuiViewportP) void;
pub extern fn igSetWindowViewport(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP) void;
pub extern fn igSetCurrentViewport(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP) void;
pub extern fn igGetViewportPlatformMonitor(viewport: [*c]ImGuiViewport) [*c]const ImGuiPlatformMonitor;
pub extern fn igFindHoveredViewportFromPlatformWindowStack(mouse_platform_pos: ImVec2) [*c]ImGuiViewportP;
pub extern fn igMarkIniSettingsDirty_Nil() void;
pub extern fn igMarkIniSettingsDirty_WindowPtr(window: ?*ImGuiWindow) void;
pub extern fn igClearIniSettings() void;
pub extern fn igAddSettingsHandler(handler: [*c]const ImGuiSettingsHandler) void;
pub extern fn igRemoveSettingsHandler(type_name: [*c]const u8) void;
pub extern fn igFindSettingsHandler(type_name: [*c]const u8) [*c]ImGuiSettingsHandler;
pub extern fn igCreateNewWindowSettings(name: [*c]const u8) [*c]ImGuiWindowSettings;
pub extern fn igFindWindowSettingsByID(id: ImGuiID) [*c]ImGuiWindowSettings;
pub extern fn igFindWindowSettingsByWindow(window: ?*ImGuiWindow) [*c]ImGuiWindowSettings;
pub extern fn igClearWindowSettings(name: [*c]const u8) void;
pub extern fn igLocalizeRegisterEntries(entries: [*c]const ImGuiLocEntry, count: c_int) void;
pub extern fn igLocalizeGetMsg(key: ImGuiLocKey) [*c]const u8;
pub extern fn igSetScrollX_WindowPtr(window: ?*ImGuiWindow, scroll_x: f32) void;
pub extern fn igSetScrollY_WindowPtr(window: ?*ImGuiWindow, scroll_y: f32) void;
pub extern fn igSetScrollFromPosX_WindowPtr(window: ?*ImGuiWindow, local_x: f32, center_x_ratio: f32) void;
pub extern fn igSetScrollFromPosY_WindowPtr(window: ?*ImGuiWindow, local_y: f32, center_y_ratio: f32) void;
pub extern fn igScrollToItem(flags: ImGuiScrollFlags) void;
pub extern fn igScrollToRect(window: ?*ImGuiWindow, rect: ImRect, flags: ImGuiScrollFlags) void;
pub extern fn igScrollToRectEx(pOut: [*c]ImVec2, window: ?*ImGuiWindow, rect: ImRect, flags: ImGuiScrollFlags) void;
pub extern fn igScrollToBringRectIntoView(window: ?*ImGuiWindow, rect: ImRect) void;
pub extern fn igGetItemStatusFlags() ImGuiItemStatusFlags;
pub extern fn igGetItemFlags() ImGuiItemFlags;
pub extern fn igGetActiveID() ImGuiID;
pub extern fn igGetFocusID() ImGuiID;
pub extern fn igSetActiveID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn igSetFocusID(id: ImGuiID, window: ?*ImGuiWindow) void;
pub extern fn igClearActiveID() void;
pub extern fn igGetHoveredID() ImGuiID;
pub extern fn igSetHoveredID(id: ImGuiID) void;
pub extern fn igKeepAliveID(id: ImGuiID) void;
pub extern fn igMarkItemEdited(id: ImGuiID) void;
pub extern fn igPushOverrideID(id: ImGuiID) void;
pub extern fn igGetIDWithSeed_Str(str_id_begin: [*c]const u8, str_id_end: [*c]const u8, seed: ImGuiID) ImGuiID;
pub extern fn igGetIDWithSeed_Int(n: c_int, seed: ImGuiID) ImGuiID;
pub extern fn igItemSize_Vec2(size: ImVec2, text_baseline_y: f32) void;
pub extern fn igItemSize_Rect(bb: ImRect, text_baseline_y: f32) void;
pub extern fn igItemAdd(bb: ImRect, id: ImGuiID, nav_bb: [*c]const ImRect, extra_flags: ImGuiItemFlags) bool;
pub extern fn igItemHoverable(bb: ImRect, id: ImGuiID, item_flags: ImGuiItemFlags) bool;
pub extern fn igIsWindowContentHoverable(window: ?*ImGuiWindow, flags: ImGuiHoveredFlags) bool;
pub extern fn igIsClippedEx(bb: ImRect, id: ImGuiID) bool;
pub extern fn igSetLastItemData(item_id: ImGuiID, item_flags: ImGuiItemFlags, status_flags: ImGuiItemStatusFlags, item_rect: ImRect) void;
pub extern fn igCalcItemSize(pOut: [*c]ImVec2, size: ImVec2, default_w: f32, default_h: f32) void;
pub extern fn igCalcWrapWidthForPos(pos: ImVec2, wrap_pos_x: f32) f32;
pub extern fn igPushMultiItemsWidths(components: c_int, width_full: f32) void;
pub extern fn igShrinkWidths(items: [*c]ImGuiShrinkWidthItem, count: c_int, width_excess: f32) void;
pub extern fn igGetStyleVarInfo(idx: ImGuiStyleVar) ?*const ImGuiStyleVarInfo;
pub extern fn igBeginDisabledOverrideReenable() void;
pub extern fn igEndDisabledOverrideReenable() void;
pub extern fn igLogBegin(flags: ImGuiLogFlags, auto_open_depth: c_int) void;
pub extern fn igLogToBuffer(auto_open_depth: c_int) void;
pub extern fn igLogRenderedText(ref_pos: [*c]const ImVec2, text: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn igLogSetNextTextDecoration(prefix: [*c]const u8, suffix: [*c]const u8) void;
pub extern fn igBeginChildEx(name: [*c]const u8, id: ImGuiID, size_arg: ImVec2, child_flags: ImGuiChildFlags, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupEx(id: ImGuiID, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginPopupMenuEx(id: ImGuiID, label: [*c]const u8, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igOpenPopupEx(id: ImGuiID, popup_flags: ImGuiPopupFlags) void;
pub extern fn igClosePopupToLevel(remaining: c_int, restore_focus_to_window_under_popup: bool) void;
pub extern fn igClosePopupsOverWindow(ref_window: ?*ImGuiWindow, restore_focus_to_window_under_popup: bool) void;
pub extern fn igClosePopupsExceptModals() void;
pub extern fn igIsPopupOpen_ID(id: ImGuiID, popup_flags: ImGuiPopupFlags) bool;
pub extern fn igGetPopupAllowedExtentRect(pOut: [*c]ImRect, window: ?*ImGuiWindow) void;
pub extern fn igGetTopMostPopupModal() ?*ImGuiWindow;
pub extern fn igGetTopMostAndVisiblePopupModal() ?*ImGuiWindow;
pub extern fn igFindBlockingModal(window: ?*ImGuiWindow) ?*ImGuiWindow;
pub extern fn igFindBestWindowPosForPopup(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn igFindBestWindowPosForPopupEx(pOut: [*c]ImVec2, ref_pos: ImVec2, size: ImVec2, last_dir: [*c]ImGuiDir, r_outer: ImRect, r_avoid: ImRect, policy: ImGuiPopupPositionPolicy) void;
pub extern fn igBeginTooltipEx(tooltip_flags: ImGuiTooltipFlags, extra_window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginTooltipHidden() bool;
pub extern fn igBeginViewportSideBar(name: [*c]const u8, viewport: [*c]ImGuiViewport, dir: ImGuiDir, size: f32, window_flags: ImGuiWindowFlags) bool;
pub extern fn igBeginMenuEx(label: [*c]const u8, icon: [*c]const u8, enabled: bool) bool;
pub extern fn igMenuItemEx(label: [*c]const u8, icon: [*c]const u8, shortcut: [*c]const u8, selected: bool, enabled: bool) bool;
pub extern fn igBeginComboPopup(popup_id: ImGuiID, bb: ImRect, flags: ImGuiComboFlags) bool;
pub extern fn igBeginComboPreview() bool;
pub extern fn igEndComboPreview() void;
pub extern fn igNavInitWindow(window: ?*ImGuiWindow, force_reinit: bool) void;
pub extern fn igNavInitRequestApplyResult() void;
pub extern fn igNavMoveRequestButNoResultYet() bool;
pub extern fn igNavMoveRequestSubmit(move_dir: ImGuiDir, clip_dir: ImGuiDir, move_flags: ImGuiNavMoveFlags, scroll_flags: ImGuiScrollFlags) void;
pub extern fn igNavMoveRequestForward(move_dir: ImGuiDir, clip_dir: ImGuiDir, move_flags: ImGuiNavMoveFlags, scroll_flags: ImGuiScrollFlags) void;
pub extern fn igNavMoveRequestResolveWithLastItem(result: [*c]ImGuiNavItemData) void;
pub extern fn igNavMoveRequestResolveWithPastTreeNode(result: [*c]ImGuiNavItemData, tree_node_data: [*c]const ImGuiTreeNodeStackData) void;
pub extern fn igNavMoveRequestCancel() void;
pub extern fn igNavMoveRequestApplyResult() void;
pub extern fn igNavMoveRequestTryWrapping(window: ?*ImGuiWindow, move_flags: ImGuiNavMoveFlags) void;
pub extern fn igNavHighlightActivated(id: ImGuiID) void;
pub extern fn igNavClearPreferredPosForAxis(axis: ImGuiAxis) void;
pub extern fn igSetNavCursorVisibleAfterMove() void;
pub extern fn igNavUpdateCurrentWindowIsScrollPushableX() void;
pub extern fn igSetNavWindow(window: ?*ImGuiWindow) void;
pub extern fn igSetNavID(id: ImGuiID, nav_layer: ImGuiNavLayer, focus_scope_id: ImGuiID, rect_rel: ImRect) void;
pub extern fn igSetNavFocusScope(focus_scope_id: ImGuiID) void;
pub extern fn igFocusItem() void;
pub extern fn igActivateItemByID(id: ImGuiID) void;
pub extern fn igIsNamedKey(key: ImGuiKey) bool;
pub extern fn igIsNamedKeyOrMod(key: ImGuiKey) bool;
pub extern fn igIsLegacyKey(key: ImGuiKey) bool;
pub extern fn igIsKeyboardKey(key: ImGuiKey) bool;
pub extern fn igIsGamepadKey(key: ImGuiKey) bool;
pub extern fn igIsMouseKey(key: ImGuiKey) bool;
pub extern fn igIsAliasKey(key: ImGuiKey) bool;
pub extern fn igIsLRModKey(key: ImGuiKey) bool;
pub extern fn igFixupKeyChord(key_chord: ImGuiKeyChord) ImGuiKeyChord;
pub extern fn igConvertSingleModFlagToKey(key: ImGuiKey) ImGuiKey;
pub extern fn igGetKeyData_ContextPtr(ctx: ?*ImGuiContext, key: ImGuiKey) [*c]ImGuiKeyData;
pub extern fn igGetKeyData_Key(key: ImGuiKey) [*c]ImGuiKeyData;
pub extern fn igGetKeyChordName(key_chord: ImGuiKeyChord) [*c]const u8;
pub extern fn igMouseButtonToKey(button: ImGuiMouseButton) ImGuiKey;
pub extern fn igIsMouseDragPastThreshold(button: ImGuiMouseButton, lock_threshold: f32) bool;
pub extern fn igGetKeyMagnitude2d(pOut: [*c]ImVec2, key_left: ImGuiKey, key_right: ImGuiKey, key_up: ImGuiKey, key_down: ImGuiKey) void;
pub extern fn igGetNavTweakPressedAmount(axis: ImGuiAxis) f32;
pub extern fn igCalcTypematicRepeatAmount(t0: f32, t1: f32, repeat_delay: f32, repeat_rate: f32) c_int;
pub extern fn igGetTypematicRepeatRate(flags: ImGuiInputFlags, repeat_delay: [*c]f32, repeat_rate: [*c]f32) void;
pub extern fn igTeleportMousePos(pos: ImVec2) void;
pub extern fn igSetActiveIdUsingAllKeyboardKeys() void;
pub extern fn igIsActiveIdUsingNavDir(dir: ImGuiDir) bool;
pub extern fn igGetKeyOwner(key: ImGuiKey) ImGuiID;
pub extern fn igSetKeyOwner(key: ImGuiKey, owner_id: ImGuiID, flags: ImGuiInputFlags) void;
pub extern fn igSetKeyOwnersForKeyChord(key: ImGuiKeyChord, owner_id: ImGuiID, flags: ImGuiInputFlags) void;
pub extern fn igSetItemKeyOwner_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags) void;
pub extern fn igTestKeyOwner(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igGetKeyOwnerData(ctx: ?*ImGuiContext, key: ImGuiKey) [*c]ImGuiKeyOwnerData;
pub extern fn igIsKeyDown_ID(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igIsKeyPressed_InputFlags(key: ImGuiKey, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsKeyReleased_ID(key: ImGuiKey, owner_id: ImGuiID) bool;
pub extern fn igIsKeyChordPressed_InputFlags(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsMouseDown_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igIsMouseClicked_InputFlags(button: ImGuiMouseButton, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igIsMouseReleased_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igIsMouseDoubleClicked_ID(button: ImGuiMouseButton, owner_id: ImGuiID) bool;
pub extern fn igShortcut_ID(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igSetShortcutRouting(key_chord: ImGuiKeyChord, flags: ImGuiInputFlags, owner_id: ImGuiID) bool;
pub extern fn igTestShortcutRouting(key_chord: ImGuiKeyChord, owner_id: ImGuiID) bool;
pub extern fn igGetShortcutRoutingData(key_chord: ImGuiKeyChord) [*c]ImGuiKeyRoutingData;
pub extern fn igDockContextInitialize(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextShutdown(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextClearNodes(ctx: ?*ImGuiContext, root_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn igDockContextRebuildNodes(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextNewFrameUpdateUndocking(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextNewFrameUpdateDocking(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextEndFrame(ctx: ?*ImGuiContext) void;
pub extern fn igDockContextGenNodeID(ctx: ?*ImGuiContext) ImGuiID;
pub extern fn igDockContextQueueDock(ctx: ?*ImGuiContext, target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload: ?*ImGuiWindow, split_dir: ImGuiDir, split_ratio: f32, split_outer: bool) void;
pub extern fn igDockContextQueueUndockWindow(ctx: ?*ImGuiContext, window: ?*ImGuiWindow) void;
pub extern fn igDockContextQueueUndockNode(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn igDockContextProcessUndockWindow(ctx: ?*ImGuiContext, window: ?*ImGuiWindow, clear_persistent_docking_ref: bool) void;
pub extern fn igDockContextProcessUndockNode(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode) void;
pub extern fn igDockContextCalcDropPosForDocking(target: ?*ImGuiWindow, target_node: ?*ImGuiDockNode, payload_window: ?*ImGuiWindow, payload_node: ?*ImGuiDockNode, split_dir: ImGuiDir, split_outer: bool, out_pos: [*c]ImVec2) bool;
pub extern fn igDockContextFindNodeByID(ctx: ?*ImGuiContext, id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockNodeWindowMenuHandler_Default(ctx: ?*ImGuiContext, node: ?*ImGuiDockNode, tab_bar: [*c]ImGuiTabBar) void;
pub extern fn igDockNodeBeginAmendTabBar(node: ?*ImGuiDockNode) bool;
pub extern fn igDockNodeEndAmendTabBar() void;
pub extern fn igDockNodeGetRootNode(node: ?*ImGuiDockNode) ?*ImGuiDockNode;
pub extern fn igDockNodeIsInHierarchyOf(node: ?*ImGuiDockNode, parent: ?*ImGuiDockNode) bool;
pub extern fn igDockNodeGetDepth(node: ?*const ImGuiDockNode) c_int;
pub extern fn igDockNodeGetWindowMenuButtonId(node: ?*const ImGuiDockNode) ImGuiID;
pub extern fn igGetWindowDockNode() ?*ImGuiDockNode;
pub extern fn igGetWindowAlwaysWantOwnTabBar(window: ?*ImGuiWindow) bool;
pub extern fn igBeginDocked(window: ?*ImGuiWindow, p_open: [*c]bool) void;
pub extern fn igBeginDockableDragDropSource(window: ?*ImGuiWindow) void;
pub extern fn igBeginDockableDragDropTarget(window: ?*ImGuiWindow) void;
pub extern fn igSetWindowDock(window: ?*ImGuiWindow, dock_id: ImGuiID, cond: ImGuiCond) void;
pub extern fn igDockBuilderDockWindow(window_name: [*c]const u8, node_id: ImGuiID) void;
pub extern fn igDockBuilderGetNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockBuilderGetCentralNode(node_id: ImGuiID) ?*ImGuiDockNode;
pub extern fn igDockBuilderAddNode(node_id: ImGuiID, flags: ImGuiDockNodeFlags) ImGuiID;
pub extern fn igDockBuilderRemoveNode(node_id: ImGuiID) void;
pub extern fn igDockBuilderRemoveNodeDockedWindows(node_id: ImGuiID, clear_settings_refs: bool) void;
pub extern fn igDockBuilderRemoveNodeChildNodes(node_id: ImGuiID) void;
pub extern fn igDockBuilderSetNodePos(node_id: ImGuiID, pos: ImVec2) void;
pub extern fn igDockBuilderSetNodeSize(node_id: ImGuiID, size: ImVec2) void;
pub extern fn igDockBuilderSplitNode(node_id: ImGuiID, split_dir: ImGuiDir, size_ratio_for_node_at_dir: f32, out_id_at_dir: [*c]ImGuiID, out_id_at_opposite_dir: [*c]ImGuiID) ImGuiID;
pub extern fn igDockBuilderCopyDockSpace(src_dockspace_id: ImGuiID, dst_dockspace_id: ImGuiID, in_window_remap_pairs: [*c]ImVector_const_charPtr) void;
pub extern fn igDockBuilderCopyNode(src_node_id: ImGuiID, dst_node_id: ImGuiID, out_node_remap_pairs: [*c]ImVector_ImGuiID) void;
pub extern fn igDockBuilderCopyWindowSettings(src_name: [*c]const u8, dst_name: [*c]const u8) void;
pub extern fn igDockBuilderFinish(node_id: ImGuiID) void;
pub extern fn igPushFocusScope(id: ImGuiID) void;
pub extern fn igPopFocusScope() void;
pub extern fn igGetCurrentFocusScope() ImGuiID;
pub extern fn igIsDragDropActive() bool;
pub extern fn igBeginDragDropTargetCustom(bb: ImRect, id: ImGuiID) bool;
pub extern fn igClearDragDrop() void;
pub extern fn igIsDragDropPayloadBeingAccepted() bool;
pub extern fn igRenderDragDropTargetRect(bb: ImRect, item_clip_rect: ImRect) void;
pub extern fn igGetTypingSelectRequest(flags: ImGuiTypingSelectFlags) [*c]ImGuiTypingSelectRequest;
pub extern fn igTypingSelectFindMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn igTypingSelectFindNextSingleCharMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque, nav_item_idx: c_int) c_int;
pub extern fn igTypingSelectFindBestLeadingMatch(req: [*c]ImGuiTypingSelectRequest, items_count: c_int, get_item_name_func: ?*const fn (?*anyopaque, c_int) callconv(.c) [*c]const u8, user_data: ?*anyopaque) c_int;
pub extern fn igBeginBoxSelect(scope_rect: ImRect, window: ?*ImGuiWindow, box_select_id: ImGuiID, ms_flags: ImGuiMultiSelectFlags) bool;
pub extern fn igEndBoxSelect(scope_rect: ImRect, ms_flags: ImGuiMultiSelectFlags) void;
pub extern fn igMultiSelectItemHeader(id: ImGuiID, p_selected: [*c]bool, p_button_flags: [*c]ImGuiButtonFlags) void;
pub extern fn igMultiSelectItemFooter(id: ImGuiID, p_selected: [*c]bool, p_pressed: [*c]bool) void;
pub extern fn igMultiSelectAddSetAll(ms: [*c]ImGuiMultiSelectTempData, selected: bool) void;
pub extern fn igMultiSelectAddSetRange(ms: [*c]ImGuiMultiSelectTempData, selected: bool, range_dir: c_int, first_item: ImGuiSelectionUserData, last_item: ImGuiSelectionUserData) void;
pub extern fn igGetBoxSelectState(id: ImGuiID) ?*ImGuiBoxSelectState;
pub extern fn igGetMultiSelectState(id: ImGuiID) [*c]ImGuiMultiSelectState;
pub extern fn igSetWindowClipRectBeforeSetChannel(window: ?*ImGuiWindow, clip_rect: ImRect) void;
pub extern fn igBeginColumns(str_id: [*c]const u8, count: c_int, flags: ImGuiOldColumnFlags) void;
pub extern fn igEndColumns() void;
pub extern fn igPushColumnClipRect(column_index: c_int) void;
pub extern fn igPushColumnsBackground() void;
pub extern fn igPopColumnsBackground() void;
pub extern fn igGetColumnsID(str_id: [*c]const u8, count: c_int) ImGuiID;
pub extern fn igFindOrCreateColumns(window: ?*ImGuiWindow, id: ImGuiID) [*c]ImGuiOldColumns;
pub extern fn igGetColumnOffsetFromNorm(columns: [*c]const ImGuiOldColumns, offset_norm: f32) f32;
pub extern fn igGetColumnNormFromOffset(columns: [*c]const ImGuiOldColumns, offset: f32) f32;
pub extern fn igTableOpenContextMenu(column_n: c_int) void;
pub extern fn igTableSetColumnWidth(column_n: c_int, width: f32) void;
pub extern fn igTableSetColumnSortDirection(column_n: c_int, sort_direction: ImGuiSortDirection, append_to_sort_specs: bool) void;
pub extern fn igTableGetHoveredRow() c_int;
pub extern fn igTableGetHeaderRowHeight() f32;
pub extern fn igTableGetHeaderAngledMaxLabelWidth() f32;
pub extern fn igTablePushBackgroundChannel() void;
pub extern fn igTablePopBackgroundChannel() void;
pub extern fn igTablePushColumnChannel(column_n: c_int) void;
pub extern fn igTablePopColumnChannel() void;
pub extern fn igTableAngledHeadersRowEx(row_id: ImGuiID, angle: f32, max_label_width: f32, data: [*c]const ImGuiTableHeaderData, data_count: c_int) void;
pub extern fn igGetCurrentTable() ?*ImGuiTable;
pub extern fn igTableFindByID(id: ImGuiID) ?*ImGuiTable;
pub extern fn igBeginTableEx(name: [*c]const u8, id: ImGuiID, columns_count: c_int, flags: ImGuiTableFlags, outer_size: ImVec2, inner_width: f32) bool;
pub extern fn igTableBeginInitMemory(table: ?*ImGuiTable, columns_count: c_int) void;
pub extern fn igTableBeginApplyRequests(table: ?*ImGuiTable) void;
pub extern fn igTableSetupDrawChannels(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateLayout(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateBorders(table: ?*ImGuiTable) void;
pub extern fn igTableUpdateColumnsWeightFromWidth(table: ?*ImGuiTable) void;
pub extern fn igTableDrawBorders(table: ?*ImGuiTable) void;
pub extern fn igTableDrawDefaultContextMenu(table: ?*ImGuiTable, flags_for_section_to_display: ImGuiTableFlags) void;
pub extern fn igTableBeginContextMenuPopup(table: ?*ImGuiTable) bool;
pub extern fn igTableMergeDrawChannels(table: ?*ImGuiTable) void;
pub extern fn igTableGetInstanceData(table: ?*ImGuiTable, instance_no: c_int) [*c]ImGuiTableInstanceData;
pub extern fn igTableGetInstanceID(table: ?*ImGuiTable, instance_no: c_int) ImGuiID;
pub extern fn igTableSortSpecsSanitize(table: ?*ImGuiTable) void;
pub extern fn igTableSortSpecsBuild(table: ?*ImGuiTable) void;
pub extern fn igTableGetColumnNextSortDirection(column: ?*ImGuiTableColumn) ImGuiSortDirection;
pub extern fn igTableFixColumnSortDirection(table: ?*ImGuiTable, column: ?*ImGuiTableColumn) void;
pub extern fn igTableGetColumnWidthAuto(table: ?*ImGuiTable, column: ?*ImGuiTableColumn) f32;
pub extern fn igTableBeginRow(table: ?*ImGuiTable) void;
pub extern fn igTableEndRow(table: ?*ImGuiTable) void;
pub extern fn igTableBeginCell(table: ?*ImGuiTable, column_n: c_int) void;
pub extern fn igTableEndCell(table: ?*ImGuiTable) void;
pub extern fn igTableGetCellBgRect(pOut: [*c]ImRect, table: ?*const ImGuiTable, column_n: c_int) void;
pub extern fn igTableGetColumnName_TablePtr(table: ?*const ImGuiTable, column_n: c_int) [*c]const u8;
pub extern fn igTableGetColumnResizeID(table: ?*ImGuiTable, column_n: c_int, instance_no: c_int) ImGuiID;
pub extern fn igTableCalcMaxColumnWidth(table: ?*const ImGuiTable, column_n: c_int) f32;
pub extern fn igTableSetColumnWidthAutoSingle(table: ?*ImGuiTable, column_n: c_int) void;
pub extern fn igTableSetColumnWidthAutoAll(table: ?*ImGuiTable) void;
pub extern fn igTableRemove(table: ?*ImGuiTable) void;
pub extern fn igTableGcCompactTransientBuffers_TablePtr(table: ?*ImGuiTable) void;
pub extern fn igTableGcCompactTransientBuffers_TableTempDataPtr(table: [*c]ImGuiTableTempData) void;
pub extern fn igTableGcCompactSettings() void;
pub extern fn igTableLoadSettings(table: ?*ImGuiTable) void;
pub extern fn igTableSaveSettings(table: ?*ImGuiTable) void;
pub extern fn igTableResetSettings(table: ?*ImGuiTable) void;
pub extern fn igTableGetBoundSettings(table: ?*ImGuiTable) [*c]ImGuiTableSettings;
pub extern fn igTableSettingsAddSettingsHandler() void;
pub extern fn igTableSettingsCreate(id: ImGuiID, columns_count: c_int) [*c]ImGuiTableSettings;
pub extern fn igTableSettingsFindByID(id: ImGuiID) [*c]ImGuiTableSettings;
pub extern fn igGetCurrentTabBar() [*c]ImGuiTabBar;
pub extern fn igBeginTabBarEx(tab_bar: [*c]ImGuiTabBar, bb: ImRect, flags: ImGuiTabBarFlags) bool;
pub extern fn igTabBarFindTabByID(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) [*c]ImGuiTabItem;
pub extern fn igTabBarFindTabByOrder(tab_bar: [*c]ImGuiTabBar, order: c_int) [*c]ImGuiTabItem;
pub extern fn igTabBarFindMostRecentlySelectedTabForActiveWindow(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn igTabBarGetCurrentTab(tab_bar: [*c]ImGuiTabBar) [*c]ImGuiTabItem;
pub extern fn igTabBarGetTabOrder(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) c_int;
pub extern fn igTabBarGetTabName(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) [*c]const u8;
pub extern fn igTabBarAddTab(tab_bar: [*c]ImGuiTabBar, tab_flags: ImGuiTabItemFlags, window: ?*ImGuiWindow) void;
pub extern fn igTabBarRemoveTab(tab_bar: [*c]ImGuiTabBar, tab_id: ImGuiID) void;
pub extern fn igTabBarCloseTab(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn igTabBarQueueFocus_TabItemPtr(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem) void;
pub extern fn igTabBarQueueFocus_Str(tab_bar: [*c]ImGuiTabBar, tab_name: [*c]const u8) void;
pub extern fn igTabBarQueueReorder(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem, offset: c_int) void;
pub extern fn igTabBarQueueReorderFromMousePos(tab_bar: [*c]ImGuiTabBar, tab: [*c]ImGuiTabItem, mouse_pos: ImVec2) void;
pub extern fn igTabBarProcessReorder(tab_bar: [*c]ImGuiTabBar) bool;
pub extern fn igTabItemEx(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8, p_open: [*c]bool, flags: ImGuiTabItemFlags, docked_window: ?*ImGuiWindow) bool;
pub extern fn igTabItemSpacing(str_id: [*c]const u8, flags: ImGuiTabItemFlags, width: f32) void;
pub extern fn igTabItemCalcSize_Str(pOut: [*c]ImVec2, label: [*c]const u8, has_close_button_or_unsaved_marker: bool) void;
pub extern fn igTabItemCalcSize_WindowPtr(pOut: [*c]ImVec2, window: ?*ImGuiWindow) void;
pub extern fn igTabItemBackground(draw_list: [*c]ImDrawList, bb: ImRect, flags: ImGuiTabItemFlags, col: ImU32) void;
pub extern fn igTabItemLabelAndCloseButton(draw_list: [*c]ImDrawList, bb: ImRect, flags: ImGuiTabItemFlags, frame_padding: ImVec2, label: [*c]const u8, tab_id: ImGuiID, close_button_id: ImGuiID, is_contents_visible: bool, out_just_closed: [*c]bool, out_text_clipped: [*c]bool) void;
pub extern fn igRenderText(pos: ImVec2, text: [*c]const u8, text_end: [*c]const u8, hide_text_after_hash: bool) void;
pub extern fn igRenderTextWrapped(pos: ImVec2, text: [*c]const u8, text_end: [*c]const u8, wrap_width: f32) void;
pub extern fn igRenderTextClipped(pos_min: ImVec2, pos_max: ImVec2, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2, @"align": ImVec2, clip_rect: [*c]const ImRect) void;
pub extern fn igRenderTextClippedEx(draw_list: [*c]ImDrawList, pos_min: ImVec2, pos_max: ImVec2, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2, @"align": ImVec2, clip_rect: [*c]const ImRect) void;
pub extern fn igRenderTextEllipsis(draw_list: [*c]ImDrawList, pos_min: ImVec2, pos_max: ImVec2, ellipsis_max_x: f32, text: [*c]const u8, text_end: [*c]const u8, text_size_if_known: [*c]const ImVec2) void;
pub extern fn igRenderFrame(p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, borders: bool, rounding: f32) void;
pub extern fn igRenderFrameBorder(p_min: ImVec2, p_max: ImVec2, rounding: f32) void;
pub extern fn igRenderColorRectWithAlphaCheckerboard(draw_list: [*c]ImDrawList, p_min: ImVec2, p_max: ImVec2, fill_col: ImU32, grid_step: f32, grid_off: ImVec2, rounding: f32, flags: ImDrawFlags) void;
pub extern fn igRenderNavCursor(bb: ImRect, id: ImGuiID, flags: ImGuiNavRenderCursorFlags) void;
pub extern fn igFindRenderedTextEnd(text: [*c]const u8, text_end: [*c]const u8) [*c]const u8;
pub extern fn igRenderMouseCursor(pos: ImVec2, scale: f32, mouse_cursor: ImGuiMouseCursor, col_fill: ImU32, col_border: ImU32, col_shadow: ImU32) void;
pub extern fn igRenderArrow(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32, dir: ImGuiDir, scale: f32) void;
pub extern fn igRenderBullet(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32) void;
pub extern fn igRenderCheckMark(draw_list: [*c]ImDrawList, pos: ImVec2, col: ImU32, sz: f32) void;
pub extern fn igRenderArrowPointingAt(draw_list: [*c]ImDrawList, pos: ImVec2, half_sz: ImVec2, direction: ImGuiDir, col: ImU32) void;
pub extern fn igRenderArrowDockMenu(draw_list: [*c]ImDrawList, p_min: ImVec2, sz: f32, col: ImU32) void;
pub extern fn igRenderRectFilledRangeH(draw_list: [*c]ImDrawList, rect: ImRect, col: ImU32, x_start_norm: f32, x_end_norm: f32, rounding: f32) void;
pub extern fn igRenderRectFilledWithHole(draw_list: [*c]ImDrawList, outer: ImRect, inner: ImRect, col: ImU32, rounding: f32) void;
pub extern fn igCalcRoundingFlagsForRectInRect(r_in: ImRect, r_outer: ImRect, threshold: f32) ImDrawFlags;
pub extern fn igTextEx(text: [*c]const u8, text_end: [*c]const u8, flags: ImGuiTextFlags) void;
pub extern fn igTextAligned(align_x: f32, size_x: f32, fmt: [*c]const u8, ...) void;
pub extern fn igTextAlignedV(align_x: f32, size_x: f32, fmt: [*c]const u8, args: va_list) void;
pub extern fn igButtonEx(label: [*c]const u8, size_arg: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igArrowButtonEx(str_id: [*c]const u8, dir: ImGuiDir, size_arg: ImVec2, flags: ImGuiButtonFlags) bool;
pub extern fn igImageButtonEx(id: ImGuiID, user_texture_id: ImTextureID, image_size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4, flags: ImGuiButtonFlags) bool;
pub extern fn igSeparatorEx(flags: ImGuiSeparatorFlags, thickness: f32) void;
pub extern fn igSeparatorTextEx(id: ImGuiID, label: [*c]const u8, label_end: [*c]const u8, extra_width: f32) void;
pub extern fn igCheckboxFlags_S64Ptr(label: [*c]const u8, flags: [*c]ImS64, flags_value: ImS64) bool;
pub extern fn igCheckboxFlags_U64Ptr(label: [*c]const u8, flags: [*c]ImU64, flags_value: ImU64) bool;
pub extern fn igCloseButton(id: ImGuiID, pos: ImVec2) bool;
pub extern fn igCollapseButton(id: ImGuiID, pos: ImVec2, dock_node: ?*ImGuiDockNode) bool;
pub extern fn igScrollbar(axis: ImGuiAxis) void;
pub extern fn igScrollbarEx(bb: ImRect, id: ImGuiID, axis: ImGuiAxis, p_scroll_v: [*c]ImS64, avail_v: ImS64, contents_v: ImS64, draw_rounding_flags: ImDrawFlags) bool;
pub extern fn igGetWindowScrollbarRect(pOut: [*c]ImRect, window: ?*ImGuiWindow, axis: ImGuiAxis) void;
pub extern fn igGetWindowScrollbarID(window: ?*ImGuiWindow, axis: ImGuiAxis) ImGuiID;
pub extern fn igGetWindowResizeCornerID(window: ?*ImGuiWindow, n: c_int) ImGuiID;
pub extern fn igGetWindowResizeBorderID(window: ?*ImGuiWindow, dir: ImGuiDir) ImGuiID;
pub extern fn igButtonBehavior(bb: ImRect, id: ImGuiID, out_hovered: [*c]bool, out_held: [*c]bool, flags: ImGuiButtonFlags) bool;
pub extern fn igDragBehavior(id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, v_speed: f32, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags) bool;
pub extern fn igSliderBehavior(bb: ImRect, id: ImGuiID, data_type: ImGuiDataType, p_v: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque, format: [*c]const u8, flags: ImGuiSliderFlags, out_grab_bb: [*c]ImRect) bool;
pub extern fn igSplitterBehavior(bb: ImRect, id: ImGuiID, axis: ImGuiAxis, size1: [*c]f32, size2: [*c]f32, min_size1: f32, min_size2: f32, hover_extend: f32, hover_visibility_delay: f32, bg_col: ImU32) bool;
pub extern fn igTreeNodeBehavior(id: ImGuiID, flags: ImGuiTreeNodeFlags, label: [*c]const u8, label_end: [*c]const u8) bool;
pub extern fn igTreeNodeDrawLineToChildNode(target_pos: ImVec2) void;
pub extern fn igTreeNodeDrawLineToTreePop(data: [*c]const ImGuiTreeNodeStackData) void;
pub extern fn igTreePushOverrideID(id: ImGuiID) void;
pub extern fn igTreeNodeGetOpen(storage_id: ImGuiID) bool;
pub extern fn igTreeNodeSetOpen(storage_id: ImGuiID, open: bool) void;
pub extern fn igTreeNodeUpdateNextOpen(storage_id: ImGuiID, flags: ImGuiTreeNodeFlags) bool;
pub extern fn igDataTypeGetInfo(data_type: ImGuiDataType) [*c]const ImGuiDataTypeInfo;
pub extern fn igDataTypeFormatString(buf: [*c]u8, buf_size: c_int, data_type: ImGuiDataType, p_data: ?*const anyopaque, format: [*c]const u8) c_int;
pub extern fn igDataTypeApplyOp(data_type: ImGuiDataType, op: c_int, output: ?*anyopaque, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) void;
pub extern fn igDataTypeApplyFromText(buf: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_data_when_empty: ?*anyopaque) bool;
pub extern fn igDataTypeCompare(data_type: ImGuiDataType, arg_1: ?*const anyopaque, arg_2: ?*const anyopaque) c_int;
pub extern fn igDataTypeClamp(data_type: ImGuiDataType, p_data: ?*anyopaque, p_min: ?*const anyopaque, p_max: ?*const anyopaque) bool;
pub extern fn igDataTypeIsZero(data_type: ImGuiDataType, p_data: ?*const anyopaque) bool;
pub extern fn igInputTextEx(label: [*c]const u8, hint: [*c]const u8, buf: [*c]u8, buf_size: c_int, size_arg: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: ?*anyopaque) bool;
pub extern fn igInputTextDeactivateHook(id: ImGuiID) void;
pub extern fn igTempInputText(bb: ImRect, id: ImGuiID, label: [*c]const u8, buf: [*c]u8, buf_size: c_int, flags: ImGuiInputTextFlags) bool;
pub extern fn igTempInputScalar(bb: ImRect, id: ImGuiID, label: [*c]const u8, data_type: ImGuiDataType, p_data: ?*anyopaque, format: [*c]const u8, p_clamp_min: ?*const anyopaque, p_clamp_max: ?*const anyopaque) bool;
pub extern fn igTempInputIsActive(id: ImGuiID) bool;
pub extern fn igGetInputTextState(id: ImGuiID) [*c]ImGuiInputTextState;
pub extern fn igSetNextItemRefVal(data_type: ImGuiDataType, p_data: ?*anyopaque) void;
pub extern fn igIsItemActiveAsInputText() bool;
pub extern fn igColorTooltip(text: [*c]const u8, col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorEditOptionsPopup(col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igColorPickerOptionsPopup(ref_col: [*c]const f32, flags: ImGuiColorEditFlags) void;
pub extern fn igPlotEx(plot_type: ImGuiPlotType, label: [*c]const u8, values_getter: ?*const fn (?*anyopaque, c_int) callconv(.c) f32, data: ?*anyopaque, values_count: c_int, values_offset: c_int, overlay_text: [*c]const u8, scale_min: f32, scale_max: f32, size_arg: ImVec2) c_int;
pub extern fn igShadeVertsLinearColorGradientKeepAlpha(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, gradient_p0: ImVec2, gradient_p1: ImVec2, col0: ImU32, col1: ImU32) void;
pub extern fn igShadeVertsLinearUV(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, clamp: bool) void;
pub extern fn igShadeVertsTransformPos(draw_list: [*c]ImDrawList, vert_start_idx: c_int, vert_end_idx: c_int, pivot_in: ImVec2, cos_a: f32, sin_a: f32, pivot_out: ImVec2) void;
pub extern fn igGcCompactTransientMiscBuffers() void;
pub extern fn igGcCompactTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn igGcAwakeTransientWindowBuffers(window: ?*ImGuiWindow) void;
pub extern fn igErrorLog(msg: [*c]const u8) bool;
pub extern fn igErrorRecoveryStoreState(state_out: [*c]ImGuiErrorRecoveryState) void;
pub extern fn igErrorRecoveryTryToRecoverState(state_in: [*c]const ImGuiErrorRecoveryState) void;
pub extern fn igErrorRecoveryTryToRecoverWindowState(state_in: [*c]const ImGuiErrorRecoveryState) void;
pub extern fn igErrorCheckUsingSetCursorPosToExtendParentBoundaries() void;
pub extern fn igErrorCheckEndFrameFinalizeErrorTooltip() void;
pub extern fn igBeginErrorTooltip() bool;
pub extern fn igEndErrorTooltip() void;
pub extern fn igDebugAllocHook(info: [*c]ImGuiDebugAllocInfo, frame_count: c_int, ptr: ?*anyopaque, size: usize) void;
pub extern fn igDebugDrawCursorPos(col: ImU32) void;
pub extern fn igDebugDrawLineExtents(col: ImU32) void;
pub extern fn igDebugDrawItemRect(col: ImU32) void;
pub extern fn igDebugTextUnformattedWithLocateItem(line_begin: [*c]const u8, line_end: [*c]const u8) void;
pub extern fn igDebugLocateItem(target_id: ImGuiID) void;
pub extern fn igDebugLocateItemOnHover(target_id: ImGuiID) void;
pub extern fn igDebugLocateItemResolveWithLastItem() void;
pub extern fn igDebugBreakClearData() void;
pub extern fn igDebugBreakButton(label: [*c]const u8, description_of_location: [*c]const u8) bool;
pub extern fn igDebugBreakButtonTooltip(keyboard_only: bool, description_of_location: [*c]const u8) void;
pub extern fn igShowFontAtlas(atlas: [*c]ImFontAtlas) void;
pub extern fn igDebugHookIdInfo(id: ImGuiID, data_type: ImGuiDataType, data_id: ?*const anyopaque, data_id_end: ?*const anyopaque) void;
pub extern fn igDebugNodeColumns(columns: [*c]ImGuiOldColumns) void;
pub extern fn igDebugNodeDockNode(node: ?*ImGuiDockNode, label: [*c]const u8) void;
pub extern fn igDebugNodeDrawList(window: ?*ImGuiWindow, viewport: [*c]ImGuiViewportP, draw_list: [*c]const ImDrawList, label: [*c]const u8) void;
pub extern fn igDebugNodeDrawCmdShowMeshAndBoundingBox(out_draw_list: [*c]ImDrawList, draw_list: [*c]const ImDrawList, draw_cmd: [*c]const ImDrawCmd, show_mesh: bool, show_aabb: bool) void;
pub extern fn igDebugNodeFont(font: [*c]ImFont) void;
pub extern fn igDebugNodeFontGlyph(font: [*c]ImFont, glyph: ?*const ImFontGlyph) void;
pub extern fn igDebugNodeStorage(storage: [*c]ImGuiStorage, label: [*c]const u8) void;
pub extern fn igDebugNodeTabBar(tab_bar: [*c]ImGuiTabBar, label: [*c]const u8) void;
pub extern fn igDebugNodeTable(table: ?*ImGuiTable) void;
pub extern fn igDebugNodeTableSettings(settings: [*c]ImGuiTableSettings) void;
pub extern fn igDebugNodeInputTextState(state: [*c]ImGuiInputTextState) void;
pub extern fn igDebugNodeTypingSelectState(state: [*c]ImGuiTypingSelectState) void;
pub extern fn igDebugNodeMultiSelectState(state: [*c]ImGuiMultiSelectState) void;
pub extern fn igDebugNodeWindow(window: ?*ImGuiWindow, label: [*c]const u8) void;
pub extern fn igDebugNodeWindowSettings(settings: [*c]ImGuiWindowSettings) void;
pub extern fn igDebugNodeWindowsList(windows: [*c]ImVector_ImGuiWindowPtr, label: [*c]const u8) void;
pub extern fn igDebugNodeWindowsListByBeginStackParent(windows: [*c]?*ImGuiWindow, windows_size: c_int, parent_in_begin_stack: ?*ImGuiWindow) void;
pub extern fn igDebugNodeViewport(viewport: [*c]ImGuiViewportP) void;
pub extern fn igDebugNodePlatformMonitor(monitor: [*c]ImGuiPlatformMonitor, label: [*c]const u8, idx: c_int) void;
pub extern fn igDebugRenderKeyboardPreview(draw_list: [*c]ImDrawList) void;
pub extern fn igDebugRenderViewportThumbnail(draw_list: [*c]ImDrawList, viewport: [*c]ImGuiViewportP, bb: ImRect) void;
pub extern fn igImFontAtlasGetBuilderForStbTruetype() [*c]const ImFontBuilderIO;
pub extern fn igImFontAtlasUpdateSourcesPointers(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildInit(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildSetupFont(atlas: [*c]ImFontAtlas, font: [*c]ImFont, src: [*c]ImFontConfig, ascent: f32, descent: f32) void;
pub extern fn igImFontAtlasBuildPackCustomRects(atlas: [*c]ImFontAtlas, stbrp_context_opaque: ?*anyopaque) void;
pub extern fn igImFontAtlasBuildFinish(atlas: [*c]ImFontAtlas) void;
pub extern fn igImFontAtlasBuildRender8bppRectFromString(atlas: [*c]ImFontAtlas, x: c_int, y: c_int, w: c_int, h: c_int, in_str: [*c]const u8, in_marker_char: u8, in_marker_pixel_value: u8) void;
pub extern fn igImFontAtlasBuildRender32bppRectFromString(atlas: [*c]ImFontAtlas, x: c_int, y: c_int, w: c_int, h: c_int, in_str: [*c]const u8, in_marker_char: u8, in_marker_pixel_value: c_uint) void;
pub extern fn igImFontAtlasBuildMultiplyCalcLookupTable(out_table: [*c]u8, in_multiply_factor: f32) void;
pub extern fn igImFontAtlasBuildMultiplyRectAlpha8(table: [*c]const u8, pixels: [*c]u8, x: c_int, y: c_int, w: c_int, h: c_int, stride: c_int) void;
pub extern fn igImFontAtlasBuildGetOversampleFactors(src: [*c]const ImFontConfig, out_oversample_h: [*c]c_int, out_oversample_v: [*c]c_int) void;
pub extern fn igImFontAtlasGetMouseCursorTexData(atlas: [*c]ImFontAtlas, cursor_type: ImGuiMouseCursor, out_offset: [*c]ImVec2, out_size: [*c]ImVec2, out_uv_border: [*c]ImVec2, out_uv_fill: [*c]ImVec2) bool;
pub extern fn ImGuiTextBuffer_appendf(self: [*c]ImGuiTextBuffer, fmt: [*c]const u8, ...) void;
pub extern fn igGET_FLT_MAX() f32;
pub extern fn igGET_FLT_MIN() f32;
pub extern fn ImVector_ImWchar_create() [*c]ImVector_ImWchar;
pub extern fn ImVector_ImWchar_destroy(self: [*c]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_Init(p: [*c]ImVector_ImWchar) void;
pub extern fn ImVector_ImWchar_UnInit(p: [*c]ImVector_ImWchar) void;
pub extern fn ImGuiPlatformIO_Set_Platform_GetWindowPos(platform_io: [*c]ImGuiPlatformIO, user_callback: ?*const fn ([*c]ImGuiViewport, [*c]ImVec2) callconv(.c) void) void;
pub extern fn ImGuiPlatformIO_Set_Platform_GetWindowSize(platform_io: [*c]ImGuiPlatformIO, user_callback: ?*const fn ([*c]ImGuiViewport, [*c]ImVec2) callconv(.c) void) void;
pub const clock_t = __darwin_clock_t;
pub const time_t = __darwin_time_t;
pub const struct_timespec = extern struct {
    tv_sec: __darwin_time_t = @import("std").mem.zeroes(__darwin_time_t),
    tv_nsec: c_long = @import("std").mem.zeroes(c_long),
};
pub const struct_tm = extern struct {
    tm_sec: c_int = @import("std").mem.zeroes(c_int),
    tm_min: c_int = @import("std").mem.zeroes(c_int),
    tm_hour: c_int = @import("std").mem.zeroes(c_int),
    tm_mday: c_int = @import("std").mem.zeroes(c_int),
    tm_mon: c_int = @import("std").mem.zeroes(c_int),
    tm_year: c_int = @import("std").mem.zeroes(c_int),
    tm_wday: c_int = @import("std").mem.zeroes(c_int),
    tm_yday: c_int = @import("std").mem.zeroes(c_int),
    tm_isdst: c_int = @import("std").mem.zeroes(c_int),
    tm_gmtoff: c_long = @import("std").mem.zeroes(c_long),
    tm_zone: [*c]u8 = @import("std").mem.zeroes([*c]u8),
};
pub const tzname: [*c][*c]u8 = @extern([*c][*c]u8, .{
    .name = "tzname",
});
pub extern var getdate_err: c_int;
pub extern var timezone: c_long;
pub extern var daylight: c_int;
pub extern fn asctime([*c]const struct_tm) [*c]u8;
pub extern fn clock() clock_t;
pub extern fn ctime([*c]const time_t) [*c]u8;
pub extern fn difftime(time_t, time_t) f64;
pub extern fn getdate([*c]const u8) [*c]struct_tm;
pub extern fn gmtime([*c]const time_t) [*c]struct_tm;
pub extern fn localtime([*c]const time_t) [*c]struct_tm;
pub extern fn mktime([*c]struct_tm) time_t;
pub extern fn strftime(noalias [*c]u8, __maxsize: usize, noalias [*c]const u8, noalias [*c]const struct_tm) usize;
pub extern fn strptime(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]struct_tm) [*c]u8;
pub extern fn time([*c]time_t) time_t;
pub extern fn tzset() void;
pub extern fn asctime_r(noalias [*c]const struct_tm, noalias [*c]u8) [*c]u8;
pub extern fn ctime_r([*c]const time_t, [*c]u8) [*c]u8;
pub extern fn gmtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn posix2time(time_t) time_t;
pub extern fn tzsetwall() void;
pub extern fn time2posix(time_t) time_t;
pub extern fn timelocal([*c]struct_tm) time_t;
pub extern fn timegm([*c]struct_tm) time_t;
pub extern fn nanosleep(__rqtp: [*c]const struct_timespec, __rmtp: [*c]struct_timespec) c_int;
pub const _CLOCK_REALTIME: c_int = 0;
pub const _CLOCK_MONOTONIC: c_int = 6;
pub const _CLOCK_MONOTONIC_RAW: c_int = 4;
pub const _CLOCK_MONOTONIC_RAW_APPROX: c_int = 5;
pub const _CLOCK_UPTIME_RAW: c_int = 8;
pub const _CLOCK_UPTIME_RAW_APPROX: c_int = 9;
pub const _CLOCK_PROCESS_CPUTIME_ID: c_int = 12;
pub const _CLOCK_THREAD_CPUTIME_ID: c_int = 16;
pub const clockid_t = c_uint;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_gettime_nsec_np(__clock_id: clockid_t) __uint64_t;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn timespec_get(ts: [*c]struct_timespec, base: c_int) c_int;
pub const tm = struct_tm;
pub const ImPlotFlags = c_int;
pub const ImPlotLocation = c_int;
pub const ImPlotMouseTextFlags = c_int;
pub const ImPlotAxisFlags = c_int;
pub const struct_ImPlotRange = extern struct {
    Min: f64 = @import("std").mem.zeroes(f64),
    Max: f64 = @import("std").mem.zeroes(f64),
};
pub const ImPlotRange = struct_ImPlotRange;
pub const ImPlotCond = c_int;
pub const ImPlotScale = c_int;
pub const struct_ImPlotTick = extern struct {
    PlotPos: f64 = @import("std").mem.zeroes(f64),
    PixelPos: f32 = @import("std").mem.zeroes(f32),
    LabelSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TextOffset: c_int = @import("std").mem.zeroes(c_int),
    Major: bool = @import("std").mem.zeroes(bool),
    ShowLabel: bool = @import("std").mem.zeroes(bool),
    Level: c_int = @import("std").mem.zeroes(c_int),
    Idx: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImPlotTick = struct_ImPlotTick;
pub const struct_ImVector_ImPlotTick = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotTick = @import("std").mem.zeroes([*c]ImPlotTick),
};
pub const ImVector_ImPlotTick = struct_ImVector_ImPlotTick;
pub const struct_ImPlotTicker = extern struct {
    Ticks: ImVector_ImPlotTick = @import("std").mem.zeroes(ImVector_ImPlotTick),
    TextBuffer: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    MaxSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LateSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Levels: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImPlotTicker = struct_ImPlotTicker;
pub const ImPlotFormatter = ?*const fn (f64, [*c]u8, c_int, ?*anyopaque) callconv(.c) c_int;
pub const ImPlotLocator = ?*const fn ([*c]ImPlotTicker, ImPlotRange, f32, bool, ImPlotFormatter, ?*anyopaque) callconv(.c) void;
pub const struct_ImPlotTime = extern struct {
    S: time_t = @import("std").mem.zeroes(time_t),
    Us: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImPlotTime = struct_ImPlotTime;
pub const ImPlotTransform = ?*const fn (f64, ?*anyopaque) callconv(.c) f64;
pub const struct_ImPlotAxis = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImPlotAxisFlags = @import("std").mem.zeroes(ImPlotAxisFlags),
    PreviousFlags: ImPlotAxisFlags = @import("std").mem.zeroes(ImPlotAxisFlags),
    Range: ImPlotRange = @import("std").mem.zeroes(ImPlotRange),
    RangeCond: ImPlotCond = @import("std").mem.zeroes(ImPlotCond),
    Scale: ImPlotScale = @import("std").mem.zeroes(ImPlotScale),
    FitExtents: ImPlotRange = @import("std").mem.zeroes(ImPlotRange),
    OrthoAxis: [*c]ImPlotAxis = @import("std").mem.zeroes([*c]ImPlotAxis),
    ConstraintRange: ImPlotRange = @import("std").mem.zeroes(ImPlotRange),
    ConstraintZoom: ImPlotRange = @import("std").mem.zeroes(ImPlotRange),
    Ticker: ImPlotTicker = @import("std").mem.zeroes(ImPlotTicker),
    Formatter: ImPlotFormatter = @import("std").mem.zeroes(ImPlotFormatter),
    FormatterData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    FormatSpec: [16]u8 = @import("std").mem.zeroes([16]u8),
    Locator: ImPlotLocator = @import("std").mem.zeroes(ImPlotLocator),
    LinkedMin: [*c]f64 = @import("std").mem.zeroes([*c]f64),
    LinkedMax: [*c]f64 = @import("std").mem.zeroes([*c]f64),
    PickerLevel: c_int = @import("std").mem.zeroes(c_int),
    PickerTimeMin: ImPlotTime = @import("std").mem.zeroes(ImPlotTime),
    PickerTimeMax: ImPlotTime = @import("std").mem.zeroes(ImPlotTime),
    TransformForward: ImPlotTransform = @import("std").mem.zeroes(ImPlotTransform),
    TransformInverse: ImPlotTransform = @import("std").mem.zeroes(ImPlotTransform),
    TransformData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    PixelMin: f32 = @import("std").mem.zeroes(f32),
    PixelMax: f32 = @import("std").mem.zeroes(f32),
    ScaleMin: f64 = @import("std").mem.zeroes(f64),
    ScaleMax: f64 = @import("std").mem.zeroes(f64),
    ScaleToPixel: f64 = @import("std").mem.zeroes(f64),
    Datum1: f32 = @import("std").mem.zeroes(f32),
    Datum2: f32 = @import("std").mem.zeroes(f32),
    HoverRect: ImRect = @import("std").mem.zeroes(ImRect),
    LabelOffset: c_int = @import("std").mem.zeroes(c_int),
    ColorMaj: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorMin: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorTick: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorTxt: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorBg: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorHov: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorAct: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorHiLi: ImU32 = @import("std").mem.zeroes(ImU32),
    Enabled: bool = @import("std").mem.zeroes(bool),
    Vertical: bool = @import("std").mem.zeroes(bool),
    FitThisFrame: bool = @import("std").mem.zeroes(bool),
    HasRange: bool = @import("std").mem.zeroes(bool),
    HasFormatSpec: bool = @import("std").mem.zeroes(bool),
    ShowDefaultTicks: bool = @import("std").mem.zeroes(bool),
    Hovered: bool = @import("std").mem.zeroes(bool),
    Held: bool = @import("std").mem.zeroes(bool),
};
pub const ImPlotAxis = struct_ImPlotAxis;
pub const ImPlotLegendFlags = c_int;
pub const struct_ImPlotLegend = extern struct {
    Flags: ImPlotLegendFlags = @import("std").mem.zeroes(ImPlotLegendFlags),
    PreviousFlags: ImPlotLegendFlags = @import("std").mem.zeroes(ImPlotLegendFlags),
    Location: ImPlotLocation = @import("std").mem.zeroes(ImPlotLocation),
    PreviousLocation: ImPlotLocation = @import("std").mem.zeroes(ImPlotLocation),
    Indices: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    Labels: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    Rect: ImRect = @import("std").mem.zeroes(ImRect),
    Hovered: bool = @import("std").mem.zeroes(bool),
    Held: bool = @import("std").mem.zeroes(bool),
    CanGoInside: bool = @import("std").mem.zeroes(bool),
};
pub const ImPlotLegend = struct_ImPlotLegend;
pub const struct_ImPlotItem = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Color: ImU32 = @import("std").mem.zeroes(ImU32),
    LegendHoverRect: ImRect = @import("std").mem.zeroes(ImRect),
    NameOffset: c_int = @import("std").mem.zeroes(c_int),
    Show: bool = @import("std").mem.zeroes(bool),
    LegendHovered: bool = @import("std").mem.zeroes(bool),
    SeenThisFrame: bool = @import("std").mem.zeroes(bool),
};
pub const ImPlotItem = struct_ImPlotItem;
pub const struct_ImVector_ImPlotItem = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotItem = @import("std").mem.zeroes([*c]ImPlotItem),
};
pub const ImVector_ImPlotItem = struct_ImVector_ImPlotItem;
pub const struct_ImPool_ImPlotItem = extern struct {
    Buf: ImVector_ImPlotItem = @import("std").mem.zeroes(ImVector_ImPlotItem),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImPlotItem = struct_ImPool_ImPlotItem;
pub const struct_ImPlotItemGroup = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Legend: ImPlotLegend = @import("std").mem.zeroes(ImPlotLegend),
    ItemPool: ImPool_ImPlotItem = @import("std").mem.zeroes(ImPool_ImPlotItem),
    ColormapIdx: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImPlotItemGroup = struct_ImPlotItemGroup;
pub const ImAxis = c_int;
pub const struct_ImPlotPlot = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImPlotFlags = @import("std").mem.zeroes(ImPlotFlags),
    PreviousFlags: ImPlotFlags = @import("std").mem.zeroes(ImPlotFlags),
    MouseTextLocation: ImPlotLocation = @import("std").mem.zeroes(ImPlotLocation),
    MouseTextFlags: ImPlotMouseTextFlags = @import("std").mem.zeroes(ImPlotMouseTextFlags),
    Axes: [6]ImPlotAxis = @import("std").mem.zeroes([6]ImPlotAxis),
    TextBuffer: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    Items: ImPlotItemGroup = @import("std").mem.zeroes(ImPlotItemGroup),
    CurrentX: ImAxis = @import("std").mem.zeroes(ImAxis),
    CurrentY: ImAxis = @import("std").mem.zeroes(ImAxis),
    FrameRect: ImRect = @import("std").mem.zeroes(ImRect),
    CanvasRect: ImRect = @import("std").mem.zeroes(ImRect),
    PlotRect: ImRect = @import("std").mem.zeroes(ImRect),
    AxesRect: ImRect = @import("std").mem.zeroes(ImRect),
    SelectRect: ImRect = @import("std").mem.zeroes(ImRect),
    SelectStart: ImVec2 = @import("std").mem.zeroes(ImVec2),
    TitleOffset: c_int = @import("std").mem.zeroes(c_int),
    JustCreated: bool = @import("std").mem.zeroes(bool),
    Initialized: bool = @import("std").mem.zeroes(bool),
    SetupLocked: bool = @import("std").mem.zeroes(bool),
    FitThisFrame: bool = @import("std").mem.zeroes(bool),
    Hovered: bool = @import("std").mem.zeroes(bool),
    Held: bool = @import("std").mem.zeroes(bool),
    Selecting: bool = @import("std").mem.zeroes(bool),
    Selected: bool = @import("std").mem.zeroes(bool),
    ContextLocked: bool = @import("std").mem.zeroes(bool),
};
pub const ImPlotPlot = struct_ImPlotPlot;
pub const struct_ImVector_ImPlotPlot = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotPlot = @import("std").mem.zeroes([*c]ImPlotPlot),
};
pub const ImVector_ImPlotPlot = struct_ImVector_ImPlotPlot;
pub const struct_ImPool_ImPlotPlot = extern struct {
    Buf: ImVector_ImPlotPlot = @import("std").mem.zeroes(ImVector_ImPlotPlot),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImPlotPlot = struct_ImPool_ImPlotPlot;
pub const ImPlotSubplotFlags = c_int;
pub const struct_ImPlotAlignmentData = extern struct {
    Vertical: bool = @import("std").mem.zeroes(bool),
    PadA: f32 = @import("std").mem.zeroes(f32),
    PadB: f32 = @import("std").mem.zeroes(f32),
    PadAMax: f32 = @import("std").mem.zeroes(f32),
    PadBMax: f32 = @import("std").mem.zeroes(f32),
};
pub const ImPlotAlignmentData = struct_ImPlotAlignmentData;
pub const struct_ImVector_ImPlotAlignmentData = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotAlignmentData = @import("std").mem.zeroes([*c]ImPlotAlignmentData),
};
pub const ImVector_ImPlotAlignmentData = struct_ImVector_ImPlotAlignmentData;
pub const struct_ImVector_ImPlotRange = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotRange = @import("std").mem.zeroes([*c]ImPlotRange),
};
pub const ImVector_ImPlotRange = struct_ImVector_ImPlotRange;
pub const struct_ImPlotSubplot = extern struct {
    ID: ImGuiID = @import("std").mem.zeroes(ImGuiID),
    Flags: ImPlotSubplotFlags = @import("std").mem.zeroes(ImPlotSubplotFlags),
    PreviousFlags: ImPlotSubplotFlags = @import("std").mem.zeroes(ImPlotSubplotFlags),
    Items: ImPlotItemGroup = @import("std").mem.zeroes(ImPlotItemGroup),
    Rows: c_int = @import("std").mem.zeroes(c_int),
    Cols: c_int = @import("std").mem.zeroes(c_int),
    CurrentIdx: c_int = @import("std").mem.zeroes(c_int),
    FrameRect: ImRect = @import("std").mem.zeroes(ImRect),
    GridRect: ImRect = @import("std").mem.zeroes(ImRect),
    CellSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    RowAlignmentData: ImVector_ImPlotAlignmentData = @import("std").mem.zeroes(ImVector_ImPlotAlignmentData),
    ColAlignmentData: ImVector_ImPlotAlignmentData = @import("std").mem.zeroes(ImVector_ImPlotAlignmentData),
    RowRatios: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    ColRatios: ImVector_float = @import("std").mem.zeroes(ImVector_float),
    RowLinkData: ImVector_ImPlotRange = @import("std").mem.zeroes(ImVector_ImPlotRange),
    ColLinkData: ImVector_ImPlotRange = @import("std").mem.zeroes(ImVector_ImPlotRange),
    TempSizes: [2]f32 = @import("std").mem.zeroes([2]f32),
    FrameHovered: bool = @import("std").mem.zeroes(bool),
    HasTitle: bool = @import("std").mem.zeroes(bool),
};
pub const ImPlotSubplot = struct_ImPlotSubplot;
pub const struct_ImVector_ImPlotSubplot = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotSubplot = @import("std").mem.zeroes([*c]ImPlotSubplot),
};
pub const ImVector_ImPlotSubplot = struct_ImVector_ImPlotSubplot;
pub const struct_ImPool_ImPlotSubplot = extern struct {
    Buf: ImVector_ImPlotSubplot = @import("std").mem.zeroes(ImVector_ImPlotSubplot),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImPlotSubplot = struct_ImPool_ImPlotSubplot;
pub const struct_ImPlotAnnotation = extern struct {
    Pos: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Offset: ImVec2 = @import("std").mem.zeroes(ImVec2),
    ColorBg: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorFg: ImU32 = @import("std").mem.zeroes(ImU32),
    TextOffset: c_int = @import("std").mem.zeroes(c_int),
    Clamp: bool = @import("std").mem.zeroes(bool),
};
pub const ImPlotAnnotation = struct_ImPlotAnnotation;
pub const struct_ImVector_ImPlotAnnotation = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotAnnotation = @import("std").mem.zeroes([*c]ImPlotAnnotation),
};
pub const ImVector_ImPlotAnnotation = struct_ImVector_ImPlotAnnotation;
pub const struct_ImPlotAnnotationCollection = extern struct {
    Annotations: ImVector_ImPlotAnnotation = @import("std").mem.zeroes(ImVector_ImPlotAnnotation),
    TextBuffer: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    Size: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImPlotAnnotationCollection = struct_ImPlotAnnotationCollection;
pub const struct_ImPlotTag = extern struct {
    Axis: ImAxis = @import("std").mem.zeroes(ImAxis),
    Value: f64 = @import("std").mem.zeroes(f64),
    ColorBg: ImU32 = @import("std").mem.zeroes(ImU32),
    ColorFg: ImU32 = @import("std").mem.zeroes(ImU32),
    TextOffset: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImPlotTag = struct_ImPlotTag;
pub const struct_ImVector_ImPlotTag = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotTag = @import("std").mem.zeroes([*c]ImPlotTag),
};
pub const ImVector_ImPlotTag = struct_ImVector_ImPlotTag;
pub const struct_ImPlotTagCollection = extern struct {
    Tags: ImVector_ImPlotTag = @import("std").mem.zeroes(ImVector_ImPlotTag),
    TextBuffer: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    Size: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImPlotTagCollection = struct_ImPlotTagCollection;
pub const ImPlotColormap = c_int;
pub const struct_ImPlotStyle = extern struct {
    LineWeight: f32 = @import("std").mem.zeroes(f32),
    Marker: c_int = @import("std").mem.zeroes(c_int),
    MarkerSize: f32 = @import("std").mem.zeroes(f32),
    MarkerWeight: f32 = @import("std").mem.zeroes(f32),
    FillAlpha: f32 = @import("std").mem.zeroes(f32),
    ErrorBarSize: f32 = @import("std").mem.zeroes(f32),
    ErrorBarWeight: f32 = @import("std").mem.zeroes(f32),
    DigitalBitHeight: f32 = @import("std").mem.zeroes(f32),
    DigitalBitGap: f32 = @import("std").mem.zeroes(f32),
    PlotBorderSize: f32 = @import("std").mem.zeroes(f32),
    MinorAlpha: f32 = @import("std").mem.zeroes(f32),
    MajorTickLen: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MinorTickLen: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MajorTickSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MinorTickSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MajorGridSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MinorGridSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    PlotPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LabelPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LegendPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LegendInnerPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    LegendSpacing: ImVec2 = @import("std").mem.zeroes(ImVec2),
    MousePosPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    AnnotationPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    FitPadding: ImVec2 = @import("std").mem.zeroes(ImVec2),
    PlotDefaultSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    PlotMinSize: ImVec2 = @import("std").mem.zeroes(ImVec2),
    Colors: [21]ImVec4 = @import("std").mem.zeroes([21]ImVec4),
    Colormap: ImPlotColormap = @import("std").mem.zeroes(ImPlotColormap),
    UseLocalTime: bool = @import("std").mem.zeroes(bool),
    UseISO8601: bool = @import("std").mem.zeroes(bool),
    Use24HourClock: bool = @import("std").mem.zeroes(bool),
};
pub const ImPlotStyle = struct_ImPlotStyle;
pub const struct_ImVector_bool = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]bool = @import("std").mem.zeroes([*c]bool),
};
pub const ImVector_bool = struct_ImVector_bool;
pub const struct_ImPlotColormapData = extern struct {
    Keys: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
    KeyCounts: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    KeyOffsets: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    Tables: ImVector_ImU32 = @import("std").mem.zeroes(ImVector_ImU32),
    TableSizes: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    TableOffsets: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    Text: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    TextOffsets: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    Quals: ImVector_bool = @import("std").mem.zeroes(ImVector_bool),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    Count: c_int = @import("std").mem.zeroes(c_int),
};
pub const ImPlotColormapData = struct_ImPlotColormapData;
pub const struct_ImVector_ImPlotColormap = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImPlotColormap = @import("std").mem.zeroes([*c]ImPlotColormap),
};
pub const ImVector_ImPlotColormap = struct_ImVector_ImPlotColormap;
pub const struct_ImVector_double = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]f64 = @import("std").mem.zeroes([*c]f64),
};
pub const ImVector_double = struct_ImVector_double;
pub const struct_ImPlotNextPlotData = extern struct {
    RangeCond: [6]ImPlotCond = @import("std").mem.zeroes([6]ImPlotCond),
    Range: [6]ImPlotRange = @import("std").mem.zeroes([6]ImPlotRange),
    HasRange: [6]bool = @import("std").mem.zeroes([6]bool),
    Fit: [6]bool = @import("std").mem.zeroes([6]bool),
    LinkedMin: [6][*c]f64 = @import("std").mem.zeroes([6][*c]f64),
    LinkedMax: [6][*c]f64 = @import("std").mem.zeroes([6][*c]f64),
};
pub const ImPlotNextPlotData = struct_ImPlotNextPlotData;
pub const ImPlotMarker = c_int;
pub const struct_ImPlotNextItemData = extern struct {
    Colors: [5]ImVec4 = @import("std").mem.zeroes([5]ImVec4),
    LineWeight: f32 = @import("std").mem.zeroes(f32),
    Marker: ImPlotMarker = @import("std").mem.zeroes(ImPlotMarker),
    MarkerSize: f32 = @import("std").mem.zeroes(f32),
    MarkerWeight: f32 = @import("std").mem.zeroes(f32),
    FillAlpha: f32 = @import("std").mem.zeroes(f32),
    ErrorBarSize: f32 = @import("std").mem.zeroes(f32),
    ErrorBarWeight: f32 = @import("std").mem.zeroes(f32),
    DigitalBitHeight: f32 = @import("std").mem.zeroes(f32),
    DigitalBitGap: f32 = @import("std").mem.zeroes(f32),
    RenderLine: bool = @import("std").mem.zeroes(bool),
    RenderFill: bool = @import("std").mem.zeroes(bool),
    RenderMarkerLine: bool = @import("std").mem.zeroes(bool),
    RenderMarkerFill: bool = @import("std").mem.zeroes(bool),
    HasHidden: bool = @import("std").mem.zeroes(bool),
    Hidden: bool = @import("std").mem.zeroes(bool),
    HiddenCond: ImPlotCond = @import("std").mem.zeroes(ImPlotCond),
};
pub const ImPlotNextItemData = struct_ImPlotNextItemData;
pub const struct_ImPlotInputMap = extern struct {
    Pan: ImGuiMouseButton = @import("std").mem.zeroes(ImGuiMouseButton),
    PanMod: c_int = @import("std").mem.zeroes(c_int),
    Fit: ImGuiMouseButton = @import("std").mem.zeroes(ImGuiMouseButton),
    Select: ImGuiMouseButton = @import("std").mem.zeroes(ImGuiMouseButton),
    SelectCancel: ImGuiMouseButton = @import("std").mem.zeroes(ImGuiMouseButton),
    SelectMod: c_int = @import("std").mem.zeroes(c_int),
    SelectHorzMod: c_int = @import("std").mem.zeroes(c_int),
    SelectVertMod: c_int = @import("std").mem.zeroes(c_int),
    Menu: ImGuiMouseButton = @import("std").mem.zeroes(ImGuiMouseButton),
    OverrideMod: c_int = @import("std").mem.zeroes(c_int),
    ZoomMod: c_int = @import("std").mem.zeroes(c_int),
    ZoomRate: f32 = @import("std").mem.zeroes(f32),
};
pub const ImPlotInputMap = struct_ImPlotInputMap;
pub const struct_ImPool_ImPlotAlignmentData = extern struct {
    Buf: ImVector_ImPlotAlignmentData = @import("std").mem.zeroes(ImVector_ImPlotAlignmentData),
    Map: ImGuiStorage = @import("std").mem.zeroes(ImGuiStorage),
    FreeIdx: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
    AliveCount: ImPoolIdx = @import("std").mem.zeroes(ImPoolIdx),
};
pub const ImPool_ImPlotAlignmentData = struct_ImPool_ImPlotAlignmentData;
pub const struct_ImPlotContext = extern struct {
    Plots: ImPool_ImPlotPlot = @import("std").mem.zeroes(ImPool_ImPlotPlot),
    Subplots: ImPool_ImPlotSubplot = @import("std").mem.zeroes(ImPool_ImPlotSubplot),
    CurrentPlot: [*c]ImPlotPlot = @import("std").mem.zeroes([*c]ImPlotPlot),
    CurrentSubplot: [*c]ImPlotSubplot = @import("std").mem.zeroes([*c]ImPlotSubplot),
    CurrentItems: [*c]ImPlotItemGroup = @import("std").mem.zeroes([*c]ImPlotItemGroup),
    CurrentItem: [*c]ImPlotItem = @import("std").mem.zeroes([*c]ImPlotItem),
    PreviousItem: [*c]ImPlotItem = @import("std").mem.zeroes([*c]ImPlotItem),
    CTicker: ImPlotTicker = @import("std").mem.zeroes(ImPlotTicker),
    Annotations: ImPlotAnnotationCollection = @import("std").mem.zeroes(ImPlotAnnotationCollection),
    Tags: ImPlotTagCollection = @import("std").mem.zeroes(ImPlotTagCollection),
    ChildWindowMade: bool = @import("std").mem.zeroes(bool),
    Style: ImPlotStyle = @import("std").mem.zeroes(ImPlotStyle),
    ColorModifiers: ImVector_ImGuiColorMod = @import("std").mem.zeroes(ImVector_ImGuiColorMod),
    StyleModifiers: ImVector_ImGuiStyleMod = @import("std").mem.zeroes(ImVector_ImGuiStyleMod),
    ColormapData: ImPlotColormapData = @import("std").mem.zeroes(ImPlotColormapData),
    ColormapModifiers: ImVector_ImPlotColormap = @import("std").mem.zeroes(ImVector_ImPlotColormap),
    Tm: tm = @import("std").mem.zeroes(tm),
    TempDouble1: ImVector_double = @import("std").mem.zeroes(ImVector_double),
    TempDouble2: ImVector_double = @import("std").mem.zeroes(ImVector_double),
    TempInt1: ImVector_int = @import("std").mem.zeroes(ImVector_int),
    DigitalPlotItemCnt: c_int = @import("std").mem.zeroes(c_int),
    DigitalPlotOffset: c_int = @import("std").mem.zeroes(c_int),
    NextPlotData: ImPlotNextPlotData = @import("std").mem.zeroes(ImPlotNextPlotData),
    NextItemData: ImPlotNextItemData = @import("std").mem.zeroes(ImPlotNextItemData),
    InputMap: ImPlotInputMap = @import("std").mem.zeroes(ImPlotInputMap),
    OpenContextThisFrame: bool = @import("std").mem.zeroes(bool),
    MousePosStringBuilder: ImGuiTextBuffer = @import("std").mem.zeroes(ImGuiTextBuffer),
    SortItems: [*c]ImPlotItemGroup = @import("std").mem.zeroes([*c]ImPlotItemGroup),
    AlignmentData: ImPool_ImPlotAlignmentData = @import("std").mem.zeroes(ImPool_ImPlotAlignmentData),
    CurrentAlignmentH: [*c]ImPlotAlignmentData = @import("std").mem.zeroes([*c]ImPlotAlignmentData),
    CurrentAlignmentV: [*c]ImPlotAlignmentData = @import("std").mem.zeroes([*c]ImPlotAlignmentData),
};
pub const ImPlotContext = struct_ImPlotContext;
pub const struct_ImPlotAxisColor = opaque {};
pub const ImPlotAxisColor = struct_ImPlotAxisColor;
pub const struct_ImVector_ImS16 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImS16 = @import("std").mem.zeroes([*c]ImS16),
};
pub const ImVector_ImS16 = struct_ImVector_ImS16;
pub const struct_ImVector_ImS32 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImS32 = @import("std").mem.zeroes([*c]ImS32),
};
pub const ImVector_ImS32 = struct_ImVector_ImS32;
pub const struct_ImVector_ImS64 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImS64 = @import("std").mem.zeroes([*c]ImS64),
};
pub const ImVector_ImS64 = struct_ImVector_ImS64;
pub const struct_ImVector_ImS8 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImS8 = @import("std").mem.zeroes([*c]ImS8),
};
pub const ImVector_ImS8 = struct_ImVector_ImS8;
pub const struct_ImVector_ImU64 = extern struct {
    Size: c_int = @import("std").mem.zeroes(c_int),
    Capacity: c_int = @import("std").mem.zeroes(c_int),
    Data: [*c]ImU64 = @import("std").mem.zeroes([*c]ImU64),
};
pub const ImVector_ImU64 = struct_ImVector_ImU64;
pub const ImPlotDragToolFlags = c_int;
pub const ImPlotColormapScaleFlags = c_int;
pub const ImPlotItemFlags = c_int;
pub const ImPlotLineFlags = c_int;
pub const ImPlotScatterFlags = c_int;
pub const ImPlotStairsFlags = c_int;
pub const ImPlotShadedFlags = c_int;
pub const ImPlotBarsFlags = c_int;
pub const ImPlotBarGroupsFlags = c_int;
pub const ImPlotErrorBarsFlags = c_int;
pub const ImPlotStemsFlags = c_int;
pub const ImPlotInfLinesFlags = c_int;
pub const ImPlotPieChartFlags = c_int;
pub const ImPlotHeatmapFlags = c_int;
pub const ImPlotHistogramFlags = c_int;
pub const ImPlotDigitalFlags = c_int;
pub const ImPlotImageFlags = c_int;
pub const ImPlotTextFlags = c_int;
pub const ImPlotDummyFlags = c_int;
pub const ImPlotCol = c_int;
pub const ImPlotStyleVar = c_int;
pub const ImPlotBin = c_int;
pub const ImAxis_X1: c_int = 0;
pub const ImAxis_X2: c_int = 1;
pub const ImAxis_X3: c_int = 2;
pub const ImAxis_Y1: c_int = 3;
pub const ImAxis_Y2: c_int = 4;
pub const ImAxis_Y3: c_int = 5;
pub const ImAxis_COUNT: c_int = 6;
pub const ImAxis_ = c_uint;
pub const ImPlotFlags_None: c_int = 0;
pub const ImPlotFlags_NoTitle: c_int = 1;
pub const ImPlotFlags_NoLegend: c_int = 2;
pub const ImPlotFlags_NoMouseText: c_int = 4;
pub const ImPlotFlags_NoInputs: c_int = 8;
pub const ImPlotFlags_NoMenus: c_int = 16;
pub const ImPlotFlags_NoBoxSelect: c_int = 32;
pub const ImPlotFlags_NoChild: c_int = 64;
pub const ImPlotFlags_NoFrame: c_int = 128;
pub const ImPlotFlags_Equal: c_int = 256;
pub const ImPlotFlags_Crosshairs: c_int = 512;
pub const ImPlotFlags_CanvasOnly: c_int = 55;
pub const ImPlotFlags_ = c_uint;
pub const ImPlotAxisFlags_None: c_int = 0;
pub const ImPlotAxisFlags_NoLabel: c_int = 1;
pub const ImPlotAxisFlags_NoGridLines: c_int = 2;
pub const ImPlotAxisFlags_NoTickMarks: c_int = 4;
pub const ImPlotAxisFlags_NoTickLabels: c_int = 8;
pub const ImPlotAxisFlags_NoInitialFit: c_int = 16;
pub const ImPlotAxisFlags_NoMenus: c_int = 32;
pub const ImPlotAxisFlags_NoSideSwitch: c_int = 64;
pub const ImPlotAxisFlags_NoHighlight: c_int = 128;
pub const ImPlotAxisFlags_Opposite: c_int = 256;
pub const ImPlotAxisFlags_Foreground: c_int = 512;
pub const ImPlotAxisFlags_Invert: c_int = 1024;
pub const ImPlotAxisFlags_AutoFit: c_int = 2048;
pub const ImPlotAxisFlags_RangeFit: c_int = 4096;
pub const ImPlotAxisFlags_PanStretch: c_int = 8192;
pub const ImPlotAxisFlags_LockMin: c_int = 16384;
pub const ImPlotAxisFlags_LockMax: c_int = 32768;
pub const ImPlotAxisFlags_Lock: c_int = 49152;
pub const ImPlotAxisFlags_NoDecorations: c_int = 15;
pub const ImPlotAxisFlags_AuxDefault: c_int = 258;
pub const ImPlotAxisFlags_ = c_uint;
pub const ImPlotSubplotFlags_None: c_int = 0;
pub const ImPlotSubplotFlags_NoTitle: c_int = 1;
pub const ImPlotSubplotFlags_NoLegend: c_int = 2;
pub const ImPlotSubplotFlags_NoMenus: c_int = 4;
pub const ImPlotSubplotFlags_NoResize: c_int = 8;
pub const ImPlotSubplotFlags_NoAlign: c_int = 16;
pub const ImPlotSubplotFlags_ShareItems: c_int = 32;
pub const ImPlotSubplotFlags_LinkRows: c_int = 64;
pub const ImPlotSubplotFlags_LinkCols: c_int = 128;
pub const ImPlotSubplotFlags_LinkAllX: c_int = 256;
pub const ImPlotSubplotFlags_LinkAllY: c_int = 512;
pub const ImPlotSubplotFlags_ColMajor: c_int = 1024;
pub const ImPlotSubplotFlags_ = c_uint;
pub const ImPlotLegendFlags_None: c_int = 0;
pub const ImPlotLegendFlags_NoButtons: c_int = 1;
pub const ImPlotLegendFlags_NoHighlightItem: c_int = 2;
pub const ImPlotLegendFlags_NoHighlightAxis: c_int = 4;
pub const ImPlotLegendFlags_NoMenus: c_int = 8;
pub const ImPlotLegendFlags_Outside: c_int = 16;
pub const ImPlotLegendFlags_Horizontal: c_int = 32;
pub const ImPlotLegendFlags_Sort: c_int = 64;
pub const ImPlotLegendFlags_ = c_uint;
pub const ImPlotMouseTextFlags_None: c_int = 0;
pub const ImPlotMouseTextFlags_NoAuxAxes: c_int = 1;
pub const ImPlotMouseTextFlags_NoFormat: c_int = 2;
pub const ImPlotMouseTextFlags_ShowAlways: c_int = 4;
pub const ImPlotMouseTextFlags_ = c_uint;
pub const ImPlotDragToolFlags_None: c_int = 0;
pub const ImPlotDragToolFlags_NoCursors: c_int = 1;
pub const ImPlotDragToolFlags_NoFit: c_int = 2;
pub const ImPlotDragToolFlags_NoInputs: c_int = 4;
pub const ImPlotDragToolFlags_Delayed: c_int = 8;
pub const ImPlotDragToolFlags_ = c_uint;
pub const ImPlotColormapScaleFlags_None: c_int = 0;
pub const ImPlotColormapScaleFlags_NoLabel: c_int = 1;
pub const ImPlotColormapScaleFlags_Opposite: c_int = 2;
pub const ImPlotColormapScaleFlags_Invert: c_int = 4;
pub const ImPlotColormapScaleFlags_ = c_uint;
pub const ImPlotItemFlags_None: c_int = 0;
pub const ImPlotItemFlags_NoLegend: c_int = 1;
pub const ImPlotItemFlags_NoFit: c_int = 2;
pub const ImPlotItemFlags_ = c_uint;
pub const ImPlotLineFlags_None: c_int = 0;
pub const ImPlotLineFlags_Segments: c_int = 1024;
pub const ImPlotLineFlags_Loop: c_int = 2048;
pub const ImPlotLineFlags_SkipNaN: c_int = 4096;
pub const ImPlotLineFlags_NoClip: c_int = 8192;
pub const ImPlotLineFlags_Shaded: c_int = 16384;
pub const ImPlotLineFlags_ = c_uint;
pub const ImPlotScatterFlags_None: c_int = 0;
pub const ImPlotScatterFlags_NoClip: c_int = 1024;
pub const ImPlotScatterFlags_ = c_uint;
pub const ImPlotStairsFlags_None: c_int = 0;
pub const ImPlotStairsFlags_PreStep: c_int = 1024;
pub const ImPlotStairsFlags_Shaded: c_int = 2048;
pub const ImPlotStairsFlags_ = c_uint;
pub const ImPlotShadedFlags_None: c_int = 0;
pub const ImPlotShadedFlags_ = c_uint;
pub const ImPlotBarsFlags_None: c_int = 0;
pub const ImPlotBarsFlags_Horizontal: c_int = 1024;
pub const ImPlotBarsFlags_ = c_uint;
pub const ImPlotBarGroupsFlags_None: c_int = 0;
pub const ImPlotBarGroupsFlags_Horizontal: c_int = 1024;
pub const ImPlotBarGroupsFlags_Stacked: c_int = 2048;
pub const ImPlotBarGroupsFlags_ = c_uint;
pub const ImPlotErrorBarsFlags_None: c_int = 0;
pub const ImPlotErrorBarsFlags_Horizontal: c_int = 1024;
pub const ImPlotErrorBarsFlags_ = c_uint;
pub const ImPlotStemsFlags_None: c_int = 0;
pub const ImPlotStemsFlags_Horizontal: c_int = 1024;
pub const ImPlotStemsFlags_ = c_uint;
pub const ImPlotInfLinesFlags_None: c_int = 0;
pub const ImPlotInfLinesFlags_Horizontal: c_int = 1024;
pub const ImPlotInfLinesFlags_ = c_uint;
pub const ImPlotPieChartFlags_None: c_int = 0;
pub const ImPlotPieChartFlags_Normalize: c_int = 1024;
pub const ImPlotPieChartFlags_ = c_uint;
pub const ImPlotHeatmapFlags_None: c_int = 0;
pub const ImPlotHeatmapFlags_ColMajor: c_int = 1024;
pub const ImPlotHeatmapFlags_ = c_uint;
pub const ImPlotHistogramFlags_None: c_int = 0;
pub const ImPlotHistogramFlags_Horizontal: c_int = 1024;
pub const ImPlotHistogramFlags_Cumulative: c_int = 2048;
pub const ImPlotHistogramFlags_Density: c_int = 4096;
pub const ImPlotHistogramFlags_NoOutliers: c_int = 8192;
pub const ImPlotHistogramFlags_ColMajor: c_int = 16384;
pub const ImPlotHistogramFlags_ = c_uint;
pub const ImPlotDigitalFlags_None: c_int = 0;
pub const ImPlotDigitalFlags_ = c_uint;
pub const ImPlotImageFlags_None: c_int = 0;
pub const ImPlotImageFlags_ = c_uint;
pub const ImPlotTextFlags_None: c_int = 0;
pub const ImPlotTextFlags_Vertical: c_int = 1024;
pub const ImPlotTextFlags_ = c_uint;
pub const ImPlotDummyFlags_None: c_int = 0;
pub const ImPlotDummyFlags_ = c_uint;
pub const ImPlotCond_None: c_int = 0;
pub const ImPlotCond_Always: c_int = 1;
pub const ImPlotCond_Once: c_int = 2;
pub const ImPlotCond_ = c_uint;
pub const ImPlotCol_Line: c_int = 0;
pub const ImPlotCol_Fill: c_int = 1;
pub const ImPlotCol_MarkerOutline: c_int = 2;
pub const ImPlotCol_MarkerFill: c_int = 3;
pub const ImPlotCol_ErrorBar: c_int = 4;
pub const ImPlotCol_FrameBg: c_int = 5;
pub const ImPlotCol_PlotBg: c_int = 6;
pub const ImPlotCol_PlotBorder: c_int = 7;
pub const ImPlotCol_LegendBg: c_int = 8;
pub const ImPlotCol_LegendBorder: c_int = 9;
pub const ImPlotCol_LegendText: c_int = 10;
pub const ImPlotCol_TitleText: c_int = 11;
pub const ImPlotCol_InlayText: c_int = 12;
pub const ImPlotCol_AxisText: c_int = 13;
pub const ImPlotCol_AxisGrid: c_int = 14;
pub const ImPlotCol_AxisTick: c_int = 15;
pub const ImPlotCol_AxisBg: c_int = 16;
pub const ImPlotCol_AxisBgHovered: c_int = 17;
pub const ImPlotCol_AxisBgActive: c_int = 18;
pub const ImPlotCol_Selection: c_int = 19;
pub const ImPlotCol_Crosshairs: c_int = 20;
pub const ImPlotCol_COUNT: c_int = 21;
pub const ImPlotCol_ = c_uint;
pub const ImPlotStyleVar_LineWeight: c_int = 0;
pub const ImPlotStyleVar_Marker: c_int = 1;
pub const ImPlotStyleVar_MarkerSize: c_int = 2;
pub const ImPlotStyleVar_MarkerWeight: c_int = 3;
pub const ImPlotStyleVar_FillAlpha: c_int = 4;
pub const ImPlotStyleVar_ErrorBarSize: c_int = 5;
pub const ImPlotStyleVar_ErrorBarWeight: c_int = 6;
pub const ImPlotStyleVar_DigitalBitHeight: c_int = 7;
pub const ImPlotStyleVar_DigitalBitGap: c_int = 8;
pub const ImPlotStyleVar_PlotBorderSize: c_int = 9;
pub const ImPlotStyleVar_MinorAlpha: c_int = 10;
pub const ImPlotStyleVar_MajorTickLen: c_int = 11;
pub const ImPlotStyleVar_MinorTickLen: c_int = 12;
pub const ImPlotStyleVar_MajorTickSize: c_int = 13;
pub const ImPlotStyleVar_MinorTickSize: c_int = 14;
pub const ImPlotStyleVar_MajorGridSize: c_int = 15;
pub const ImPlotStyleVar_MinorGridSize: c_int = 16;
pub const ImPlotStyleVar_PlotPadding: c_int = 17;
pub const ImPlotStyleVar_LabelPadding: c_int = 18;
pub const ImPlotStyleVar_LegendPadding: c_int = 19;
pub const ImPlotStyleVar_LegendInnerPadding: c_int = 20;
pub const ImPlotStyleVar_LegendSpacing: c_int = 21;
pub const ImPlotStyleVar_MousePosPadding: c_int = 22;
pub const ImPlotStyleVar_AnnotationPadding: c_int = 23;
pub const ImPlotStyleVar_FitPadding: c_int = 24;
pub const ImPlotStyleVar_PlotDefaultSize: c_int = 25;
pub const ImPlotStyleVar_PlotMinSize: c_int = 26;
pub const ImPlotStyleVar_COUNT: c_int = 27;
pub const ImPlotStyleVar_ = c_uint;
pub const ImPlotScale_Linear: c_int = 0;
pub const ImPlotScale_Time: c_int = 1;
pub const ImPlotScale_Log10: c_int = 2;
pub const ImPlotScale_SymLog: c_int = 3;
pub const ImPlotScale_ = c_uint;
pub const ImPlotMarker_None: c_int = -1;
pub const ImPlotMarker_Circle: c_int = 0;
pub const ImPlotMarker_Square: c_int = 1;
pub const ImPlotMarker_Diamond: c_int = 2;
pub const ImPlotMarker_Up: c_int = 3;
pub const ImPlotMarker_Down: c_int = 4;
pub const ImPlotMarker_Left: c_int = 5;
pub const ImPlotMarker_Right: c_int = 6;
pub const ImPlotMarker_Cross: c_int = 7;
pub const ImPlotMarker_Plus: c_int = 8;
pub const ImPlotMarker_Asterisk: c_int = 9;
pub const ImPlotMarker_COUNT: c_int = 10;
pub const ImPlotMarker_ = c_int;
pub const ImPlotColormap_Deep: c_int = 0;
pub const ImPlotColormap_Dark: c_int = 1;
pub const ImPlotColormap_Pastel: c_int = 2;
pub const ImPlotColormap_Paired: c_int = 3;
pub const ImPlotColormap_Viridis: c_int = 4;
pub const ImPlotColormap_Plasma: c_int = 5;
pub const ImPlotColormap_Hot: c_int = 6;
pub const ImPlotColormap_Cool: c_int = 7;
pub const ImPlotColormap_Pink: c_int = 8;
pub const ImPlotColormap_Jet: c_int = 9;
pub const ImPlotColormap_Twilight: c_int = 10;
pub const ImPlotColormap_RdBu: c_int = 11;
pub const ImPlotColormap_BrBG: c_int = 12;
pub const ImPlotColormap_PiYG: c_int = 13;
pub const ImPlotColormap_Spectral: c_int = 14;
pub const ImPlotColormap_Greys: c_int = 15;
pub const ImPlotColormap_ = c_uint;
pub const ImPlotLocation_Center: c_int = 0;
pub const ImPlotLocation_North: c_int = 1;
pub const ImPlotLocation_South: c_int = 2;
pub const ImPlotLocation_West: c_int = 4;
pub const ImPlotLocation_East: c_int = 8;
pub const ImPlotLocation_NorthWest: c_int = 5;
pub const ImPlotLocation_NorthEast: c_int = 9;
pub const ImPlotLocation_SouthWest: c_int = 6;
pub const ImPlotLocation_SouthEast: c_int = 10;
pub const ImPlotLocation_ = c_uint;
pub const ImPlotBin_Sqrt: c_int = -1;
pub const ImPlotBin_Sturges: c_int = -2;
pub const ImPlotBin_Rice: c_int = -3;
pub const ImPlotBin_Scott: c_int = -4;
pub const ImPlotBin_ = c_int;
pub const struct_ImPlotPoint = extern struct {
    x: f64 = @import("std").mem.zeroes(f64),
    y: f64 = @import("std").mem.zeroes(f64),
};
pub const ImPlotPoint = struct_ImPlotPoint;
pub const struct_ImPlotRect = extern struct {
    X: ImPlotRange = @import("std").mem.zeroes(ImPlotRange),
    Y: ImPlotRange = @import("std").mem.zeroes(ImPlotRange),
};
pub const ImPlotRect = struct_ImPlotRect;
pub const ImPlotGetter = ?*const fn (c_int, ?*anyopaque) callconv(.c) ImPlotPoint;
pub extern var GImPlot: [*c]ImPlotContext;
pub const ImPlotTimeUnit = c_int;
pub const ImPlotDateFmt = c_int;
pub const ImPlotTimeFmt = c_int;
pub const ImPlotTimeUnit_Us: c_int = 0;
pub const ImPlotTimeUnit_Ms: c_int = 1;
pub const ImPlotTimeUnit_S: c_int = 2;
pub const ImPlotTimeUnit_Min: c_int = 3;
pub const ImPlotTimeUnit_Hr: c_int = 4;
pub const ImPlotTimeUnit_Day: c_int = 5;
pub const ImPlotTimeUnit_Mo: c_int = 6;
pub const ImPlotTimeUnit_Yr: c_int = 7;
pub const ImPlotTimeUnit_COUNT: c_int = 8;
pub const ImPlotTimeUnit_ = c_uint;
pub const ImPlotDateFmt_None: c_int = 0;
pub const ImPlotDateFmt_DayMo: c_int = 1;
pub const ImPlotDateFmt_DayMoYr: c_int = 2;
pub const ImPlotDateFmt_MoYr: c_int = 3;
pub const ImPlotDateFmt_Mo: c_int = 4;
pub const ImPlotDateFmt_Yr: c_int = 5;
pub const ImPlotDateFmt_ = c_uint;
pub const ImPlotTimeFmt_None: c_int = 0;
pub const ImPlotTimeFmt_Us: c_int = 1;
pub const ImPlotTimeFmt_SUs: c_int = 2;
pub const ImPlotTimeFmt_SMs: c_int = 3;
pub const ImPlotTimeFmt_S: c_int = 4;
pub const ImPlotTimeFmt_MinSMs: c_int = 5;
pub const ImPlotTimeFmt_HrMinSMs: c_int = 6;
pub const ImPlotTimeFmt_HrMinS: c_int = 7;
pub const ImPlotTimeFmt_HrMin: c_int = 8;
pub const ImPlotTimeFmt_Hr: c_int = 9;
pub const ImPlotTimeFmt_ = c_uint;
pub const struct_ImPlotDateTimeSpec = extern struct {
    Date: ImPlotDateFmt = @import("std").mem.zeroes(ImPlotDateFmt),
    Time: ImPlotTimeFmt = @import("std").mem.zeroes(ImPlotTimeFmt),
    UseISO8601: bool = @import("std").mem.zeroes(bool),
    Use24HourClock: bool = @import("std").mem.zeroes(bool),
};
pub const ImPlotDateTimeSpec = struct_ImPlotDateTimeSpec;
pub const struct_ImPlotPointError = extern struct {
    X: f64 = @import("std").mem.zeroes(f64),
    Y: f64 = @import("std").mem.zeroes(f64),
    Neg: f64 = @import("std").mem.zeroes(f64),
    Pos: f64 = @import("std").mem.zeroes(f64),
};
pub const ImPlotPointError = struct_ImPlotPointError;
pub const struct_Formatter_Time_Data = extern struct {
    Time: ImPlotTime = @import("std").mem.zeroes(ImPlotTime),
    Spec: ImPlotDateTimeSpec = @import("std").mem.zeroes(ImPlotDateTimeSpec),
    UserFormatter: ImPlotFormatter = @import("std").mem.zeroes(ImPlotFormatter),
    UserFormatterData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const Formatter_Time_Data = struct_Formatter_Time_Data;
pub const ImPlotPoint_getter = ?*const fn (?*anyopaque, c_int, [*c]ImPlotPoint) callconv(.c) ?*anyopaque;
pub extern fn ImPlotPoint_ImPlotPoint_Nil() [*c]ImPlotPoint;
pub extern fn ImPlotPoint_destroy(self: [*c]ImPlotPoint) void;
pub extern fn ImPlotPoint_ImPlotPoint_double(_x: f64, _y: f64) [*c]ImPlotPoint;
pub extern fn ImPlotPoint_ImPlotPoint_Vec2(p: ImVec2) [*c]ImPlotPoint;
pub extern fn ImPlotRange_ImPlotRange_Nil() [*c]ImPlotRange;
pub extern fn ImPlotRange_destroy(self: [*c]ImPlotRange) void;
pub extern fn ImPlotRange_ImPlotRange_double(_min: f64, _max: f64) [*c]ImPlotRange;
pub extern fn ImPlotRange_Contains(self: [*c]ImPlotRange, value: f64) bool;
pub extern fn ImPlotRange_Size(self: [*c]ImPlotRange) f64;
pub extern fn ImPlotRange_Clamp(self: [*c]ImPlotRange, value: f64) f64;
pub extern fn ImPlotRect_ImPlotRect_Nil() [*c]ImPlotRect;
pub extern fn ImPlotRect_destroy(self: [*c]ImPlotRect) void;
pub extern fn ImPlotRect_ImPlotRect_double(x_min: f64, x_max: f64, y_min: f64, y_max: f64) [*c]ImPlotRect;
pub extern fn ImPlotRect_Contains_PlotPoInt(self: [*c]ImPlotRect, p: ImPlotPoint) bool;
pub extern fn ImPlotRect_Contains_double(self: [*c]ImPlotRect, x: f64, y: f64) bool;
pub extern fn ImPlotRect_Size(pOut: [*c]ImPlotPoint, self: [*c]ImPlotRect) void;
pub extern fn ImPlotRect_Clamp_PlotPoInt(pOut: [*c]ImPlotPoint, self: [*c]ImPlotRect, p: ImPlotPoint) void;
pub extern fn ImPlotRect_Clamp_double(pOut: [*c]ImPlotPoint, self: [*c]ImPlotRect, x: f64, y: f64) void;
pub extern fn ImPlotRect_Min(pOut: [*c]ImPlotPoint, self: [*c]ImPlotRect) void;
pub extern fn ImPlotRect_Max(pOut: [*c]ImPlotPoint, self: [*c]ImPlotRect) void;
pub extern fn ImPlotStyle_ImPlotStyle() [*c]ImPlotStyle;
pub extern fn ImPlotStyle_destroy(self: [*c]ImPlotStyle) void;
pub extern fn ImPlotInputMap_ImPlotInputMap() [*c]ImPlotInputMap;
pub extern fn ImPlotInputMap_destroy(self: [*c]ImPlotInputMap) void;
pub extern fn ImPlot_CreateContext() [*c]ImPlotContext;
pub extern fn ImPlot_DestroyContext(ctx: [*c]ImPlotContext) void;
pub extern fn ImPlot_GetCurrentContext() [*c]ImPlotContext;
pub extern fn ImPlot_SetCurrentContext(ctx: [*c]ImPlotContext) void;
pub extern fn ImPlot_SetImGuiContext(ctx: ?*ImGuiContext) void;
pub extern fn ImPlot_BeginPlot(title_id: [*c]const u8, size: ImVec2, flags: ImPlotFlags) bool;
pub extern fn ImPlot_EndPlot() void;
pub extern fn ImPlot_BeginSubplots(title_id: [*c]const u8, rows: c_int, cols: c_int, size: ImVec2, flags: ImPlotSubplotFlags, row_ratios: [*c]f32, col_ratios: [*c]f32) bool;
pub extern fn ImPlot_EndSubplots() void;
pub extern fn ImPlot_SetupAxis(axis: ImAxis, label: [*c]const u8, flags: ImPlotAxisFlags) void;
pub extern fn ImPlot_SetupAxisLimits(axis: ImAxis, v_min: f64, v_max: f64, cond: ImPlotCond) void;
pub extern fn ImPlot_SetupAxisLinks(axis: ImAxis, link_min: [*c]f64, link_max: [*c]f64) void;
pub extern fn ImPlot_SetupAxisFormat_Str(axis: ImAxis, fmt: [*c]const u8) void;
pub extern fn ImPlot_SetupAxisFormat_PlotFormatter(axis: ImAxis, formatter: ImPlotFormatter, data: ?*anyopaque) void;
pub extern fn ImPlot_SetupAxisTicks_doublePtr(axis: ImAxis, values: [*c]const f64, n_ticks: c_int, labels: [*c]const [*c]const u8, keep_default: bool) void;
pub extern fn ImPlot_SetupAxisTicks_double(axis: ImAxis, v_min: f64, v_max: f64, n_ticks: c_int, labels: [*c]const [*c]const u8, keep_default: bool) void;
pub extern fn ImPlot_SetupAxisScale_PlotScale(axis: ImAxis, scale: ImPlotScale) void;
pub extern fn ImPlot_SetupAxisScale_PlotTransform(axis: ImAxis, forward: ImPlotTransform, inverse: ImPlotTransform, data: ?*anyopaque) void;
pub extern fn ImPlot_SetupAxisLimitsConstraints(axis: ImAxis, v_min: f64, v_max: f64) void;
pub extern fn ImPlot_SetupAxisZoomConstraints(axis: ImAxis, z_min: f64, z_max: f64) void;
pub extern fn ImPlot_SetupAxes(x_label: [*c]const u8, y_label: [*c]const u8, x_flags: ImPlotAxisFlags, y_flags: ImPlotAxisFlags) void;
pub extern fn ImPlot_SetupAxesLimits(x_min: f64, x_max: f64, y_min: f64, y_max: f64, cond: ImPlotCond) void;
pub extern fn ImPlot_SetupLegend(location: ImPlotLocation, flags: ImPlotLegendFlags) void;
pub extern fn ImPlot_SetupMouseText(location: ImPlotLocation, flags: ImPlotMouseTextFlags) void;
pub extern fn ImPlot_SetupFinish() void;
pub extern fn ImPlot_SetNextAxisLimits(axis: ImAxis, v_min: f64, v_max: f64, cond: ImPlotCond) void;
pub extern fn ImPlot_SetNextAxisLinks(axis: ImAxis, link_min: [*c]f64, link_max: [*c]f64) void;
pub extern fn ImPlot_SetNextAxisToFit(axis: ImAxis) void;
pub extern fn ImPlot_SetNextAxesLimits(x_min: f64, x_max: f64, y_min: f64, y_max: f64, cond: ImPlotCond) void;
pub extern fn ImPlot_SetNextAxesToFit() void;
pub extern fn ImPlot_PlotLine_FloatPtrInt(label_id: [*c]const u8, values: [*c]const f32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_doublePtrInt(label_id: [*c]const u8, values: [*c]const f64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_S8PtrInt(label_id: [*c]const u8, values: [*c]const ImS8, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_U8PtrInt(label_id: [*c]const u8, values: [*c]const ImU8, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_S16PtrInt(label_id: [*c]const u8, values: [*c]const ImS16, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_U16PtrInt(label_id: [*c]const u8, values: [*c]const ImU16, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_S32PtrInt(label_id: [*c]const u8, values: [*c]const ImS32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_U32PtrInt(label_id: [*c]const u8, values: [*c]const ImU32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_S64PtrInt(label_id: [*c]const u8, values: [*c]const ImS64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_U64PtrInt(label_id: [*c]const u8, values: [*c]const ImU64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_FloatPtrFloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_doublePtrdoublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_S8PtrS8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_U8PtrU8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_S16PtrS16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_U16PtrU16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_S32PtrS32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_U32PtrU32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_S64PtrS64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLine_U64PtrU64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, count: c_int, flags: ImPlotLineFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotLineG(label_id: [*c]const u8, getter: ImPlotPoint_getter, data: ?*anyopaque, count: c_int, flags: ImPlotLineFlags) void;
pub extern fn ImPlot_PlotScatter_FloatPtrInt(label_id: [*c]const u8, values: [*c]const f32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_doublePtrInt(label_id: [*c]const u8, values: [*c]const f64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_S8PtrInt(label_id: [*c]const u8, values: [*c]const ImS8, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_U8PtrInt(label_id: [*c]const u8, values: [*c]const ImU8, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_S16PtrInt(label_id: [*c]const u8, values: [*c]const ImS16, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_U16PtrInt(label_id: [*c]const u8, values: [*c]const ImU16, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_S32PtrInt(label_id: [*c]const u8, values: [*c]const ImS32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_U32PtrInt(label_id: [*c]const u8, values: [*c]const ImU32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_S64PtrInt(label_id: [*c]const u8, values: [*c]const ImS64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_U64PtrInt(label_id: [*c]const u8, values: [*c]const ImU64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_FloatPtrFloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_doublePtrdoublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_S8PtrS8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_U8PtrU8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_S16PtrS16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_U16PtrU16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_S32PtrS32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_U32PtrU32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_S64PtrS64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatter_U64PtrU64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, count: c_int, flags: ImPlotScatterFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotScatterG(label_id: [*c]const u8, getter: ImPlotPoint_getter, data: ?*anyopaque, count: c_int, flags: ImPlotScatterFlags) void;
pub extern fn ImPlot_PlotStairs_FloatPtrInt(label_id: [*c]const u8, values: [*c]const f32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_doublePtrInt(label_id: [*c]const u8, values: [*c]const f64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_S8PtrInt(label_id: [*c]const u8, values: [*c]const ImS8, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_U8PtrInt(label_id: [*c]const u8, values: [*c]const ImU8, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_S16PtrInt(label_id: [*c]const u8, values: [*c]const ImS16, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_U16PtrInt(label_id: [*c]const u8, values: [*c]const ImU16, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_S32PtrInt(label_id: [*c]const u8, values: [*c]const ImS32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_U32PtrInt(label_id: [*c]const u8, values: [*c]const ImU32, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_S64PtrInt(label_id: [*c]const u8, values: [*c]const ImS64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_U64PtrInt(label_id: [*c]const u8, values: [*c]const ImU64, count: c_int, xscale: f64, xstart: f64, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_FloatPtrFloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_doublePtrdoublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_S8PtrS8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_U8PtrU8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_S16PtrS16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_U16PtrU16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_S32PtrS32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_U32PtrU32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_S64PtrS64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairs_U64PtrU64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, count: c_int, flags: ImPlotStairsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStairsG(label_id: [*c]const u8, getter: ImPlotPoint_getter, data: ?*anyopaque, count: c_int, flags: ImPlotStairsFlags) void;
pub extern fn ImPlot_PlotShaded_FloatPtrInt(label_id: [*c]const u8, values: [*c]const f32, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_doublePtrInt(label_id: [*c]const u8, values: [*c]const f64, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S8PtrInt(label_id: [*c]const u8, values: [*c]const ImS8, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U8PtrInt(label_id: [*c]const u8, values: [*c]const ImU8, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S16PtrInt(label_id: [*c]const u8, values: [*c]const ImS16, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U16PtrInt(label_id: [*c]const u8, values: [*c]const ImU16, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S32PtrInt(label_id: [*c]const u8, values: [*c]const ImS32, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U32PtrInt(label_id: [*c]const u8, values: [*c]const ImU32, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S64PtrInt(label_id: [*c]const u8, values: [*c]const ImS64, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U64PtrInt(label_id: [*c]const u8, values: [*c]const ImU64, count: c_int, yref: f64, xscale: f64, xstart: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_FloatPtrFloatPtrInt(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_doublePtrdoublePtrInt(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S8PtrS8PtrInt(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U8PtrU8PtrInt(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S16PtrS16PtrInt(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U16PtrU16PtrInt(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S32PtrS32PtrInt(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U32PtrU32PtrInt(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S64PtrS64PtrInt(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U64PtrU64PtrInt(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, count: c_int, yref: f64, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_FloatPtrFloatPtrFloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys1: [*c]const f32, ys2: [*c]const f32, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_doublePtrdoublePtrdoublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys1: [*c]const f64, ys2: [*c]const f64, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S8PtrS8PtrS8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys1: [*c]const ImS8, ys2: [*c]const ImS8, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U8PtrU8PtrU8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys1: [*c]const ImU8, ys2: [*c]const ImU8, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S16PtrS16PtrS16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys1: [*c]const ImS16, ys2: [*c]const ImS16, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U16PtrU16PtrU16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys1: [*c]const ImU16, ys2: [*c]const ImU16, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S32PtrS32PtrS32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys1: [*c]const ImS32, ys2: [*c]const ImS32, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U32PtrU32PtrU32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys1: [*c]const ImU32, ys2: [*c]const ImU32, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_S64PtrS64PtrS64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys1: [*c]const ImS64, ys2: [*c]const ImS64, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShaded_U64PtrU64PtrU64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys1: [*c]const ImU64, ys2: [*c]const ImU64, count: c_int, flags: ImPlotShadedFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotShadedG(label_id: [*c]const u8, getter1: ImPlotPoint_getter, data1: ?*anyopaque, getter2: ImPlotPoint_getter, data2: ?*anyopaque, count: c_int, flags: ImPlotShadedFlags) void;
pub extern fn ImPlot_PlotBars_FloatPtrInt(label_id: [*c]const u8, values: [*c]const f32, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_doublePtrInt(label_id: [*c]const u8, values: [*c]const f64, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_S8PtrInt(label_id: [*c]const u8, values: [*c]const ImS8, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_U8PtrInt(label_id: [*c]const u8, values: [*c]const ImU8, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_S16PtrInt(label_id: [*c]const u8, values: [*c]const ImS16, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_U16PtrInt(label_id: [*c]const u8, values: [*c]const ImU16, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_S32PtrInt(label_id: [*c]const u8, values: [*c]const ImS32, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_U32PtrInt(label_id: [*c]const u8, values: [*c]const ImU32, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_S64PtrInt(label_id: [*c]const u8, values: [*c]const ImS64, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_U64PtrInt(label_id: [*c]const u8, values: [*c]const ImU64, count: c_int, bar_size: f64, shift: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_FloatPtrFloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_doublePtrdoublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_S8PtrS8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_U8PtrU8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_S16PtrS16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_U16PtrU16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_S32PtrS32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_U32PtrU32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_S64PtrS64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBars_U64PtrU64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, count: c_int, bar_size: f64, flags: ImPlotBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotBarsG(label_id: [*c]const u8, getter: ImPlotPoint_getter, data: ?*anyopaque, count: c_int, bar_size: f64, flags: ImPlotBarsFlags) void;
pub extern fn ImPlot_PlotBarGroups_FloatPtr(label_ids: [*c]const [*c]const u8, values: [*c]const f32, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_doublePtr(label_ids: [*c]const [*c]const u8, values: [*c]const f64, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_S8Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImS8, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_U8Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImU8, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_S16Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImS16, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_U16Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImU16, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_S32Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImS32, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_U32Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImU32, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_S64Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImS64, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotBarGroups_U64Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImU64, item_count: c_int, group_count: c_int, group_size: f64, shift: f64, flags: ImPlotBarGroupsFlags) void;
pub extern fn ImPlot_PlotErrorBars_FloatPtrFloatPtrFloatPtrInt(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, err: [*c]const f32, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_doublePtrdoublePtrdoublePtrInt(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, err: [*c]const f64, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_S8PtrS8PtrS8PtrInt(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, err: [*c]const ImS8, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_U8PtrU8PtrU8PtrInt(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, err: [*c]const ImU8, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_S16PtrS16PtrS16PtrInt(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, err: [*c]const ImS16, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_U16PtrU16PtrU16PtrInt(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, err: [*c]const ImU16, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_S32PtrS32PtrS32PtrInt(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, err: [*c]const ImS32, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_U32PtrU32PtrU32PtrInt(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, err: [*c]const ImU32, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_S64PtrS64PtrS64PtrInt(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, err: [*c]const ImS64, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_U64PtrU64PtrU64PtrInt(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, err: [*c]const ImU64, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_FloatPtrFloatPtrFloatPtrFloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, neg: [*c]const f32, pos: [*c]const f32, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_doublePtrdoublePtrdoublePtrdoublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, neg: [*c]const f64, pos: [*c]const f64, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_S8PtrS8PtrS8PtrS8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, neg: [*c]const ImS8, pos: [*c]const ImS8, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_U8PtrU8PtrU8PtrU8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, neg: [*c]const ImU8, pos: [*c]const ImU8, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_S16PtrS16PtrS16PtrS16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, neg: [*c]const ImS16, pos: [*c]const ImS16, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_U16PtrU16PtrU16PtrU16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, neg: [*c]const ImU16, pos: [*c]const ImU16, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_S32PtrS32PtrS32PtrS32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, neg: [*c]const ImS32, pos: [*c]const ImS32, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_U32PtrU32PtrU32PtrU32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, neg: [*c]const ImU32, pos: [*c]const ImU32, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_S64PtrS64PtrS64PtrS64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, neg: [*c]const ImS64, pos: [*c]const ImS64, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotErrorBars_U64PtrU64PtrU64PtrU64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, neg: [*c]const ImU64, pos: [*c]const ImU64, count: c_int, flags: ImPlotErrorBarsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_FloatPtrInt(label_id: [*c]const u8, values: [*c]const f32, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_doublePtrInt(label_id: [*c]const u8, values: [*c]const f64, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_S8PtrInt(label_id: [*c]const u8, values: [*c]const ImS8, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_U8PtrInt(label_id: [*c]const u8, values: [*c]const ImU8, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_S16PtrInt(label_id: [*c]const u8, values: [*c]const ImS16, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_U16PtrInt(label_id: [*c]const u8, values: [*c]const ImU16, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_S32PtrInt(label_id: [*c]const u8, values: [*c]const ImS32, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_U32PtrInt(label_id: [*c]const u8, values: [*c]const ImU32, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_S64PtrInt(label_id: [*c]const u8, values: [*c]const ImS64, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_U64PtrInt(label_id: [*c]const u8, values: [*c]const ImU64, count: c_int, ref: f64, scale: f64, start: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_FloatPtrFloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_doublePtrdoublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_S8PtrS8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_U8PtrU8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_S16PtrS16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_U16PtrU16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_S32PtrS32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_U32PtrU32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_S64PtrS64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotStems_U64PtrU64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, count: c_int, ref: f64, flags: ImPlotStemsFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_FloatPtr(label_id: [*c]const u8, values: [*c]const f32, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_doublePtr(label_id: [*c]const u8, values: [*c]const f64, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_S8Ptr(label_id: [*c]const u8, values: [*c]const ImS8, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_U8Ptr(label_id: [*c]const u8, values: [*c]const ImU8, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_S16Ptr(label_id: [*c]const u8, values: [*c]const ImS16, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_U16Ptr(label_id: [*c]const u8, values: [*c]const ImU16, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_S32Ptr(label_id: [*c]const u8, values: [*c]const ImS32, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_U32Ptr(label_id: [*c]const u8, values: [*c]const ImU32, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_S64Ptr(label_id: [*c]const u8, values: [*c]const ImS64, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotInfLines_U64Ptr(label_id: [*c]const u8, values: [*c]const ImU64, count: c_int, flags: ImPlotInfLinesFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotPieChart_FloatPtr(label_ids: [*c]const [*c]const u8, values: [*c]const f32, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_doublePtr(label_ids: [*c]const [*c]const u8, values: [*c]const f64, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_S8Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImS8, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_U8Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImU8, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_S16Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImS16, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_U16Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImU16, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_S32Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImS32, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_U32Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImU32, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_S64Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImS64, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotPieChart_U64Ptr(label_ids: [*c]const [*c]const u8, values: [*c]const ImU64, count: c_int, x: f64, y: f64, radius: f64, label_fmt: [*c]const u8, angle0: f64, flags: ImPlotPieChartFlags) void;
pub extern fn ImPlot_PlotHeatmap_FloatPtr(label_id: [*c]const u8, values: [*c]const f32, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_doublePtr(label_id: [*c]const u8, values: [*c]const f64, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_S8Ptr(label_id: [*c]const u8, values: [*c]const ImS8, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_U8Ptr(label_id: [*c]const u8, values: [*c]const ImU8, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_S16Ptr(label_id: [*c]const u8, values: [*c]const ImS16, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_U16Ptr(label_id: [*c]const u8, values: [*c]const ImU16, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_S32Ptr(label_id: [*c]const u8, values: [*c]const ImS32, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_U32Ptr(label_id: [*c]const u8, values: [*c]const ImU32, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_S64Ptr(label_id: [*c]const u8, values: [*c]const ImS64, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHeatmap_U64Ptr(label_id: [*c]const u8, values: [*c]const ImU64, rows: c_int, cols: c_int, scale_min: f64, scale_max: f64, label_fmt: [*c]const u8, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, flags: ImPlotHeatmapFlags) void;
pub extern fn ImPlot_PlotHistogram_FloatPtr(label_id: [*c]const u8, values: [*c]const f32, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_doublePtr(label_id: [*c]const u8, values: [*c]const f64, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_S8Ptr(label_id: [*c]const u8, values: [*c]const ImS8, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_U8Ptr(label_id: [*c]const u8, values: [*c]const ImU8, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_S16Ptr(label_id: [*c]const u8, values: [*c]const ImS16, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_U16Ptr(label_id: [*c]const u8, values: [*c]const ImU16, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_S32Ptr(label_id: [*c]const u8, values: [*c]const ImS32, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_U32Ptr(label_id: [*c]const u8, values: [*c]const ImU32, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_S64Ptr(label_id: [*c]const u8, values: [*c]const ImS64, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram_U64Ptr(label_id: [*c]const u8, values: [*c]const ImU64, count: c_int, bins: c_int, bar_scale: f64, range: ImPlotRange, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_FloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_doublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_S8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_U8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_S16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_U16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_S32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_U32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_S64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotHistogram2D_U64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, count: c_int, x_bins: c_int, y_bins: c_int, range: ImPlotRect, flags: ImPlotHistogramFlags) f64;
pub extern fn ImPlot_PlotDigital_FloatPtr(label_id: [*c]const u8, xs: [*c]const f32, ys: [*c]const f32, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_doublePtr(label_id: [*c]const u8, xs: [*c]const f64, ys: [*c]const f64, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_S8Ptr(label_id: [*c]const u8, xs: [*c]const ImS8, ys: [*c]const ImS8, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_U8Ptr(label_id: [*c]const u8, xs: [*c]const ImU8, ys: [*c]const ImU8, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_S16Ptr(label_id: [*c]const u8, xs: [*c]const ImS16, ys: [*c]const ImS16, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_U16Ptr(label_id: [*c]const u8, xs: [*c]const ImU16, ys: [*c]const ImU16, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_S32Ptr(label_id: [*c]const u8, xs: [*c]const ImS32, ys: [*c]const ImS32, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_U32Ptr(label_id: [*c]const u8, xs: [*c]const ImU32, ys: [*c]const ImU32, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_S64Ptr(label_id: [*c]const u8, xs: [*c]const ImS64, ys: [*c]const ImS64, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigital_U64Ptr(label_id: [*c]const u8, xs: [*c]const ImU64, ys: [*c]const ImU64, count: c_int, flags: ImPlotDigitalFlags, offset: c_int, stride: c_int) void;
pub extern fn ImPlot_PlotDigitalG(label_id: [*c]const u8, getter: ImPlotPoint_getter, data: ?*anyopaque, count: c_int, flags: ImPlotDigitalFlags) void;
pub extern fn ImPlot_PlotImage(label_id: [*c]const u8, user_texture_id: ImTextureID, bounds_min: ImPlotPoint, bounds_max: ImPlotPoint, uv0: ImVec2, uv1: ImVec2, tint_col: ImVec4, flags: ImPlotImageFlags) void;
pub extern fn ImPlot_PlotText(text: [*c]const u8, x: f64, y: f64, pix_offset: ImVec2, flags: ImPlotTextFlags) void;
pub extern fn ImPlot_PlotDummy(label_id: [*c]const u8, flags: ImPlotDummyFlags) void;
pub extern fn ImPlot_DragPoint(id: c_int, x: [*c]f64, y: [*c]f64, col: ImVec4, size: f32, flags: ImPlotDragToolFlags) bool;
pub extern fn ImPlot_DragLineX(id: c_int, x: [*c]f64, col: ImVec4, thickness: f32, flags: ImPlotDragToolFlags) bool;
pub extern fn ImPlot_DragLineY(id: c_int, y: [*c]f64, col: ImVec4, thickness: f32, flags: ImPlotDragToolFlags) bool;
pub extern fn ImPlot_DragRect(id: c_int, x1: [*c]f64, y1: [*c]f64, x2: [*c]f64, y2: [*c]f64, col: ImVec4, flags: ImPlotDragToolFlags) bool;
pub extern fn ImPlot_Annotation_Bool(x: f64, y: f64, col: ImVec4, pix_offset: ImVec2, clamp: bool, round: bool) void;
pub extern fn ImPlot_Annotation_Str(x: f64, y: f64, col: ImVec4, pix_offset: ImVec2, clamp: bool, fmt: [*c]const u8, ...) void;
pub extern fn ImPlot_AnnotationV(x: f64, y: f64, col: ImVec4, pix_offset: ImVec2, clamp: bool, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImPlot_TagX_Bool(x: f64, col: ImVec4, round: bool) void;
pub extern fn ImPlot_TagX_Str(x: f64, col: ImVec4, fmt: [*c]const u8, ...) void;
pub extern fn ImPlot_TagXV(x: f64, col: ImVec4, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImPlot_TagY_Bool(y: f64, col: ImVec4, round: bool) void;
pub extern fn ImPlot_TagY_Str(y: f64, col: ImVec4, fmt: [*c]const u8, ...) void;
pub extern fn ImPlot_TagYV(y: f64, col: ImVec4, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImPlot_SetAxis(axis: ImAxis) void;
pub extern fn ImPlot_SetAxes(x_axis: ImAxis, y_axis: ImAxis) void;
pub extern fn ImPlot_PixelsToPlot_Vec2(pOut: [*c]ImPlotPoint, pix: ImVec2, x_axis: ImAxis, y_axis: ImAxis) void;
pub extern fn ImPlot_PixelsToPlot_Float(pOut: [*c]ImPlotPoint, x: f32, y: f32, x_axis: ImAxis, y_axis: ImAxis) void;
pub extern fn ImPlot_PlotToPixels_PlotPoInt(pOut: [*c]ImVec2, plt: ImPlotPoint, x_axis: ImAxis, y_axis: ImAxis) void;
pub extern fn ImPlot_PlotToPixels_double(pOut: [*c]ImVec2, x: f64, y: f64, x_axis: ImAxis, y_axis: ImAxis) void;
pub extern fn ImPlot_GetPlotPos(pOut: [*c]ImVec2) void;
pub extern fn ImPlot_GetPlotSize(pOut: [*c]ImVec2) void;
pub extern fn ImPlot_GetPlotMousePos(pOut: [*c]ImPlotPoint, x_axis: ImAxis, y_axis: ImAxis) void;
pub extern fn ImPlot_GetPlotLimits(pOut: [*c]ImPlotRect, x_axis: ImAxis, y_axis: ImAxis) void;
pub extern fn ImPlot_IsPlotHovered() bool;
pub extern fn ImPlot_IsAxisHovered(axis: ImAxis) bool;
pub extern fn ImPlot_IsSubplotsHovered() bool;
pub extern fn ImPlot_IsPlotSelected() bool;
pub extern fn ImPlot_GetPlotSelection(pOut: [*c]ImPlotRect, x_axis: ImAxis, y_axis: ImAxis) void;
pub extern fn ImPlot_CancelPlotSelection() void;
pub extern fn ImPlot_HideNextItem(hidden: bool, cond: ImPlotCond) void;
pub extern fn ImPlot_BeginAlignedPlots(group_id: [*c]const u8, vertical: bool) bool;
pub extern fn ImPlot_EndAlignedPlots() void;
pub extern fn ImPlot_BeginLegendPopup(label_id: [*c]const u8, mouse_button: ImGuiMouseButton) bool;
pub extern fn ImPlot_EndLegendPopup() void;
pub extern fn ImPlot_IsLegendEntryHovered(label_id: [*c]const u8) bool;
pub extern fn ImPlot_BeginDragDropTargetPlot() bool;
pub extern fn ImPlot_BeginDragDropTargetAxis(axis: ImAxis) bool;
pub extern fn ImPlot_BeginDragDropTargetLegend() bool;
pub extern fn ImPlot_EndDragDropTarget() void;
pub extern fn ImPlot_BeginDragDropSourcePlot(flags: ImGuiDragDropFlags) bool;
pub extern fn ImPlot_BeginDragDropSourceAxis(axis: ImAxis, flags: ImGuiDragDropFlags) bool;
pub extern fn ImPlot_BeginDragDropSourceItem(label_id: [*c]const u8, flags: ImGuiDragDropFlags) bool;
pub extern fn ImPlot_EndDragDropSource() void;
pub extern fn ImPlot_GetStyle() [*c]ImPlotStyle;
pub extern fn ImPlot_StyleColorsAuto(dst: [*c]ImPlotStyle) void;
pub extern fn ImPlot_StyleColorsClassic(dst: [*c]ImPlotStyle) void;
pub extern fn ImPlot_StyleColorsDark(dst: [*c]ImPlotStyle) void;
pub extern fn ImPlot_StyleColorsLight(dst: [*c]ImPlotStyle) void;
pub extern fn ImPlot_PushStyleColor_U32(idx: ImPlotCol, col: ImU32) void;
pub extern fn ImPlot_PushStyleColor_Vec4(idx: ImPlotCol, col: ImVec4) void;
pub extern fn ImPlot_PopStyleColor(count: c_int) void;
pub extern fn ImPlot_PushStyleVar_Float(idx: ImPlotStyleVar, val: f32) void;
pub extern fn ImPlot_PushStyleVar_Int(idx: ImPlotStyleVar, val: c_int) void;
pub extern fn ImPlot_PushStyleVar_Vec2(idx: ImPlotStyleVar, val: ImVec2) void;
pub extern fn ImPlot_PopStyleVar(count: c_int) void;
pub extern fn ImPlot_SetNextLineStyle(col: ImVec4, weight: f32) void;
pub extern fn ImPlot_SetNextFillStyle(col: ImVec4, alpha_mod: f32) void;
pub extern fn ImPlot_SetNextMarkerStyle(marker: ImPlotMarker, size: f32, fill: ImVec4, weight: f32, outline: ImVec4) void;
pub extern fn ImPlot_SetNextErrorBarStyle(col: ImVec4, size: f32, weight: f32) void;
pub extern fn ImPlot_GetLastItemColor(pOut: [*c]ImVec4) void;
pub extern fn ImPlot_GetStyleColorName(idx: ImPlotCol) [*c]const u8;
pub extern fn ImPlot_GetMarkerName(idx: ImPlotMarker) [*c]const u8;
pub extern fn ImPlot_AddColormap_Vec4Ptr(name: [*c]const u8, cols: [*c]const ImVec4, size: c_int, qual: bool) ImPlotColormap;
pub extern fn ImPlot_AddColormap_U32Ptr(name: [*c]const u8, cols: [*c]const ImU32, size: c_int, qual: bool) ImPlotColormap;
pub extern fn ImPlot_GetColormapCount() c_int;
pub extern fn ImPlot_GetColormapName(cmap: ImPlotColormap) [*c]const u8;
pub extern fn ImPlot_GetColormapIndex(name: [*c]const u8) ImPlotColormap;
pub extern fn ImPlot_PushColormap_PlotColormap(cmap: ImPlotColormap) void;
pub extern fn ImPlot_PushColormap_Str(name: [*c]const u8) void;
pub extern fn ImPlot_PopColormap(count: c_int) void;
pub extern fn ImPlot_NextColormapColor(pOut: [*c]ImVec4) void;
pub extern fn ImPlot_GetColormapSize(cmap: ImPlotColormap) c_int;
pub extern fn ImPlot_GetColormapColor(pOut: [*c]ImVec4, idx: c_int, cmap: ImPlotColormap) void;
pub extern fn ImPlot_SampleColormap(pOut: [*c]ImVec4, t: f32, cmap: ImPlotColormap) void;
pub extern fn ImPlot_ColormapScale(label: [*c]const u8, scale_min: f64, scale_max: f64, size: ImVec2, format: [*c]const u8, flags: ImPlotColormapScaleFlags, cmap: ImPlotColormap) void;
pub extern fn ImPlot_ColormapSlider(label: [*c]const u8, t: [*c]f32, out: [*c]ImVec4, format: [*c]const u8, cmap: ImPlotColormap) bool;
pub extern fn ImPlot_ColormapButton(label: [*c]const u8, size: ImVec2, cmap: ImPlotColormap) bool;
pub extern fn ImPlot_BustColorCache(plot_title_id: [*c]const u8) void;
pub extern fn ImPlot_GetInputMap() [*c]ImPlotInputMap;
pub extern fn ImPlot_MapInputDefault(dst: [*c]ImPlotInputMap) void;
pub extern fn ImPlot_MapInputReverse(dst: [*c]ImPlotInputMap) void;
pub extern fn ImPlot_ItemIcon_Vec4(col: ImVec4) void;
pub extern fn ImPlot_ItemIcon_U32(col: ImU32) void;
pub extern fn ImPlot_ColormapIcon(cmap: ImPlotColormap) void;
pub extern fn ImPlot_GetPlotDrawList() [*c]ImDrawList;
pub extern fn ImPlot_PushPlotClipRect(expand: f32) void;
pub extern fn ImPlot_PopPlotClipRect() void;
pub extern fn ImPlot_ShowStyleSelector(label: [*c]const u8) bool;
pub extern fn ImPlot_ShowColormapSelector(label: [*c]const u8) bool;
pub extern fn ImPlot_ShowInputMapSelector(label: [*c]const u8) bool;
pub extern fn ImPlot_ShowStyleEditor(ref: [*c]ImPlotStyle) void;
pub extern fn ImPlot_ShowUserGuide() void;
pub extern fn ImPlot_ShowMetricsWindow(p_popen: [*c]bool) void;
pub extern fn ImPlot_ShowDemoWindow(p_open: [*c]bool) void;
pub extern fn ImPlot_ImLog10_Float(x: f32) f32;
pub extern fn ImPlot_ImLog10_double(x: f64) f64;
pub extern fn ImPlot_ImSinh_Float(x: f32) f32;
pub extern fn ImPlot_ImSinh_double(x: f64) f64;
pub extern fn ImPlot_ImAsinh_Float(x: f32) f32;
pub extern fn ImPlot_ImAsinh_double(x: f64) f64;
pub extern fn ImPlot_ImRemap_Float(x: f32, x0: f32, x1: f32, y0: f32, y1: f32) f32;
pub extern fn ImPlot_ImRemap_double(x: f64, x0: f64, x1: f64, y0: f64, y1: f64) f64;
pub extern fn ImPlot_ImRemap_S8(x: ImS8, x0: ImS8, x1: ImS8, y0: ImS8, y1: ImS8) ImS8;
pub extern fn ImPlot_ImRemap_U8(x: ImU8, x0: ImU8, x1: ImU8, y0: ImU8, y1: ImU8) ImU8;
pub extern fn ImPlot_ImRemap_S16(x: ImS16, x0: ImS16, x1: ImS16, y0: ImS16, y1: ImS16) ImS16;
pub extern fn ImPlot_ImRemap_U16(x: ImU16, x0: ImU16, x1: ImU16, y0: ImU16, y1: ImU16) ImU16;
pub extern fn ImPlot_ImRemap_S32(x: ImS32, x0: ImS32, x1: ImS32, y0: ImS32, y1: ImS32) ImS32;
pub extern fn ImPlot_ImRemap_U32(x: ImU32, x0: ImU32, x1: ImU32, y0: ImU32, y1: ImU32) ImU32;
pub extern fn ImPlot_ImRemap_S64(x: ImS64, x0: ImS64, x1: ImS64, y0: ImS64, y1: ImS64) ImS64;
pub extern fn ImPlot_ImRemap_U64(x: ImU64, x0: ImU64, x1: ImU64, y0: ImU64, y1: ImU64) ImU64;
pub extern fn ImPlot_ImRemap01_Float(x: f32, x0: f32, x1: f32) f32;
pub extern fn ImPlot_ImRemap01_double(x: f64, x0: f64, x1: f64) f64;
pub extern fn ImPlot_ImRemap01_S8(x: ImS8, x0: ImS8, x1: ImS8) ImS8;
pub extern fn ImPlot_ImRemap01_U8(x: ImU8, x0: ImU8, x1: ImU8) ImU8;
pub extern fn ImPlot_ImRemap01_S16(x: ImS16, x0: ImS16, x1: ImS16) ImS16;
pub extern fn ImPlot_ImRemap01_U16(x: ImU16, x0: ImU16, x1: ImU16) ImU16;
pub extern fn ImPlot_ImRemap01_S32(x: ImS32, x0: ImS32, x1: ImS32) ImS32;
pub extern fn ImPlot_ImRemap01_U32(x: ImU32, x0: ImU32, x1: ImU32) ImU32;
pub extern fn ImPlot_ImRemap01_S64(x: ImS64, x0: ImS64, x1: ImS64) ImS64;
pub extern fn ImPlot_ImRemap01_U64(x: ImU64, x0: ImU64, x1: ImU64) ImU64;
pub extern fn ImPlot_ImPosMod(l: c_int, r: c_int) c_int;
pub extern fn ImPlot_ImNan(val: f64) bool;
pub extern fn ImPlot_ImNanOrInf(val: f64) bool;
pub extern fn ImPlot_ImConstrainNan(val: f64) f64;
pub extern fn ImPlot_ImConstrainInf(val: f64) f64;
pub extern fn ImPlot_ImConstrainLog(val: f64) f64;
pub extern fn ImPlot_ImConstrainTime(val: f64) f64;
pub extern fn ImPlot_ImAlmostEqual(v1: f64, v2: f64, ulp: c_int) bool;
pub extern fn ImPlot_ImMinArray_FloatPtr(values: [*c]const f32, count: c_int) f32;
pub extern fn ImPlot_ImMinArray_doublePtr(values: [*c]const f64, count: c_int) f64;
pub extern fn ImPlot_ImMinArray_S8Ptr(values: [*c]const ImS8, count: c_int) ImS8;
pub extern fn ImPlot_ImMinArray_U8Ptr(values: [*c]const ImU8, count: c_int) ImU8;
pub extern fn ImPlot_ImMinArray_S16Ptr(values: [*c]const ImS16, count: c_int) ImS16;
pub extern fn ImPlot_ImMinArray_U16Ptr(values: [*c]const ImU16, count: c_int) ImU16;
pub extern fn ImPlot_ImMinArray_S32Ptr(values: [*c]const ImS32, count: c_int) ImS32;
pub extern fn ImPlot_ImMinArray_U32Ptr(values: [*c]const ImU32, count: c_int) ImU32;
pub extern fn ImPlot_ImMinArray_S64Ptr(values: [*c]const ImS64, count: c_int) ImS64;
pub extern fn ImPlot_ImMinArray_U64Ptr(values: [*c]const ImU64, count: c_int) ImU64;
pub extern fn ImPlot_ImMaxArray_FloatPtr(values: [*c]const f32, count: c_int) f32;
pub extern fn ImPlot_ImMaxArray_doublePtr(values: [*c]const f64, count: c_int) f64;
pub extern fn ImPlot_ImMaxArray_S8Ptr(values: [*c]const ImS8, count: c_int) ImS8;
pub extern fn ImPlot_ImMaxArray_U8Ptr(values: [*c]const ImU8, count: c_int) ImU8;
pub extern fn ImPlot_ImMaxArray_S16Ptr(values: [*c]const ImS16, count: c_int) ImS16;
pub extern fn ImPlot_ImMaxArray_U16Ptr(values: [*c]const ImU16, count: c_int) ImU16;
pub extern fn ImPlot_ImMaxArray_S32Ptr(values: [*c]const ImS32, count: c_int) ImS32;
pub extern fn ImPlot_ImMaxArray_U32Ptr(values: [*c]const ImU32, count: c_int) ImU32;
pub extern fn ImPlot_ImMaxArray_S64Ptr(values: [*c]const ImS64, count: c_int) ImS64;
pub extern fn ImPlot_ImMaxArray_U64Ptr(values: [*c]const ImU64, count: c_int) ImU64;
pub extern fn ImPlot_ImMinMaxArray_FloatPtr(values: [*c]const f32, count: c_int, min_out: [*c]f32, max_out: [*c]f32) void;
pub extern fn ImPlot_ImMinMaxArray_doublePtr(values: [*c]const f64, count: c_int, min_out: [*c]f64, max_out: [*c]f64) void;
pub extern fn ImPlot_ImMinMaxArray_S8Ptr(values: [*c]const ImS8, count: c_int, min_out: [*c]ImS8, max_out: [*c]ImS8) void;
pub extern fn ImPlot_ImMinMaxArray_U8Ptr(values: [*c]const ImU8, count: c_int, min_out: [*c]ImU8, max_out: [*c]ImU8) void;
pub extern fn ImPlot_ImMinMaxArray_S16Ptr(values: [*c]const ImS16, count: c_int, min_out: [*c]ImS16, max_out: [*c]ImS16) void;
pub extern fn ImPlot_ImMinMaxArray_U16Ptr(values: [*c]const ImU16, count: c_int, min_out: [*c]ImU16, max_out: [*c]ImU16) void;
pub extern fn ImPlot_ImMinMaxArray_S32Ptr(values: [*c]const ImS32, count: c_int, min_out: [*c]ImS32, max_out: [*c]ImS32) void;
pub extern fn ImPlot_ImMinMaxArray_U32Ptr(values: [*c]const ImU32, count: c_int, min_out: [*c]ImU32, max_out: [*c]ImU32) void;
pub extern fn ImPlot_ImMinMaxArray_S64Ptr(values: [*c]const ImS64, count: c_int, min_out: [*c]ImS64, max_out: [*c]ImS64) void;
pub extern fn ImPlot_ImMinMaxArray_U64Ptr(values: [*c]const ImU64, count: c_int, min_out: [*c]ImU64, max_out: [*c]ImU64) void;
pub extern fn ImPlot_ImSum_FloatPtr(values: [*c]const f32, count: c_int) f32;
pub extern fn ImPlot_ImSum_doublePtr(values: [*c]const f64, count: c_int) f64;
pub extern fn ImPlot_ImSum_S8Ptr(values: [*c]const ImS8, count: c_int) ImS8;
pub extern fn ImPlot_ImSum_U8Ptr(values: [*c]const ImU8, count: c_int) ImU8;
pub extern fn ImPlot_ImSum_S16Ptr(values: [*c]const ImS16, count: c_int) ImS16;
pub extern fn ImPlot_ImSum_U16Ptr(values: [*c]const ImU16, count: c_int) ImU16;
pub extern fn ImPlot_ImSum_S32Ptr(values: [*c]const ImS32, count: c_int) ImS32;
pub extern fn ImPlot_ImSum_U32Ptr(values: [*c]const ImU32, count: c_int) ImU32;
pub extern fn ImPlot_ImSum_S64Ptr(values: [*c]const ImS64, count: c_int) ImS64;
pub extern fn ImPlot_ImSum_U64Ptr(values: [*c]const ImU64, count: c_int) ImU64;
pub extern fn ImPlot_ImMean_FloatPtr(values: [*c]const f32, count: c_int) f64;
pub extern fn ImPlot_ImMean_doublePtr(values: [*c]const f64, count: c_int) f64;
pub extern fn ImPlot_ImMean_S8Ptr(values: [*c]const ImS8, count: c_int) f64;
pub extern fn ImPlot_ImMean_U8Ptr(values: [*c]const ImU8, count: c_int) f64;
pub extern fn ImPlot_ImMean_S16Ptr(values: [*c]const ImS16, count: c_int) f64;
pub extern fn ImPlot_ImMean_U16Ptr(values: [*c]const ImU16, count: c_int) f64;
pub extern fn ImPlot_ImMean_S32Ptr(values: [*c]const ImS32, count: c_int) f64;
pub extern fn ImPlot_ImMean_U32Ptr(values: [*c]const ImU32, count: c_int) f64;
pub extern fn ImPlot_ImMean_S64Ptr(values: [*c]const ImS64, count: c_int) f64;
pub extern fn ImPlot_ImMean_U64Ptr(values: [*c]const ImU64, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_FloatPtr(values: [*c]const f32, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_doublePtr(values: [*c]const f64, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_S8Ptr(values: [*c]const ImS8, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_U8Ptr(values: [*c]const ImU8, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_S16Ptr(values: [*c]const ImS16, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_U16Ptr(values: [*c]const ImU16, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_S32Ptr(values: [*c]const ImS32, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_U32Ptr(values: [*c]const ImU32, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_S64Ptr(values: [*c]const ImS64, count: c_int) f64;
pub extern fn ImPlot_ImStdDev_U64Ptr(values: [*c]const ImU64, count: c_int) f64;
pub extern fn ImPlot_ImMixU32(a: ImU32, b: ImU32, s: ImU32) ImU32;
pub extern fn ImPlot_ImLerpU32(colors: [*c]const ImU32, size: c_int, t: f32) ImU32;
pub extern fn ImPlot_ImAlphaU32(col: ImU32, alpha: f32) ImU32;
pub extern fn ImPlot_ImOverlaps_Float(min_a: f32, max_a: f32, min_b: f32, max_b: f32) bool;
pub extern fn ImPlot_ImOverlaps_double(min_a: f64, max_a: f64, min_b: f64, max_b: f64) bool;
pub extern fn ImPlot_ImOverlaps_S8(min_a: ImS8, max_a: ImS8, min_b: ImS8, max_b: ImS8) bool;
pub extern fn ImPlot_ImOverlaps_U8(min_a: ImU8, max_a: ImU8, min_b: ImU8, max_b: ImU8) bool;
pub extern fn ImPlot_ImOverlaps_S16(min_a: ImS16, max_a: ImS16, min_b: ImS16, max_b: ImS16) bool;
pub extern fn ImPlot_ImOverlaps_U16(min_a: ImU16, max_a: ImU16, min_b: ImU16, max_b: ImU16) bool;
pub extern fn ImPlot_ImOverlaps_S32(min_a: ImS32, max_a: ImS32, min_b: ImS32, max_b: ImS32) bool;
pub extern fn ImPlot_ImOverlaps_U32(min_a: ImU32, max_a: ImU32, min_b: ImU32, max_b: ImU32) bool;
pub extern fn ImPlot_ImOverlaps_S64(min_a: ImS64, max_a: ImS64, min_b: ImS64, max_b: ImS64) bool;
pub extern fn ImPlot_ImOverlaps_U64(min_a: ImU64, max_a: ImU64, min_b: ImU64, max_b: ImU64) bool;
pub extern fn ImPlotDateTimeSpec_ImPlotDateTimeSpec_Nil() [*c]ImPlotDateTimeSpec;
pub extern fn ImPlotDateTimeSpec_destroy(self: [*c]ImPlotDateTimeSpec) void;
pub extern fn ImPlotDateTimeSpec_ImPlotDateTimeSpec_PlotDateFmt(date_fmt: ImPlotDateFmt, time_fmt: ImPlotTimeFmt, use_24_hr_clk: bool, use_iso_8601: bool) [*c]ImPlotDateTimeSpec;
pub extern fn ImPlotTime_ImPlotTime_Nil() [*c]ImPlotTime;
pub extern fn ImPlotTime_destroy(self: [*c]ImPlotTime) void;
pub extern fn ImPlotTime_ImPlotTime_time_t(s: time_t, us: c_int) [*c]ImPlotTime;
pub extern fn ImPlotTime_RollOver(self: [*c]ImPlotTime) void;
pub extern fn ImPlotTime_ToDouble(self: [*c]ImPlotTime) f64;
pub extern fn ImPlotTime_FromDouble(pOut: [*c]ImPlotTime, t: f64) void;
pub extern fn ImPlotColormapData_ImPlotColormapData() [*c]ImPlotColormapData;
pub extern fn ImPlotColormapData_destroy(self: [*c]ImPlotColormapData) void;
pub extern fn ImPlotColormapData_Append(self: [*c]ImPlotColormapData, name: [*c]const u8, keys: [*c]const ImU32, count: c_int, qual: bool) c_int;
pub extern fn ImPlotColormapData__AppendTable(self: [*c]ImPlotColormapData, cmap: ImPlotColormap) void;
pub extern fn ImPlotColormapData_RebuildTables(self: [*c]ImPlotColormapData) void;
pub extern fn ImPlotColormapData_IsQual(self: [*c]ImPlotColormapData, cmap: ImPlotColormap) bool;
pub extern fn ImPlotColormapData_GetName(self: [*c]ImPlotColormapData, cmap: ImPlotColormap) [*c]const u8;
pub extern fn ImPlotColormapData_GetIndex(self: [*c]ImPlotColormapData, name: [*c]const u8) ImPlotColormap;
pub extern fn ImPlotColormapData_GetKeys(self: [*c]ImPlotColormapData, cmap: ImPlotColormap) [*c]const ImU32;
pub extern fn ImPlotColormapData_GetKeyCount(self: [*c]ImPlotColormapData, cmap: ImPlotColormap) c_int;
pub extern fn ImPlotColormapData_GetKeyColor(self: [*c]ImPlotColormapData, cmap: ImPlotColormap, idx: c_int) ImU32;
pub extern fn ImPlotColormapData_SetKeyColor(self: [*c]ImPlotColormapData, cmap: ImPlotColormap, idx: c_int, value: ImU32) void;
pub extern fn ImPlotColormapData_GetTable(self: [*c]ImPlotColormapData, cmap: ImPlotColormap) [*c]const ImU32;
pub extern fn ImPlotColormapData_GetTableSize(self: [*c]ImPlotColormapData, cmap: ImPlotColormap) c_int;
pub extern fn ImPlotColormapData_GetTableColor(self: [*c]ImPlotColormapData, cmap: ImPlotColormap, idx: c_int) ImU32;
pub extern fn ImPlotColormapData_LerpTable(self: [*c]ImPlotColormapData, cmap: ImPlotColormap, t: f32) ImU32;
pub extern fn ImPlotPointError_ImPlotPointError(x: f64, y: f64, neg: f64, pos: f64) [*c]ImPlotPointError;
pub extern fn ImPlotPointError_destroy(self: [*c]ImPlotPointError) void;
pub extern fn ImPlotAnnotation_ImPlotAnnotation() [*c]ImPlotAnnotation;
pub extern fn ImPlotAnnotation_destroy(self: [*c]ImPlotAnnotation) void;
pub extern fn ImPlotAnnotationCollection_ImPlotAnnotationCollection() [*c]ImPlotAnnotationCollection;
pub extern fn ImPlotAnnotationCollection_destroy(self: [*c]ImPlotAnnotationCollection) void;
pub extern fn ImPlotAnnotationCollection_AppendV(self: [*c]ImPlotAnnotationCollection, pos: ImVec2, off: ImVec2, bg: ImU32, fg: ImU32, clamp: bool, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImPlotAnnotationCollection_Append(self: [*c]ImPlotAnnotationCollection, pos: ImVec2, off: ImVec2, bg: ImU32, fg: ImU32, clamp: bool, fmt: [*c]const u8, ...) void;
pub extern fn ImPlotAnnotationCollection_GetText(self: [*c]ImPlotAnnotationCollection, idx: c_int) [*c]const u8;
pub extern fn ImPlotAnnotationCollection_Reset(self: [*c]ImPlotAnnotationCollection) void;
pub extern fn ImPlotTagCollection_ImPlotTagCollection() [*c]ImPlotTagCollection;
pub extern fn ImPlotTagCollection_destroy(self: [*c]ImPlotTagCollection) void;
pub extern fn ImPlotTagCollection_AppendV(self: [*c]ImPlotTagCollection, axis: ImAxis, value: f64, bg: ImU32, fg: ImU32, fmt: [*c]const u8, args: va_list) void;
pub extern fn ImPlotTagCollection_Append(self: [*c]ImPlotTagCollection, axis: ImAxis, value: f64, bg: ImU32, fg: ImU32, fmt: [*c]const u8, ...) void;
pub extern fn ImPlotTagCollection_GetText(self: [*c]ImPlotTagCollection, idx: c_int) [*c]const u8;
pub extern fn ImPlotTagCollection_Reset(self: [*c]ImPlotTagCollection) void;
pub extern fn ImPlotTick_ImPlotTick(value: f64, major: bool, level: c_int, show_label: bool) [*c]ImPlotTick;
pub extern fn ImPlotTick_destroy(self: [*c]ImPlotTick) void;
pub extern fn ImPlotTicker_ImPlotTicker() [*c]ImPlotTicker;
pub extern fn ImPlotTicker_destroy(self: [*c]ImPlotTicker) void;
pub extern fn ImPlotTicker_AddTick_doubleStr(self: [*c]ImPlotTicker, value: f64, major: bool, level: c_int, show_label: bool, label: [*c]const u8) [*c]ImPlotTick;
pub extern fn ImPlotTicker_AddTick_doublePlotFormatter(self: [*c]ImPlotTicker, value: f64, major: bool, level: c_int, show_label: bool, formatter: ImPlotFormatter, data: ?*anyopaque) [*c]ImPlotTick;
pub extern fn ImPlotTicker_AddTick_PlotTick(self: [*c]ImPlotTicker, tick: ImPlotTick) [*c]ImPlotTick;
pub extern fn ImPlotTicker_GetText_Int(self: [*c]ImPlotTicker, idx: c_int) [*c]const u8;
pub extern fn ImPlotTicker_GetText_PlotTick(self: [*c]ImPlotTicker, tick: ImPlotTick) [*c]const u8;
pub extern fn ImPlotTicker_OverrideSizeLate(self: [*c]ImPlotTicker, size: ImVec2) void;
pub extern fn ImPlotTicker_Reset(self: [*c]ImPlotTicker) void;
pub extern fn ImPlotTicker_TickCount(self: [*c]ImPlotTicker) c_int;
pub extern fn ImPlotAxis_ImPlotAxis() [*c]ImPlotAxis;
pub extern fn ImPlotAxis_destroy(self: [*c]ImPlotAxis) void;
pub extern fn ImPlotAxis_Reset(self: [*c]ImPlotAxis) void;
pub extern fn ImPlotAxis_SetMin(self: [*c]ImPlotAxis, _min: f64, force: bool) bool;
pub extern fn ImPlotAxis_SetMax(self: [*c]ImPlotAxis, _max: f64, force: bool) bool;
pub extern fn ImPlotAxis_SetRange_double(self: [*c]ImPlotAxis, v1: f64, v2: f64) void;
pub extern fn ImPlotAxis_SetRange_PlotRange(self: [*c]ImPlotAxis, range: ImPlotRange) void;
pub extern fn ImPlotAxis_SetAspect(self: [*c]ImPlotAxis, unit_per_pix: f64) void;
pub extern fn ImPlotAxis_PixelSize(self: [*c]ImPlotAxis) f32;
pub extern fn ImPlotAxis_GetAspect(self: [*c]ImPlotAxis) f64;
pub extern fn ImPlotAxis_Constrain(self: [*c]ImPlotAxis) void;
pub extern fn ImPlotAxis_UpdateTransformCache(self: [*c]ImPlotAxis) void;
pub extern fn ImPlotAxis_PlotToPixels(self: [*c]ImPlotAxis, plt: f64) f32;
pub extern fn ImPlotAxis_PixelsToPlot(self: [*c]ImPlotAxis, pix: f32) f64;
pub extern fn ImPlotAxis_ExtendFit(self: [*c]ImPlotAxis, v: f64) void;
pub extern fn ImPlotAxis_ExtendFitWith(self: [*c]ImPlotAxis, alt: [*c]ImPlotAxis, v: f64, v_alt: f64) void;
pub extern fn ImPlotAxis_ApplyFit(self: [*c]ImPlotAxis, padding: f32) void;
pub extern fn ImPlotAxis_HasLabel(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_HasGridLines(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_HasTickLabels(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_HasTickMarks(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_WillRender(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsOpposite(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsInverted(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsForeground(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsAutoFitting(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_CanInitFit(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsRangeLocked(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsLockedMin(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsLockedMax(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsLocked(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsInputLockedMin(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsInputLockedMax(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsInputLocked(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_HasMenus(self: [*c]ImPlotAxis) bool;
pub extern fn ImPlotAxis_IsPanLocked(self: [*c]ImPlotAxis, increasing: bool) bool;
pub extern fn ImPlotAxis_PushLinks(self: [*c]ImPlotAxis) void;
pub extern fn ImPlotAxis_PullLinks(self: [*c]ImPlotAxis) void;
pub extern fn ImPlotAlignmentData_ImPlotAlignmentData() [*c]ImPlotAlignmentData;
pub extern fn ImPlotAlignmentData_destroy(self: [*c]ImPlotAlignmentData) void;
pub extern fn ImPlotAlignmentData_Begin(self: [*c]ImPlotAlignmentData) void;
pub extern fn ImPlotAlignmentData_Update(self: [*c]ImPlotAlignmentData, pad_a: [*c]f32, pad_b: [*c]f32, delta_a: [*c]f32, delta_b: [*c]f32) void;
pub extern fn ImPlotAlignmentData_End(self: [*c]ImPlotAlignmentData) void;
pub extern fn ImPlotAlignmentData_Reset(self: [*c]ImPlotAlignmentData) void;
pub extern fn ImPlotItem_ImPlotItem() [*c]ImPlotItem;
pub extern fn ImPlotItem_destroy(self: [*c]ImPlotItem) void;
pub extern fn ImPlotLegend_ImPlotLegend() [*c]ImPlotLegend;
pub extern fn ImPlotLegend_destroy(self: [*c]ImPlotLegend) void;
pub extern fn ImPlotLegend_Reset(self: [*c]ImPlotLegend) void;
pub extern fn ImPlotItemGroup_ImPlotItemGroup() [*c]ImPlotItemGroup;
pub extern fn ImPlotItemGroup_destroy(self: [*c]ImPlotItemGroup) void;
pub extern fn ImPlotItemGroup_GetItemCount(self: [*c]ImPlotItemGroup) c_int;
pub extern fn ImPlotItemGroup_GetItemID(self: [*c]ImPlotItemGroup, label_id: [*c]const u8) ImGuiID;
pub extern fn ImPlotItemGroup_GetItem_ID(self: [*c]ImPlotItemGroup, id: ImGuiID) [*c]ImPlotItem;
pub extern fn ImPlotItemGroup_GetItem_Str(self: [*c]ImPlotItemGroup, label_id: [*c]const u8) [*c]ImPlotItem;
pub extern fn ImPlotItemGroup_GetOrAddItem(self: [*c]ImPlotItemGroup, id: ImGuiID) [*c]ImPlotItem;
pub extern fn ImPlotItemGroup_GetItemByIndex(self: [*c]ImPlotItemGroup, i: c_int) [*c]ImPlotItem;
pub extern fn ImPlotItemGroup_GetItemIndex(self: [*c]ImPlotItemGroup, item: [*c]ImPlotItem) c_int;
pub extern fn ImPlotItemGroup_GetLegendCount(self: [*c]ImPlotItemGroup) c_int;
pub extern fn ImPlotItemGroup_GetLegendItem(self: [*c]ImPlotItemGroup, i: c_int) [*c]ImPlotItem;
pub extern fn ImPlotItemGroup_GetLegendLabel(self: [*c]ImPlotItemGroup, i: c_int) [*c]const u8;
pub extern fn ImPlotItemGroup_Reset(self: [*c]ImPlotItemGroup) void;
pub extern fn ImPlotPlot_ImPlotPlot() [*c]ImPlotPlot;
pub extern fn ImPlotPlot_destroy(self: [*c]ImPlotPlot) void;
pub extern fn ImPlotPlot_IsInputLocked(self: [*c]ImPlotPlot) bool;
pub extern fn ImPlotPlot_ClearTextBuffer(self: [*c]ImPlotPlot) void;
pub extern fn ImPlotPlot_SetTitle(self: [*c]ImPlotPlot, title: [*c]const u8) void;
pub extern fn ImPlotPlot_HasTitle(self: [*c]ImPlotPlot) bool;
pub extern fn ImPlotPlot_GetTitle(self: [*c]ImPlotPlot) [*c]const u8;
pub extern fn ImPlotPlot_XAxis_Nil(self: [*c]ImPlotPlot, i: c_int) [*c]ImPlotAxis;
pub extern fn ImPlotPlot_XAxis__const(self: [*c]ImPlotPlot, i: c_int) [*c]const ImPlotAxis;
pub extern fn ImPlotPlot_YAxis_Nil(self: [*c]ImPlotPlot, i: c_int) [*c]ImPlotAxis;
pub extern fn ImPlotPlot_YAxis__const(self: [*c]ImPlotPlot, i: c_int) [*c]const ImPlotAxis;
pub extern fn ImPlotPlot_EnabledAxesX(self: [*c]ImPlotPlot) c_int;
pub extern fn ImPlotPlot_EnabledAxesY(self: [*c]ImPlotPlot) c_int;
pub extern fn ImPlotPlot_SetAxisLabel(self: [*c]ImPlotPlot, axis: [*c]ImPlotAxis, label: [*c]const u8) void;
pub extern fn ImPlotPlot_GetAxisLabel(self: [*c]ImPlotPlot, axis: ImPlotAxis) [*c]const u8;
pub extern fn ImPlotSubplot_ImPlotSubplot() [*c]ImPlotSubplot;
pub extern fn ImPlotSubplot_destroy(self: [*c]ImPlotSubplot) void;
pub extern fn ImPlotNextPlotData_ImPlotNextPlotData() [*c]ImPlotNextPlotData;
pub extern fn ImPlotNextPlotData_destroy(self: [*c]ImPlotNextPlotData) void;
pub extern fn ImPlotNextPlotData_Reset(self: [*c]ImPlotNextPlotData) void;
pub extern fn ImPlotNextItemData_ImPlotNextItemData() [*c]ImPlotNextItemData;
pub extern fn ImPlotNextItemData_destroy(self: [*c]ImPlotNextItemData) void;
pub extern fn ImPlotNextItemData_Reset(self: [*c]ImPlotNextItemData) void;
pub extern fn ImPlot_Initialize(ctx: [*c]ImPlotContext) void;
pub extern fn ImPlot_ResetCtxForNextPlot(ctx: [*c]ImPlotContext) void;
pub extern fn ImPlot_ResetCtxForNextAlignedPlots(ctx: [*c]ImPlotContext) void;
pub extern fn ImPlot_ResetCtxForNextSubplot(ctx: [*c]ImPlotContext) void;
pub extern fn ImPlot_GetPlot(title: [*c]const u8) [*c]ImPlotPlot;
pub extern fn ImPlot_GetCurrentPlot() [*c]ImPlotPlot;
pub extern fn ImPlot_BustPlotCache() void;
pub extern fn ImPlot_ShowPlotContextMenu(plot: [*c]ImPlotPlot) void;
pub extern fn ImPlot_SetupLock() void;
pub extern fn ImPlot_SubplotNextCell() void;
pub extern fn ImPlot_ShowSubplotsContextMenu(subplot: [*c]ImPlotSubplot) void;
pub extern fn ImPlot_BeginItem(label_id: [*c]const u8, flags: ImPlotItemFlags, recolor_from: ImPlotCol) bool;
pub extern fn ImPlot_EndItem() void;
pub extern fn ImPlot_RegisterOrGetItem(label_id: [*c]const u8, flags: ImPlotItemFlags, just_created: [*c]bool) [*c]ImPlotItem;
pub extern fn ImPlot_GetItem(label_id: [*c]const u8) [*c]ImPlotItem;
pub extern fn ImPlot_GetCurrentItem() [*c]ImPlotItem;
pub extern fn ImPlot_BustItemCache() void;
pub extern fn ImPlot_AnyAxesInputLocked(axes: [*c]ImPlotAxis, count: c_int) bool;
pub extern fn ImPlot_AllAxesInputLocked(axes: [*c]ImPlotAxis, count: c_int) bool;
pub extern fn ImPlot_AnyAxesHeld(axes: [*c]ImPlotAxis, count: c_int) bool;
pub extern fn ImPlot_AnyAxesHovered(axes: [*c]ImPlotAxis, count: c_int) bool;
pub extern fn ImPlot_FitThisFrame() bool;
pub extern fn ImPlot_FitPointX(x: f64) void;
pub extern fn ImPlot_FitPointY(y: f64) void;
pub extern fn ImPlot_FitPoint(p: ImPlotPoint) void;
pub extern fn ImPlot_RangesOverlap(r1: ImPlotRange, r2: ImPlotRange) bool;
pub extern fn ImPlot_ShowAxisContextMenu(axis: [*c]ImPlotAxis, equal_axis: [*c]ImPlotAxis, time_allowed: bool) void;
pub extern fn ImPlot_GetLocationPos(pOut: [*c]ImVec2, outer_rect: ImRect, inner_size: ImVec2, location: ImPlotLocation, pad: ImVec2) void;
pub extern fn ImPlot_CalcLegendSize(pOut: [*c]ImVec2, items: [*c]ImPlotItemGroup, pad: ImVec2, spacing: ImVec2, vertical: bool) void;
pub extern fn ImPlot_ShowLegendEntries(items: [*c]ImPlotItemGroup, legend_bb: ImRect, interactable: bool, pad: ImVec2, spacing: ImVec2, vertical: bool, DrawList: [*c]ImDrawList) bool;
pub extern fn ImPlot_ShowAltLegend(title_id: [*c]const u8, vertical: bool, size: ImVec2, interactable: bool) void;
pub extern fn ImPlot_ShowLegendContextMenu(legend: [*c]ImPlotLegend, visible: bool) bool;
pub extern fn ImPlot_LabelAxisValue(axis: ImPlotAxis, value: f64, buff: [*c]u8, size: c_int, round: bool) void;
pub extern fn ImPlot_GetItemData() [*c]const ImPlotNextItemData;
pub extern fn ImPlot_IsColorAuto_Vec4(col: ImVec4) bool;
pub extern fn ImPlot_IsColorAuto_PlotCol(idx: ImPlotCol) bool;
pub extern fn ImPlot_GetAutoColor(pOut: [*c]ImVec4, idx: ImPlotCol) void;
pub extern fn ImPlot_GetStyleColorVec4(pOut: [*c]ImVec4, idx: ImPlotCol) void;
pub extern fn ImPlot_GetStyleColorU32(idx: ImPlotCol) ImU32;
pub extern fn ImPlot_AddTextVertical(DrawList: [*c]ImDrawList, pos: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImPlot_AddTextCentered(DrawList: [*c]ImDrawList, top_center: ImVec2, col: ImU32, text_begin: [*c]const u8, text_end: [*c]const u8) void;
pub extern fn ImPlot_CalcTextSizeVertical(pOut: [*c]ImVec2, text: [*c]const u8) void;
pub extern fn ImPlot_CalcTextColor_Vec4(bg: ImVec4) ImU32;
pub extern fn ImPlot_CalcTextColor_U32(bg: ImU32) ImU32;
pub extern fn ImPlot_CalcHoverColor(col: ImU32) ImU32;
pub extern fn ImPlot_ClampLabelPos(pOut: [*c]ImVec2, pos: ImVec2, size: ImVec2, Min: ImVec2, Max: ImVec2) void;
pub extern fn ImPlot_GetColormapColorU32(idx: c_int, cmap: ImPlotColormap) ImU32;
pub extern fn ImPlot_NextColormapColorU32() ImU32;
pub extern fn ImPlot_SampleColormapU32(t: f32, cmap: ImPlotColormap) ImU32;
pub extern fn ImPlot_RenderColorBar(colors: [*c]const ImU32, size: c_int, DrawList: [*c]ImDrawList, bounds: ImRect, vert: bool, reversed: bool, continuous: bool) void;
pub extern fn ImPlot_NiceNum(x: f64, round: bool) f64;
pub extern fn ImPlot_OrderOfMagnitude(val: f64) c_int;
pub extern fn ImPlot_OrderToPrecision(order: c_int) c_int;
pub extern fn ImPlot_Precision(val: f64) c_int;
pub extern fn ImPlot_RoundTo(val: f64, prec: c_int) f64;
pub extern fn ImPlot_Intersection(pOut: [*c]ImVec2, a1: ImVec2, a2: ImVec2, b1: ImVec2, b2: ImVec2) void;
pub extern fn ImPlot_FillRange_Vector_Float_Ptr(buffer: [*c]ImVector_float, n: c_int, vmin: f32, vmax: f32) void;
pub extern fn ImPlot_FillRange_Vector_double_Ptr(buffer: [*c]ImVector_double, n: c_int, vmin: f64, vmax: f64) void;
pub extern fn ImPlot_FillRange_Vector_S8_Ptr(buffer: [*c]ImVector_ImS8, n: c_int, vmin: ImS8, vmax: ImS8) void;
pub extern fn ImPlot_FillRange_Vector_U8_Ptr(buffer: [*c]ImVector_ImU8, n: c_int, vmin: ImU8, vmax: ImU8) void;
pub extern fn ImPlot_FillRange_Vector_S16_Ptr(buffer: [*c]ImVector_ImS16, n: c_int, vmin: ImS16, vmax: ImS16) void;
pub extern fn ImPlot_FillRange_Vector_U16_Ptr(buffer: [*c]ImVector_ImU16, n: c_int, vmin: ImU16, vmax: ImU16) void;
pub extern fn ImPlot_FillRange_Vector_S32_Ptr(buffer: [*c]ImVector_ImS32, n: c_int, vmin: ImS32, vmax: ImS32) void;
pub extern fn ImPlot_FillRange_Vector_U32_Ptr(buffer: [*c]ImVector_ImU32, n: c_int, vmin: ImU32, vmax: ImU32) void;
pub extern fn ImPlot_FillRange_Vector_S64_Ptr(buffer: [*c]ImVector_ImS64, n: c_int, vmin: ImS64, vmax: ImS64) void;
pub extern fn ImPlot_FillRange_Vector_U64_Ptr(buffer: [*c]ImVector_ImU64, n: c_int, vmin: ImU64, vmax: ImU64) void;
pub extern fn ImPlot_CalculateBins_FloatPtr(values: [*c]const f32, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_doublePtr(values: [*c]const f64, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_S8Ptr(values: [*c]const ImS8, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_U8Ptr(values: [*c]const ImU8, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_S16Ptr(values: [*c]const ImS16, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_U16Ptr(values: [*c]const ImU16, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_S32Ptr(values: [*c]const ImS32, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_U32Ptr(values: [*c]const ImU32, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_S64Ptr(values: [*c]const ImS64, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_CalculateBins_U64Ptr(values: [*c]const ImU64, count: c_int, meth: ImPlotBin, range: ImPlotRange, bins_out: [*c]c_int, width_out: [*c]f64) void;
pub extern fn ImPlot_IsLeapYear(year: c_int) bool;
pub extern fn ImPlot_GetDaysInMonth(year: c_int, month: c_int) c_int;
pub extern fn ImPlot_MkGmtTime(pOut: [*c]ImPlotTime, ptm: [*c]struct_tm) void;
pub extern fn ImPlot_GetGmtTime(t: ImPlotTime, ptm: [*c]tm) [*c]tm;
pub extern fn ImPlot_MkLocTime(pOut: [*c]ImPlotTime, ptm: [*c]struct_tm) void;
pub extern fn ImPlot_GetLocTime(t: ImPlotTime, ptm: [*c]tm) [*c]tm;
pub extern fn ImPlot_MakeTime(pOut: [*c]ImPlotTime, year: c_int, month: c_int, day: c_int, hour: c_int, min: c_int, sec: c_int, us: c_int) void;
pub extern fn ImPlot_GetYear(t: ImPlotTime) c_int;
pub extern fn ImPlot_AddTime(pOut: [*c]ImPlotTime, t: ImPlotTime, unit: ImPlotTimeUnit, count: c_int) void;
pub extern fn ImPlot_FloorTime(pOut: [*c]ImPlotTime, t: ImPlotTime, unit: ImPlotTimeUnit) void;
pub extern fn ImPlot_CeilTime(pOut: [*c]ImPlotTime, t: ImPlotTime, unit: ImPlotTimeUnit) void;
pub extern fn ImPlot_RoundTime(pOut: [*c]ImPlotTime, t: ImPlotTime, unit: ImPlotTimeUnit) void;
pub extern fn ImPlot_CombineDateTime(pOut: [*c]ImPlotTime, date_part: ImPlotTime, time_part: ImPlotTime) void;
pub extern fn ImPlot_FormatTime(t: ImPlotTime, buffer: [*c]u8, size: c_int, fmt: ImPlotTimeFmt, use_24_hr_clk: bool) c_int;
pub extern fn ImPlot_FormatDate(t: ImPlotTime, buffer: [*c]u8, size: c_int, fmt: ImPlotDateFmt, use_iso_8601: bool) c_int;
pub extern fn ImPlot_FormatDateTime(t: ImPlotTime, buffer: [*c]u8, size: c_int, fmt: ImPlotDateTimeSpec) c_int;
pub extern fn ImPlot_ShowDatePicker(id: [*c]const u8, level: [*c]c_int, t: [*c]ImPlotTime, t1: [*c]const ImPlotTime, t2: [*c]const ImPlotTime) bool;
pub extern fn ImPlot_ShowTimePicker(id: [*c]const u8, t: [*c]ImPlotTime) bool;
pub extern fn ImPlot_TransformForward_Log10(v: f64, noname1: ?*anyopaque) f64;
pub extern fn ImPlot_TransformInverse_Log10(v: f64, noname1: ?*anyopaque) f64;
pub extern fn ImPlot_TransformForward_SymLog(v: f64, noname1: ?*anyopaque) f64;
pub extern fn ImPlot_TransformInverse_SymLog(v: f64, noname1: ?*anyopaque) f64;
pub extern fn ImPlot_TransformForward_Logit(v: f64, noname1: ?*anyopaque) f64;
pub extern fn ImPlot_TransformInverse_Logit(v: f64, noname1: ?*anyopaque) f64;
pub extern fn ImPlot_Formatter_Default(value: f64, buff: [*c]u8, size: c_int, data: ?*anyopaque) c_int;
pub extern fn ImPlot_Formatter_Logit(value: f64, buff: [*c]u8, size: c_int, noname1: ?*anyopaque) c_int;
pub extern fn ImPlot_Formatter_Time(noname1: f64, buff: [*c]u8, size: c_int, data: ?*anyopaque) c_int;
pub extern fn ImPlot_Locator_Default(ticker: [*c]ImPlotTicker, range: ImPlotRange, pixels: f32, vertical: bool, formatter: ImPlotFormatter, formatter_data: ?*anyopaque) void;
pub extern fn ImPlot_Locator_Time(ticker: [*c]ImPlotTicker, range: ImPlotRange, pixels: f32, vertical: bool, formatter: ImPlotFormatter, formatter_data: ?*anyopaque) void;
pub extern fn ImPlot_Locator_Log10(ticker: [*c]ImPlotTicker, range: ImPlotRange, pixels: f32, vertical: bool, formatter: ImPlotFormatter, formatter_data: ?*anyopaque) void;
pub extern fn ImPlot_Locator_SymLog(ticker: [*c]ImPlotTicker, range: ImPlotRange, pixels: f32, vertical: bool, formatter: ImPlotFormatter, formatter_data: ?*anyopaque) void;
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
pub const CIMGUI_DEFINE_ENUMS_AND_STRUCTS = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const CIMGUIPLOT_INCLUDED = "";
pub const CIMGUI_INCLUDED = "";
pub const _STDIO_H_ = "";
pub const __STDIO_H_ = "";
pub const _LIBC_BOUNDS_H_ = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __has_cpp_attribute(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    _ = &protos;
    return protos;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:116:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:117:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:119:9
pub const __signed = c_int;
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:121:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:165:9
pub const __pure2 = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:166:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:167:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:172:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__used__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:177:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:183:9
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `returns_nonnull`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:190:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__visibility__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:200:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:201:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:202:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:214:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:218:10
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) {
    _ = &_msg;
    return __deprecated_msg(_msg);
}
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:229:9
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__unavailable__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:235:9
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:257:9
pub const __disable_tail_calls = @compileError("unable to translate macro: undefined identifier `__disable_tail_calls__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:290:9
pub const __not_tail_called = @compileError("unable to translate macro: undefined identifier `__not_tail_called__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:302:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:313:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__availability__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:323:9
pub const __swift_unavailable_from_async = @compileError("unable to translate macro: undefined identifier `__swift_attr__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:332:9
pub const __swift_nonisolated = @compileError("unable to translate macro: undefined identifier `__swift_attr__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:333:9
pub const __swift_nonisolated_unsafe = @compileError("unable to translate macro: undefined identifier `__swift_attr__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:334:9
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:370:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:383:10
pub const __unreachable_ok_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:396:10
pub const __unreachable_ok_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:399:10
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:420:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:422:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:424:9
pub const __osloglike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:426:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:429:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:432:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:436:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:440:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:444:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:449:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:453:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:457:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:461:9
pub const __alloc_align = @compileError("unable to translate macro: undefined identifier `alloc_align`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:470:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:491:9
pub const __has_safe_buffers = @as(c_int, 1);
pub const __unsafe_buffer_usage = @compileError("unable to translate macro: undefined identifier `__unsafe_buffer_usage__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:572:9
pub const __unsafe_buffer_usage_begin = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:578:9
pub const __unsafe_buffer_usage_end = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:579:9
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "";
pub const __DARWIN_SUF_1050 = "";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:764:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:765:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:766:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:767:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:768:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:770:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:771:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:772:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:773:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:774:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:776:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:777:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:341:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:347:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:359:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:365:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:371:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:377:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:383:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:389:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:395:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:401:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:407:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:413:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:419:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:425:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:431:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:437:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:443:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:449:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:455:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:461:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:467:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:473:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:479:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:485:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:491:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:497:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:503:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:509:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:515:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:521:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:527:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:533:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:539:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:545:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_symbol_aliasing.h:551:9
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:787:9
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:850:9
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_VERS_1050 = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub const __CAST_AWAY_QUALIFIER = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:948:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `visibility`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:962:9
pub const __has_ptrcheck = @as(c_int, 0);
pub const __single = "";
pub const __unsafe_indexable = "";
pub const __counted_by = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:981:9
pub const __counted_by_or_null = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:982:9
pub const __sized_by = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:983:9
pub const __sized_by_or_null = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:984:9
pub const __ended_by = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:985:9
pub const __terminated_by = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:986:9
pub const __null_terminated = "";
pub const __ptrcheck_abi_assume_single = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:996:9
pub const __ptrcheck_abi_assume_unsafe_indexable = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:997:9
pub inline fn __unsafe_forge_bidi_indexable(T: anytype, P: anytype, S: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &S;
    return T(P);
}
pub const __unsafe_forge_single = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __unsafe_forge_terminated_by(T: anytype, P: anytype, E: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &E;
    return T(P);
}
pub const __unsafe_forge_null_terminated = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub const __unsafe_terminated_by_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1008:9
pub const __unsafe_null_terminated_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1009:9
pub const __array_decay_dicards_count_in_parameters = "";
pub const __unsafe_late_const = "";
pub const __ptrcheck_unavailable = "";
pub const __ptrcheck_unavailable_r = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1018:9
pub const __ASSUME_PTR_ABI_SINGLE_BEGIN = __ptrcheck_abi_assume_single();
pub const __ASSUME_PTR_ABI_SINGLE_END = __ptrcheck_abi_assume_unsafe_indexable();
pub const __header_indexable = "";
pub const __header_bidi_indexable = "";
pub const __compiler_barrier = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1047:9
pub const __enum_open = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1050:9
pub const __enum_closed = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1051:9
pub const __enum_options = @compileError("unable to translate macro: undefined identifier `__flag_enum__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1058:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1071:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1073:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1075:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/cdefs.h:1077:9
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const __xnu_data_size = "";
pub const __xnu_returns_data_pointer = "";
pub const _LIBC_COUNT = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_bounds.h:47:9
pub const _LIBC_COUNT_OR_NULL = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_bounds.h:48:9
pub const _LIBC_SIZE = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_bounds.h:49:9
pub const _LIBC_SIZE_OR_NULL = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_bounds.h:50:9
pub const _LIBC_ENDED_BY = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_bounds.h:51:9
pub const _LIBC_SINGLE = "";
pub const _LIBC_UNSAFE_INDEXABLE = "";
pub const _LIBC_CSTR = "";
pub const _LIBC_NULL_TERMINATED = "";
pub inline fn _LIBC_FLEX_COUNT(FIELD: anytype, INTCOUNT: anytype) @TypeOf(INTCOUNT) {
    _ = &FIELD;
    _ = &INTCOUNT;
    return INTCOUNT;
}
pub const _LIBC_SINGLE_BY_DEFAULT = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_bounds.h:58:9
pub const _LIBC_PTRCHECK_REPLACED = @compileError("unable to translate C expr: unexpected token ''");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_bounds.h:59:9
pub const __AVAILABILITY__ = "";
pub const __API_TO_BE_DEPRECATED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACOSAPPLICATIONEXTENSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_IOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_IOSAPPLICATIONEXTENSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACCATALYST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACCATALYSTAPPLICATIONEXTENSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_WATCHOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_WATCHOSAPPLICATIONEXTENSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_TVOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_TVOSAPPLICATIONEXTENSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_DRIVERKIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_VISIONOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_VISIONOSAPPLICATIONEXTENSION = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_KERNELKIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __AVAILABILITY_VERSIONS__ = "";
pub const __MAC_10_0 = @as(c_int, 1000);
pub const __MAC_10_1 = @as(c_int, 1010);
pub const __MAC_10_2 = @as(c_int, 1020);
pub const __MAC_10_3 = @as(c_int, 1030);
pub const __MAC_10_4 = @as(c_int, 1040);
pub const __MAC_10_5 = @as(c_int, 1050);
pub const __MAC_10_6 = @as(c_int, 1060);
pub const __MAC_10_7 = @as(c_int, 1070);
pub const __MAC_10_8 = @as(c_int, 1080);
pub const __MAC_10_9 = @as(c_int, 1090);
pub const __MAC_10_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101000, .decimal);
pub const __MAC_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101002, .decimal);
pub const __MAC_10_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101003, .decimal);
pub const __MAC_10_11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101100, .decimal);
pub const __MAC_10_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101102, .decimal);
pub const __MAC_10_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101103, .decimal);
pub const __MAC_10_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101104, .decimal);
pub const __MAC_10_12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101200, .decimal);
pub const __MAC_10_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101201, .decimal);
pub const __MAC_10_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101202, .decimal);
pub const __MAC_10_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101204, .decimal);
pub const __MAC_10_13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101300, .decimal);
pub const __MAC_10_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101301, .decimal);
pub const __MAC_10_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101302, .decimal);
pub const __MAC_10_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101304, .decimal);
pub const __MAC_10_14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101400, .decimal);
pub const __MAC_10_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101401, .decimal);
pub const __MAC_10_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101404, .decimal);
pub const __MAC_10_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101405, .decimal);
pub const __MAC_10_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101406, .decimal);
pub const __MAC_10_15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101500, .decimal);
pub const __MAC_10_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101501, .decimal);
pub const __MAC_10_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101504, .decimal);
pub const __MAC_10_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101600, .decimal);
pub const __MAC_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __MAC_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __MAC_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __MAC_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __MAC_11_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110500, .decimal);
pub const __MAC_11_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110600, .decimal);
pub const __MAC_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __MAC_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __MAC_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __MAC_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __MAC_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __MAC_12_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120500, .decimal);
pub const __MAC_12_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120600, .decimal);
pub const __MAC_12_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120700, .decimal);
pub const __MAC_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __MAC_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130100, .decimal);
pub const __MAC_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __MAC_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __MAC_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __MAC_13_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130500, .decimal);
pub const __MAC_13_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130600, .decimal);
pub const __MAC_13_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130700, .decimal);
pub const __MAC_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __MAC_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __MAC_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __MAC_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __MAC_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140400, .decimal);
pub const __MAC_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __MAC_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __MAC_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __MAC_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __MAC_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150100, .decimal);
pub const __MAC_15_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150200, .decimal);
pub const __MAC_15_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150300, .decimal);
pub const __MAC_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150400, .decimal);
pub const __IPHONE_2_0 = @as(c_int, 20000);
pub const __IPHONE_2_1 = @as(c_int, 20100);
pub const __IPHONE_2_2 = @as(c_int, 20200);
pub const __IPHONE_3_0 = @as(c_int, 30000);
pub const __IPHONE_3_1 = @as(c_int, 30100);
pub const __IPHONE_3_2 = @as(c_int, 30200);
pub const __IPHONE_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __IPHONE_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __IPHONE_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __IPHONE_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __IPHONE_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __IPHONE_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __IPHONE_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __IPHONE_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __IPHONE_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __IPHONE_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __IPHONE_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __IPHONE_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __IPHONE_8_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80200, .decimal);
pub const __IPHONE_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __IPHONE_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __IPHONE_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __IPHONE_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __IPHONE_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __IPHONE_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __IPHONE_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __IPHONE_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __IPHONE_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __IPHONE_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100300, .decimal);
pub const __IPHONE_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __IPHONE_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __IPHONE_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __IPHONE_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __IPHONE_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __IPHONE_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __IPHONE_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __IPHONE_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __IPHONE_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __IPHONE_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __IPHONE_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __IPHONE_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130100, .decimal);
pub const __IPHONE_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __IPHONE_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __IPHONE_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __IPHONE_13_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130500, .decimal);
pub const __IPHONE_13_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130600, .decimal);
pub const __IPHONE_13_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130700, .decimal);
pub const __IPHONE_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __IPHONE_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __IPHONE_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __IPHONE_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __IPHONE_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __IPHONE_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140400, .decimal);
pub const __IPHONE_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __IPHONE_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __IPHONE_14_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140800, .decimal);
pub const __IPHONE_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __IPHONE_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150100, .decimal);
pub const __IPHONE_15_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150200, .decimal);
pub const __IPHONE_15_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150300, .decimal);
pub const __IPHONE_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150400, .decimal);
pub const __IPHONE_15_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150500, .decimal);
pub const __IPHONE_15_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150600, .decimal);
pub const __IPHONE_15_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150700, .decimal);
pub const __IPHONE_15_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150800, .decimal);
pub const __IPHONE_16_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160000, .decimal);
pub const __IPHONE_16_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160100, .decimal);
pub const __IPHONE_16_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160200, .decimal);
pub const __IPHONE_16_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160300, .decimal);
pub const __IPHONE_16_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160400, .decimal);
pub const __IPHONE_16_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160500, .decimal);
pub const __IPHONE_16_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160600, .decimal);
pub const __IPHONE_16_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160700, .decimal);
pub const __IPHONE_17_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170000, .decimal);
pub const __IPHONE_17_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170100, .decimal);
pub const __IPHONE_17_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170200, .decimal);
pub const __IPHONE_17_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170300, .decimal);
pub const __IPHONE_17_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170400, .decimal);
pub const __IPHONE_17_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170500, .decimal);
pub const __IPHONE_17_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170600, .decimal);
pub const __IPHONE_17_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170700, .decimal);
pub const __IPHONE_18_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180000, .decimal);
pub const __IPHONE_18_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180100, .decimal);
pub const __IPHONE_18_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180200, .decimal);
pub const __IPHONE_18_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180300, .decimal);
pub const __IPHONE_18_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180400, .decimal);
pub const __WATCHOS_1_0 = @as(c_int, 10000);
pub const __WATCHOS_2_0 = @as(c_int, 20000);
pub const __WATCHOS_2_1 = @as(c_int, 20100);
pub const __WATCHOS_2_2 = @as(c_int, 20200);
pub const __WATCHOS_3_0 = @as(c_int, 30000);
pub const __WATCHOS_3_1 = @as(c_int, 30100);
pub const __WATCHOS_3_1_1 = @as(c_int, 30101);
pub const __WATCHOS_3_2 = @as(c_int, 30200);
pub const __WATCHOS_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __WATCHOS_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __WATCHOS_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __WATCHOS_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __WATCHOS_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __WATCHOS_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __WATCHOS_5_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50200, .decimal);
pub const __WATCHOS_5_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50300, .decimal);
pub const __WATCHOS_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __WATCHOS_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __WATCHOS_6_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60200, .decimal);
pub const __WATCHOS_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __WATCHOS_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __WATCHOS_7_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70200, .decimal);
pub const __WATCHOS_7_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70300, .decimal);
pub const __WATCHOS_7_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70400, .decimal);
pub const __WATCHOS_7_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70500, .decimal);
pub const __WATCHOS_7_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70600, .decimal);
pub const __WATCHOS_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __WATCHOS_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __WATCHOS_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __WATCHOS_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __WATCHOS_8_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80500, .decimal);
pub const __WATCHOS_8_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80600, .decimal);
pub const __WATCHOS_8_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80700, .decimal);
pub const __WATCHOS_8_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80800, .decimal);
pub const __WATCHOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __WATCHOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __WATCHOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __WATCHOS_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __WATCHOS_9_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90400, .decimal);
pub const __WATCHOS_9_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90500, .decimal);
pub const __WATCHOS_9_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90600, .decimal);
pub const __WATCHOS_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __WATCHOS_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __WATCHOS_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __WATCHOS_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100300, .decimal);
pub const __WATCHOS_10_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100400, .decimal);
pub const __WATCHOS_10_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100500, .decimal);
pub const __WATCHOS_10_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100600, .decimal);
pub const __WATCHOS_10_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100700, .decimal);
pub const __WATCHOS_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __WATCHOS_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __WATCHOS_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __WATCHOS_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __WATCHOS_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __TVOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __TVOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __TVOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __TVOS_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __TVOS_10_0_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100001, .decimal);
pub const __TVOS_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __TVOS_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __TVOS_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __TVOS_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __TVOS_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __TVOS_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __TVOS_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __TVOS_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __TVOS_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __TVOS_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __TVOS_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __TVOS_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __TVOS_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __TVOS_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __TVOS_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __TVOS_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __TVOS_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __TVOS_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __TVOS_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __TVOS_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __TVOS_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __TVOS_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __TVOS_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __TVOS_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __TVOS_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150100, .decimal);
pub const __TVOS_15_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150200, .decimal);
pub const __TVOS_15_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150300, .decimal);
pub const __TVOS_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150400, .decimal);
pub const __TVOS_15_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150500, .decimal);
pub const __TVOS_15_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150600, .decimal);
pub const __TVOS_16_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160000, .decimal);
pub const __TVOS_16_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160100, .decimal);
pub const __TVOS_16_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160200, .decimal);
pub const __TVOS_16_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160300, .decimal);
pub const __TVOS_16_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160400, .decimal);
pub const __TVOS_16_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160500, .decimal);
pub const __TVOS_16_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160600, .decimal);
pub const __TVOS_17_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170000, .decimal);
pub const __TVOS_17_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170100, .decimal);
pub const __TVOS_17_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170200, .decimal);
pub const __TVOS_17_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170300, .decimal);
pub const __TVOS_17_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170400, .decimal);
pub const __TVOS_17_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170500, .decimal);
pub const __TVOS_17_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170600, .decimal);
pub const __TVOS_18_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180000, .decimal);
pub const __TVOS_18_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180100, .decimal);
pub const __TVOS_18_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180200, .decimal);
pub const __TVOS_18_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180300, .decimal);
pub const __TVOS_18_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 180400, .decimal);
pub const __BRIDGEOS_2_0 = @as(c_int, 20000);
pub const __BRIDGEOS_3_0 = @as(c_int, 30000);
pub const __BRIDGEOS_3_1 = @as(c_int, 30100);
pub const __BRIDGEOS_3_4 = @as(c_int, 30400);
pub const __BRIDGEOS_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __BRIDGEOS_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __BRIDGEOS_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __BRIDGEOS_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __BRIDGEOS_5_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50300, .decimal);
pub const __BRIDGEOS_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __BRIDGEOS_6_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60200, .decimal);
pub const __BRIDGEOS_6_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60400, .decimal);
pub const __BRIDGEOS_6_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60500, .decimal);
pub const __BRIDGEOS_6_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60600, .decimal);
pub const __BRIDGEOS_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __BRIDGEOS_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __BRIDGEOS_7_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70200, .decimal);
pub const __BRIDGEOS_7_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70300, .decimal);
pub const __BRIDGEOS_7_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70400, .decimal);
pub const __BRIDGEOS_7_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70600, .decimal);
pub const __BRIDGEOS_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __BRIDGEOS_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __BRIDGEOS_8_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80200, .decimal);
pub const __BRIDGEOS_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __BRIDGEOS_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __BRIDGEOS_8_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80500, .decimal);
pub const __BRIDGEOS_8_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80600, .decimal);
pub const __BRIDGEOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __BRIDGEOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __BRIDGEOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __BRIDGEOS_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __BRIDGEOS_9_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90400, .decimal);
pub const __DRIVERKIT_19_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 190000, .decimal);
pub const __DRIVERKIT_20_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 200000, .decimal);
pub const __DRIVERKIT_21_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 210000, .decimal);
pub const __DRIVERKIT_22_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220000, .decimal);
pub const __DRIVERKIT_22_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220400, .decimal);
pub const __DRIVERKIT_22_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220500, .decimal);
pub const __DRIVERKIT_22_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220600, .decimal);
pub const __DRIVERKIT_23_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230000, .decimal);
pub const __DRIVERKIT_23_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230100, .decimal);
pub const __DRIVERKIT_23_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230200, .decimal);
pub const __DRIVERKIT_23_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230300, .decimal);
pub const __DRIVERKIT_23_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230400, .decimal);
pub const __DRIVERKIT_23_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230500, .decimal);
pub const __DRIVERKIT_23_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230600, .decimal);
pub const __DRIVERKIT_24_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 240000, .decimal);
pub const __DRIVERKIT_24_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 240100, .decimal);
pub const __DRIVERKIT_24_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 240200, .decimal);
pub const __DRIVERKIT_24_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 240300, .decimal);
pub const __DRIVERKIT_24_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 240400, .decimal);
pub const __VISIONOS_1_0 = @as(c_int, 10000);
pub const __VISIONOS_1_1 = @as(c_int, 10100);
pub const __VISIONOS_1_2 = @as(c_int, 10200);
pub const __VISIONOS_1_3 = @as(c_int, 10300);
pub const __VISIONOS_2_0 = @as(c_int, 20000);
pub const __VISIONOS_2_1 = @as(c_int, 20100);
pub const __VISIONOS_2_2 = @as(c_int, 20200);
pub const __VISIONOS_2_3 = @as(c_int, 20300);
pub const __VISIONOS_2_4 = @as(c_int, 20400);
pub const MAC_OS_X_VERSION_10_0 = __MAC_10_0;
pub const MAC_OS_X_VERSION_10_1 = __MAC_10_1;
pub const MAC_OS_X_VERSION_10_2 = __MAC_10_2;
pub const MAC_OS_X_VERSION_10_3 = __MAC_10_3;
pub const MAC_OS_X_VERSION_10_4 = __MAC_10_4;
pub const MAC_OS_X_VERSION_10_5 = __MAC_10_5;
pub const MAC_OS_X_VERSION_10_6 = __MAC_10_6;
pub const MAC_OS_X_VERSION_10_7 = __MAC_10_7;
pub const MAC_OS_X_VERSION_10_8 = __MAC_10_8;
pub const MAC_OS_X_VERSION_10_9 = __MAC_10_9;
pub const MAC_OS_X_VERSION_10_10 = __MAC_10_10;
pub const MAC_OS_X_VERSION_10_10_2 = __MAC_10_10_2;
pub const MAC_OS_X_VERSION_10_10_3 = __MAC_10_10_3;
pub const MAC_OS_X_VERSION_10_11 = __MAC_10_11;
pub const MAC_OS_X_VERSION_10_11_2 = __MAC_10_11_2;
pub const MAC_OS_X_VERSION_10_11_3 = __MAC_10_11_3;
pub const MAC_OS_X_VERSION_10_11_4 = __MAC_10_11_4;
pub const MAC_OS_X_VERSION_10_12 = __MAC_10_12;
pub const MAC_OS_X_VERSION_10_12_1 = __MAC_10_12_1;
pub const MAC_OS_X_VERSION_10_12_2 = __MAC_10_12_2;
pub const MAC_OS_X_VERSION_10_12_4 = __MAC_10_12_4;
pub const MAC_OS_X_VERSION_10_13 = __MAC_10_13;
pub const MAC_OS_X_VERSION_10_13_1 = __MAC_10_13_1;
pub const MAC_OS_X_VERSION_10_13_2 = __MAC_10_13_2;
pub const MAC_OS_X_VERSION_10_13_4 = __MAC_10_13_4;
pub const MAC_OS_X_VERSION_10_14 = __MAC_10_14;
pub const MAC_OS_X_VERSION_10_14_1 = __MAC_10_14_1;
pub const MAC_OS_X_VERSION_10_14_4 = __MAC_10_14_4;
pub const MAC_OS_X_VERSION_10_14_5 = __MAC_10_14_5;
pub const MAC_OS_X_VERSION_10_14_6 = __MAC_10_14_6;
pub const MAC_OS_X_VERSION_10_15 = __MAC_10_15;
pub const MAC_OS_X_VERSION_10_15_1 = __MAC_10_15_1;
pub const MAC_OS_X_VERSION_10_15_4 = __MAC_10_15_4;
pub const MAC_OS_X_VERSION_10_16 = __MAC_10_16;
pub const MAC_OS_VERSION_11_0 = __MAC_11_0;
pub const MAC_OS_VERSION_11_1 = __MAC_11_1;
pub const MAC_OS_VERSION_11_3 = __MAC_11_3;
pub const MAC_OS_VERSION_11_4 = __MAC_11_4;
pub const MAC_OS_VERSION_11_5 = __MAC_11_5;
pub const MAC_OS_VERSION_11_6 = __MAC_11_6;
pub const MAC_OS_VERSION_12_0 = __MAC_12_0;
pub const MAC_OS_VERSION_12_1 = __MAC_12_1;
pub const MAC_OS_VERSION_12_2 = __MAC_12_2;
pub const MAC_OS_VERSION_12_3 = __MAC_12_3;
pub const MAC_OS_VERSION_12_4 = __MAC_12_4;
pub const MAC_OS_VERSION_12_5 = __MAC_12_5;
pub const MAC_OS_VERSION_12_6 = __MAC_12_6;
pub const MAC_OS_VERSION_12_7 = __MAC_12_7;
pub const MAC_OS_VERSION_13_0 = __MAC_13_0;
pub const MAC_OS_VERSION_13_1 = __MAC_13_1;
pub const MAC_OS_VERSION_13_2 = __MAC_13_2;
pub const MAC_OS_VERSION_13_3 = __MAC_13_3;
pub const MAC_OS_VERSION_13_4 = __MAC_13_4;
pub const MAC_OS_VERSION_13_5 = __MAC_13_5;
pub const MAC_OS_VERSION_13_6 = __MAC_13_6;
pub const MAC_OS_VERSION_13_7 = __MAC_13_7;
pub const MAC_OS_VERSION_14_0 = __MAC_14_0;
pub const MAC_OS_VERSION_14_1 = __MAC_14_1;
pub const MAC_OS_VERSION_14_2 = __MAC_14_2;
pub const MAC_OS_VERSION_14_3 = __MAC_14_3;
pub const MAC_OS_VERSION_14_4 = __MAC_14_4;
pub const MAC_OS_VERSION_14_5 = __MAC_14_5;
pub const MAC_OS_VERSION_14_6 = __MAC_14_6;
pub const MAC_OS_VERSION_14_7 = __MAC_14_7;
pub const MAC_OS_VERSION_15_0 = __MAC_15_0;
pub const MAC_OS_VERSION_15_1 = __MAC_15_1;
pub const MAC_OS_VERSION_15_2 = __MAC_15_2;
pub const MAC_OS_VERSION_15_3 = __MAC_15_3;
pub const MAC_OS_VERSION_15_4 = __MAC_15_4;
pub const __AVAILABILITY_VERSIONS_VERSION_HASH = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 93585900, .decimal);
pub const __AVAILABILITY_VERSIONS_VERSION_STRING = "Local";
pub const __AVAILABILITY_FILE = "AvailabilityVersions.h";
pub const __AVAILABILITY_INTERNAL__ = "";
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_15_4;
pub const __AVAILABILITY_INTERNAL_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:130:9
pub const __AVAILABILITY_INTERNAL_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:133:17
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `unavailable`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:142:9
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = @compileError("unable to translate macro: undefined identifier `weak_import`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:143:9
pub const __AVAILABILITY_INTERNAL_REGULAR = "";
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:148:12
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:149:12
pub const __API_OBSOLETED_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:150:12
pub const __API_UNAVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:151:12
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:152:12
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:153:12
pub const __API_OBSOLETED_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:154:12
pub const __API_UNAVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:155:12
pub const __API_AVAILABLE_PLATFORM_macOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `macOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:156:12
pub const __API_DEPRECATED_PLATFORM_macOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `macOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:157:12
pub const __API_OBSOLETED_PLATFORM_macOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `macOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:158:12
pub const __API_UNAVAILABLE_PLATFORM_macOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `macOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:159:12
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:160:12
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:161:12
pub const __API_OBSOLETED_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:162:12
pub const __API_UNAVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:163:12
pub const __API_AVAILABLE_PLATFORM_iOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `iOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:164:12
pub const __API_DEPRECATED_PLATFORM_iOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `iOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:165:12
pub const __API_OBSOLETED_PLATFORM_iOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `iOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:166:12
pub const __API_UNAVAILABLE_PLATFORM_iOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `iOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:167:12
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:168:12
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:169:12
pub const __API_OBSOLETED_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:170:12
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:171:12
pub const __API_AVAILABLE_PLATFORM_macCatalystApplicationExtension = @compileError("unable to translate macro: undefined identifier `macCatalystApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:172:12
pub const __API_DEPRECATED_PLATFORM_macCatalystApplicationExtension = @compileError("unable to translate macro: undefined identifier `macCatalystApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:173:12
pub const __API_OBSOLETED_PLATFORM_macCatalystApplicationExtension = @compileError("unable to translate macro: undefined identifier `macCatalystApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:174:12
pub const __API_UNAVAILABLE_PLATFORM_macCatalystApplicationExtension = @compileError("unable to translate macro: undefined identifier `macCatalystApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:175:12
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:176:12
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:177:12
pub const __API_OBSOLETED_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:178:12
pub const __API_UNAVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:179:12
pub const __API_AVAILABLE_PLATFORM_watchOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `watchOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:180:12
pub const __API_DEPRECATED_PLATFORM_watchOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `watchOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:181:12
pub const __API_OBSOLETED_PLATFORM_watchOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `watchOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:182:12
pub const __API_UNAVAILABLE_PLATFORM_watchOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `watchOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:183:12
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:184:12
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:185:12
pub const __API_OBSOLETED_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:186:12
pub const __API_UNAVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:187:12
pub const __API_AVAILABLE_PLATFORM_tvOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `tvOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:188:12
pub const __API_DEPRECATED_PLATFORM_tvOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `tvOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:189:12
pub const __API_OBSOLETED_PLATFORM_tvOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `tvOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:190:12
pub const __API_UNAVAILABLE_PLATFORM_tvOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `tvOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:191:12
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:193:12
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:194:12
pub const __API_OBSOLETED_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:195:12
pub const __API_UNAVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:196:12
pub const __API_AVAILABLE_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:197:12
pub const __API_DEPRECATED_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:198:12
pub const __API_OBSOLETED_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:199:12
pub const __API_UNAVAILABLE_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:200:12
pub const __API_AVAILABLE_PLATFORM_visionOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `visionOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:201:12
pub const __API_DEPRECATED_PLATFORM_visionOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `visionOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:202:12
pub const __API_OBSOLETED_PLATFORM_visionOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `visionOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:203:12
pub const __API_UNAVAILABLE_PLATFORM_visionOSApplicationExtension = @compileError("unable to translate macro: undefined identifier `visionOSApplicationExtension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:204:12
pub const __API_UNAVAILABLE_PLATFORM_kernelkit = @compileError("unable to translate macro: undefined identifier `kernelkit`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:206:12
pub const __API_APPLY_TO = @compileError("unable to translate macro: undefined identifier `any`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:216:11
pub inline fn __API_RANGE_STRINGIFY(x: anytype) @TypeOf(__API_RANGE_STRINGIFY2(x)) {
    _ = &x;
    return __API_RANGE_STRINGIFY2(x);
}
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token '#'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:218:11
pub const __API_A = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:232:13
pub inline fn __API_AVAILABLE0(arg0: anytype) @TypeOf(__API_A(arg0)) {
    _ = &arg0;
    return __API_A(arg0);
}
pub inline fn __API_AVAILABLE1(arg0: anytype, arg1: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_A(arg0) ++ __API_A(arg1);
}
pub inline fn __API_AVAILABLE2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2);
}
pub inline fn __API_AVAILABLE3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3);
}
pub inline fn __API_AVAILABLE4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4);
}
pub inline fn __API_AVAILABLE5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5);
}
pub inline fn __API_AVAILABLE6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6);
}
pub inline fn __API_AVAILABLE7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7);
}
pub inline fn __API_AVAILABLE8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8);
}
pub inline fn __API_AVAILABLE9(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9);
}
pub inline fn __API_AVAILABLE10(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10);
}
pub inline fn __API_AVAILABLE11(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11);
}
pub inline fn __API_AVAILABLE12(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12);
}
pub inline fn __API_AVAILABLE13(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13);
}
pub inline fn __API_AVAILABLE14(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13) ++ __API_A(arg14)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13) ++ __API_A(arg14);
}
pub inline fn __API_AVAILABLE15(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13) ++ __API_A(arg14) ++ __API_A(arg15)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8) ++ __API_A(arg9) ++ __API_A(arg10) ++ __API_A(arg11) ++ __API_A(arg12) ++ __API_A(arg13) ++ __API_A(arg14) ++ __API_A(arg15);
}
pub const __API_AVAILABLE_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:250:13
pub const __API_A_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:252:13
pub inline fn __API_AVAILABLE_BEGIN0(arg0: anytype) @TypeOf(__API_A_BEGIN(arg0)) {
    _ = &arg0;
    return __API_A_BEGIN(arg0);
}
pub inline fn __API_AVAILABLE_BEGIN1(arg0: anytype, arg1: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1);
}
pub inline fn __API_AVAILABLE_BEGIN2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2);
}
pub inline fn __API_AVAILABLE_BEGIN3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3);
}
pub inline fn __API_AVAILABLE_BEGIN4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4);
}
pub inline fn __API_AVAILABLE_BEGIN5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5);
}
pub inline fn __API_AVAILABLE_BEGIN6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6);
}
pub inline fn __API_AVAILABLE_BEGIN7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7);
}
pub inline fn __API_AVAILABLE_BEGIN8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8);
}
pub inline fn __API_AVAILABLE_BEGIN9(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9);
}
pub inline fn __API_AVAILABLE_BEGIN10(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10);
}
pub inline fn __API_AVAILABLE_BEGIN11(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11);
}
pub inline fn __API_AVAILABLE_BEGIN12(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12);
}
pub inline fn __API_AVAILABLE_BEGIN13(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13);
}
pub inline fn __API_AVAILABLE_BEGIN14(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13) ++ __API_A_BEGIN(arg14)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13) ++ __API_A_BEGIN(arg14);
}
pub inline fn __API_AVAILABLE_BEGIN15(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13) ++ __API_A_BEGIN(arg14) ++ __API_A_BEGIN(arg15)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8) ++ __API_A_BEGIN(arg9) ++ __API_A_BEGIN(arg10) ++ __API_A_BEGIN(arg11) ++ __API_A_BEGIN(arg12) ++ __API_A_BEGIN(arg13) ++ __API_A_BEGIN(arg14) ++ __API_A_BEGIN(arg15);
}
pub const __API_AVAILABLE_BEGIN_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:270:13
pub const __API_D = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:274:13
pub inline fn __API_DEPRECATED_MSG0(msg: anytype, arg0: anytype) @TypeOf(__API_D(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_D(msg, arg0);
}
pub inline fn __API_DEPRECATED_MSG1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1);
}
pub inline fn __API_DEPRECATED_MSG2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2);
}
pub inline fn __API_DEPRECATED_MSG3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3);
}
pub inline fn __API_DEPRECATED_MSG4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4);
}
pub inline fn __API_DEPRECATED_MSG5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5);
}
pub inline fn __API_DEPRECATED_MSG6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6);
}
pub inline fn __API_DEPRECATED_MSG7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7);
}
pub inline fn __API_DEPRECATED_MSG8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8);
}
pub inline fn __API_DEPRECATED_MSG9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9);
}
pub inline fn __API_DEPRECATED_MSG10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10);
}
pub inline fn __API_DEPRECATED_MSG11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11);
}
pub inline fn __API_DEPRECATED_MSG12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12);
}
pub inline fn __API_DEPRECATED_MSG13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13);
}
pub inline fn __API_DEPRECATED_MSG14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13) ++ __API_D(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13) ++ __API_D(msg, arg14);
}
pub inline fn __API_DEPRECATED_MSG15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13) ++ __API_D(msg, arg14) ++ __API_D(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8) ++ __API_D(msg, arg9) ++ __API_D(msg, arg10) ++ __API_D(msg, arg11) ++ __API_D(msg, arg12) ++ __API_D(msg, arg13) ++ __API_D(msg, arg14) ++ __API_D(msg, arg15);
}
pub const __API_DEPRECATED_MSG_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:292:13
pub const __API_D_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:294:13
pub inline fn __API_DEPRECATED_BEGIN0(msg: anytype, arg0: anytype) @TypeOf(__API_D_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_D_BEGIN(msg, arg0);
}
pub inline fn __API_DEPRECATED_BEGIN1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1);
}
pub inline fn __API_DEPRECATED_BEGIN2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2);
}
pub inline fn __API_DEPRECATED_BEGIN3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3);
}
pub inline fn __API_DEPRECATED_BEGIN4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4);
}
pub inline fn __API_DEPRECATED_BEGIN5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5);
}
pub inline fn __API_DEPRECATED_BEGIN6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6);
}
pub inline fn __API_DEPRECATED_BEGIN7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7);
}
pub inline fn __API_DEPRECATED_BEGIN8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8);
}
pub inline fn __API_DEPRECATED_BEGIN9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9);
}
pub inline fn __API_DEPRECATED_BEGIN10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10);
}
pub inline fn __API_DEPRECATED_BEGIN11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11);
}
pub inline fn __API_DEPRECATED_BEGIN12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12);
}
pub inline fn __API_DEPRECATED_BEGIN13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13);
}
pub inline fn __API_DEPRECATED_BEGIN14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13) ++ __API_D_BEGIN(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13) ++ __API_D_BEGIN(msg, arg14);
}
pub inline fn __API_DEPRECATED_BEGIN15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13) ++ __API_D_BEGIN(msg, arg14) ++ __API_D_BEGIN(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8) ++ __API_D_BEGIN(msg, arg9) ++ __API_D_BEGIN(msg, arg10) ++ __API_D_BEGIN(msg, arg11) ++ __API_D_BEGIN(msg, arg12) ++ __API_D_BEGIN(msg, arg13) ++ __API_D_BEGIN(msg, arg14) ++ __API_D_BEGIN(msg, arg15);
}
pub const __API_DEPRECATED_BEGIN_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:312:13
pub const __API_DR = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:315:17
pub inline fn __API_DEPRECATED_REP0(msg: anytype, arg0: anytype) @TypeOf(__API_DR(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_DR(msg, arg0);
}
pub inline fn __API_DEPRECATED_REP1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1);
}
pub inline fn __API_DEPRECATED_REP2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2);
}
pub inline fn __API_DEPRECATED_REP3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3);
}
pub inline fn __API_DEPRECATED_REP4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4);
}
pub inline fn __API_DEPRECATED_REP5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5);
}
pub inline fn __API_DEPRECATED_REP6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6);
}
pub inline fn __API_DEPRECATED_REP7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7);
}
pub inline fn __API_DEPRECATED_REP8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8);
}
pub inline fn __API_DEPRECATED_REP9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9);
}
pub inline fn __API_DEPRECATED_REP10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10);
}
pub inline fn __API_DEPRECATED_REP11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11);
}
pub inline fn __API_DEPRECATED_REP12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12);
}
pub inline fn __API_DEPRECATED_REP13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13);
}
pub inline fn __API_DEPRECATED_REP14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13) ++ __API_DR(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13) ++ __API_DR(msg, arg14);
}
pub inline fn __API_DEPRECATED_REP15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13) ++ __API_DR(msg, arg14) ++ __API_DR(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_DR(msg, arg0) ++ __API_DR(msg, arg1) ++ __API_DR(msg, arg2) ++ __API_DR(msg, arg3) ++ __API_DR(msg, arg4) ++ __API_DR(msg, arg5) ++ __API_DR(msg, arg6) ++ __API_DR(msg, arg7) ++ __API_DR(msg, arg8) ++ __API_DR(msg, arg9) ++ __API_DR(msg, arg10) ++ __API_DR(msg, arg11) ++ __API_DR(msg, arg12) ++ __API_DR(msg, arg13) ++ __API_DR(msg, arg14) ++ __API_DR(msg, arg15);
}
pub const __API_DEPRECATED_REP_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:336:13
pub const __API_DR_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:339:17
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN0(msg: anytype, arg0: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_DR_BEGIN(msg, arg0);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13) ++ __API_DR_BEGIN(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13) ++ __API_DR_BEGIN(msg, arg14);
}
pub inline fn __API_DEPRECATED_WITH_REPLACEMENT_BEGIN15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13) ++ __API_DR_BEGIN(msg, arg14) ++ __API_DR_BEGIN(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_DR_BEGIN(msg, arg0) ++ __API_DR_BEGIN(msg, arg1) ++ __API_DR_BEGIN(msg, arg2) ++ __API_DR_BEGIN(msg, arg3) ++ __API_DR_BEGIN(msg, arg4) ++ __API_DR_BEGIN(msg, arg5) ++ __API_DR_BEGIN(msg, arg6) ++ __API_DR_BEGIN(msg, arg7) ++ __API_DR_BEGIN(msg, arg8) ++ __API_DR_BEGIN(msg, arg9) ++ __API_DR_BEGIN(msg, arg10) ++ __API_DR_BEGIN(msg, arg11) ++ __API_DR_BEGIN(msg, arg12) ++ __API_DR_BEGIN(msg, arg13) ++ __API_DR_BEGIN(msg, arg14) ++ __API_DR_BEGIN(msg, arg15);
}
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:360:13
pub const __API_O = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:364:9
pub inline fn __API_OBSOLETED_MSG0(msg: anytype, arg0: anytype) @TypeOf(__API_O(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_O(msg, arg0);
}
pub inline fn __API_OBSOLETED_MSG1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1);
}
pub inline fn __API_OBSOLETED_MSG2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2);
}
pub inline fn __API_OBSOLETED_MSG3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3);
}
pub inline fn __API_OBSOLETED_MSG4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4);
}
pub inline fn __API_OBSOLETED_MSG5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5);
}
pub inline fn __API_OBSOLETED_MSG6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6);
}
pub inline fn __API_OBSOLETED_MSG7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7);
}
pub inline fn __API_OBSOLETED_MSG8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8);
}
pub inline fn __API_OBSOLETED_MSG9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9);
}
pub inline fn __API_OBSOLETED_MSG10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10);
}
pub inline fn __API_OBSOLETED_MSG11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11);
}
pub inline fn __API_OBSOLETED_MSG12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12);
}
pub inline fn __API_OBSOLETED_MSG13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13);
}
pub inline fn __API_OBSOLETED_MSG14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13) ++ __API_O(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13) ++ __API_O(msg, arg14);
}
pub inline fn __API_OBSOLETED_MSG15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13) ++ __API_O(msg, arg14) ++ __API_O(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_O(msg, arg0) ++ __API_O(msg, arg1) ++ __API_O(msg, arg2) ++ __API_O(msg, arg3) ++ __API_O(msg, arg4) ++ __API_O(msg, arg5) ++ __API_O(msg, arg6) ++ __API_O(msg, arg7) ++ __API_O(msg, arg8) ++ __API_O(msg, arg9) ++ __API_O(msg, arg10) ++ __API_O(msg, arg11) ++ __API_O(msg, arg12) ++ __API_O(msg, arg13) ++ __API_O(msg, arg14) ++ __API_O(msg, arg15);
}
pub const __API_OBSOLETED_MSG_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:382:13
pub const __API_O_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:384:9
pub inline fn __API_OBSOLETED_BEGIN0(msg: anytype, arg0: anytype) @TypeOf(__API_O_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_O_BEGIN(msg, arg0);
}
pub inline fn __API_OBSOLETED_BEGIN1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1);
}
pub inline fn __API_OBSOLETED_BEGIN2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2);
}
pub inline fn __API_OBSOLETED_BEGIN3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3);
}
pub inline fn __API_OBSOLETED_BEGIN4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4);
}
pub inline fn __API_OBSOLETED_BEGIN5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5);
}
pub inline fn __API_OBSOLETED_BEGIN6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6);
}
pub inline fn __API_OBSOLETED_BEGIN7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7);
}
pub inline fn __API_OBSOLETED_BEGIN8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8);
}
pub inline fn __API_OBSOLETED_BEGIN9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9);
}
pub inline fn __API_OBSOLETED_BEGIN10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10);
}
pub inline fn __API_OBSOLETED_BEGIN11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11);
}
pub inline fn __API_OBSOLETED_BEGIN12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12);
}
pub inline fn __API_OBSOLETED_BEGIN13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13);
}
pub inline fn __API_OBSOLETED_BEGIN14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13) ++ __API_O_BEGIN(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13) ++ __API_O_BEGIN(msg, arg14);
}
pub inline fn __API_OBSOLETED_BEGIN15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13) ++ __API_O_BEGIN(msg, arg14) ++ __API_O_BEGIN(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_O_BEGIN(msg, arg0) ++ __API_O_BEGIN(msg, arg1) ++ __API_O_BEGIN(msg, arg2) ++ __API_O_BEGIN(msg, arg3) ++ __API_O_BEGIN(msg, arg4) ++ __API_O_BEGIN(msg, arg5) ++ __API_O_BEGIN(msg, arg6) ++ __API_O_BEGIN(msg, arg7) ++ __API_O_BEGIN(msg, arg8) ++ __API_O_BEGIN(msg, arg9) ++ __API_O_BEGIN(msg, arg10) ++ __API_O_BEGIN(msg, arg11) ++ __API_O_BEGIN(msg, arg12) ++ __API_O_BEGIN(msg, arg13) ++ __API_O_BEGIN(msg, arg14) ++ __API_O_BEGIN(msg, arg15);
}
pub const __API_OBSOLETED_BEGIN_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:402:13
pub const __API_OR = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:405:13
pub inline fn __API_OBSOLETED_REP0(msg: anytype, arg0: anytype) @TypeOf(__API_OR(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_OR(msg, arg0);
}
pub inline fn __API_OBSOLETED_REP1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1);
}
pub inline fn __API_OBSOLETED_REP2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2);
}
pub inline fn __API_OBSOLETED_REP3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3);
}
pub inline fn __API_OBSOLETED_REP4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4);
}
pub inline fn __API_OBSOLETED_REP5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5);
}
pub inline fn __API_OBSOLETED_REP6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6);
}
pub inline fn __API_OBSOLETED_REP7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7);
}
pub inline fn __API_OBSOLETED_REP8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8);
}
pub inline fn __API_OBSOLETED_REP9(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9);
}
pub inline fn __API_OBSOLETED_REP10(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10);
}
pub inline fn __API_OBSOLETED_REP11(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11);
}
pub inline fn __API_OBSOLETED_REP12(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12);
}
pub inline fn __API_OBSOLETED_REP13(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13);
}
pub inline fn __API_OBSOLETED_REP14(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13) ++ __API_OR(msg, arg14)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13) ++ __API_OR(msg, arg14);
}
pub inline fn __API_OBSOLETED_REP15(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13) ++ __API_OR(msg, arg14) ++ __API_OR(msg, arg15)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_OR(msg, arg0) ++ __API_OR(msg, arg1) ++ __API_OR(msg, arg2) ++ __API_OR(msg, arg3) ++ __API_OR(msg, arg4) ++ __API_OR(msg, arg5) ++ __API_OR(msg, arg6) ++ __API_OR(msg, arg7) ++ __API_OR(msg, arg8) ++ __API_OR(msg, arg9) ++ __API_OR(msg, arg10) ++ __API_OR(msg, arg11) ++ __API_OR(msg, arg12) ++ __API_OR(msg, arg13) ++ __API_OR(msg, arg14) ++ __API_OR(msg, arg15);
}
pub const __API_OBSOLETED_REP_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:426:13
pub const __API_OR_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:429:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN0 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:434:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN1 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:435:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN2 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:436:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN3 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:437:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN4 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:438:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN5 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:439:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN6 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:440:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN7 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:441:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN8 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:442:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN9 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:443:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN10 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:444:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN11 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:445:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN12 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:446:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN13 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:447:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN14 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:448:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN15 = @compileError("unable to translate macro: undefined identifier `__API_R_BEGIN`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:449:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:450:13
pub const __API_U = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:461:13
pub inline fn __API_UNAVAILABLE0(arg0: anytype) @TypeOf(__API_U(arg0)) {
    _ = &arg0;
    return __API_U(arg0);
}
pub inline fn __API_UNAVAILABLE1(arg0: anytype, arg1: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_U(arg0) ++ __API_U(arg1);
}
pub inline fn __API_UNAVAILABLE2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2);
}
pub inline fn __API_UNAVAILABLE3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3);
}
pub inline fn __API_UNAVAILABLE4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4);
}
pub inline fn __API_UNAVAILABLE5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5);
}
pub inline fn __API_UNAVAILABLE6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6);
}
pub inline fn __API_UNAVAILABLE7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7);
}
pub inline fn __API_UNAVAILABLE8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8);
}
pub inline fn __API_UNAVAILABLE9(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9);
}
pub inline fn __API_UNAVAILABLE10(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10);
}
pub inline fn __API_UNAVAILABLE11(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11);
}
pub inline fn __API_UNAVAILABLE12(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12);
}
pub inline fn __API_UNAVAILABLE13(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13);
}
pub inline fn __API_UNAVAILABLE14(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13) ++ __API_U(arg14)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13) ++ __API_U(arg14);
}
pub inline fn __API_UNAVAILABLE15(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13) ++ __API_U(arg14) ++ __API_U(arg15)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8) ++ __API_U(arg9) ++ __API_U(arg10) ++ __API_U(arg11) ++ __API_U(arg12) ++ __API_U(arg13) ++ __API_U(arg14) ++ __API_U(arg15);
}
pub const __API_UNAVAILABLE_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:479:13
pub const __API_U_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:481:13
pub inline fn __API_UNAVAILABLE_BEGIN0(arg0: anytype) @TypeOf(__API_U_BEGIN(arg0)) {
    _ = &arg0;
    return __API_U_BEGIN(arg0);
}
pub inline fn __API_UNAVAILABLE_BEGIN1(arg0: anytype, arg1: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1);
}
pub inline fn __API_UNAVAILABLE_BEGIN2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2);
}
pub inline fn __API_UNAVAILABLE_BEGIN3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3);
}
pub inline fn __API_UNAVAILABLE_BEGIN4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4);
}
pub inline fn __API_UNAVAILABLE_BEGIN5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5);
}
pub inline fn __API_UNAVAILABLE_BEGIN6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6);
}
pub inline fn __API_UNAVAILABLE_BEGIN7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7);
}
pub inline fn __API_UNAVAILABLE_BEGIN8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8);
}
pub inline fn __API_UNAVAILABLE_BEGIN9(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9);
}
pub inline fn __API_UNAVAILABLE_BEGIN10(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10);
}
pub inline fn __API_UNAVAILABLE_BEGIN11(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11);
}
pub inline fn __API_UNAVAILABLE_BEGIN12(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12);
}
pub inline fn __API_UNAVAILABLE_BEGIN13(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13);
}
pub inline fn __API_UNAVAILABLE_BEGIN14(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13) ++ __API_U_BEGIN(arg14)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13) ++ __API_U_BEGIN(arg14);
}
pub inline fn __API_UNAVAILABLE_BEGIN15(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype, arg10: anytype, arg11: anytype, arg12: anytype, arg13: anytype, arg14: anytype, arg15: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13) ++ __API_U_BEGIN(arg14) ++ __API_U_BEGIN(arg15)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    _ = &arg9;
    _ = &arg10;
    _ = &arg11;
    _ = &arg12;
    _ = &arg13;
    _ = &arg14;
    _ = &arg15;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8) ++ __API_U_BEGIN(arg9) ++ __API_U_BEGIN(arg10) ++ __API_U_BEGIN(arg11) ++ __API_U_BEGIN(arg12) ++ __API_U_BEGIN(arg13) ++ __API_U_BEGIN(arg14) ++ __API_U_BEGIN(arg15);
}
pub const __API_UNAVAILABLE_BEGIN_GET_MACRO_93585900 = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:499:13
pub const __swift_compiler_version_at_least = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternal.h:521:13
pub const __AVAILABILITY_INTERNAL_LEGACY__ = "";
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = @as(c_int, 1);
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2833:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2834:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2835:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2837:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2841:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2843:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2848:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2852:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2853:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2855:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2859:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2861:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2865:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2867:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2872:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2876:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2877:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2879:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2883:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2885:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2889:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2891:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2896:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2901:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2905:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2907:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2911:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2913:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2917:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2919:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2923:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2925:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2929:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2931:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2935:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2937:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2941:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2943:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2947:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2949:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2953:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2954:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2955:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2956:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2957:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2958:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2960:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2964:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2966:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2971:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2975:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2976:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2978:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2982:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2984:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2988:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2990:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2995:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:2999:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3000:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3002:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3006:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3008:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3012:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3014:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3019:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3023:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3024:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3026:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3030:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3032:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3036:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3038:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3042:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3044:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3048:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3050:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3054:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3056:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3060:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3062:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3066:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3068:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3072:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3074:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3075:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3076:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3077:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3079:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3083:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3085:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3090:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3094:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3095:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3097:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3101:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3103:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3107:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3109:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3114:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3118:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3119:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3121:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3125:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3127:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3131:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3133:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3138:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3142:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3143:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3145:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3149:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3151:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3155:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3157:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3163:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3167:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3169:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3173:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3175:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3179:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3181:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3185:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3186:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3187:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3188:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3189:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3190:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3192:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3196:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3198:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3203:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3207:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3208:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3210:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3214:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3216:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3220:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3222:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3227:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3231:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3232:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3234:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3238:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3240:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3244:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3246:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3251:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3255:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3256:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3258:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3262:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3264:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3268:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3270:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3274:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3276:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3280:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3282:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3286:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3288:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3292:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3293:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3294:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3295:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3296:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3297:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3298:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3300:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3304:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3306:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3311:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3315:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3316:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3318:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3322:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3324:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3328:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3330:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3335:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3339:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3340:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3342:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3346:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3348:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3352:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3354:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3359:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3363:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3365:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3369:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3371:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3377:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3381:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3383:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3387:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3389:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3393:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3394:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3395:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3396:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3397:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3398:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3400:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3404:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3406:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3411:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3415:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3416:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3418:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3422:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3424:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3428:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3430:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3435:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3439:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3440:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3442:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3446:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3448:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3452:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3454:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3459:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3463:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3464:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3466:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3470:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3472:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3476:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3478:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3482:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3484:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3488:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3489:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3490:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3491:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3492:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3493:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3495:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3499:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3501:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3506:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3510:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3511:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3513:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3517:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3519:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3523:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3525:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3530:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3534:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3535:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3537:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3541:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3543:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3547:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3549:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3554:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3558:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3559:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3561:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3565:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3567:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3571:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3573:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3577:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3578:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3579:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3580:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3581:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3582:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3584:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3588:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3590:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3595:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3599:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3600:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3602:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3606:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3608:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3612:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3614:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3619:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3623:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3624:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3626:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3630:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3632:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3636:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3638:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3643:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3647:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3648:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3650:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3654:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3656:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3660:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3661:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3662:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3663:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3664:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3665:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3667:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3671:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3673:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3678:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3682:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3683:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3685:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3689:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3691:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3695:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3697:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3702:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3706:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3707:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3709:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3713:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3715:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3719:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3721:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3726:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3730:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3731:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3732:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3734:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3738:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3739:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3740:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3741:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3743:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3747:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3748:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3749:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3751:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3755:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3757:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3762:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3766:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3767:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3769:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3773:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3775:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3779:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3781:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3786:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3790:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3791:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3793:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3797:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3799:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3803:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3805:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3810:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3814:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3816:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3820:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3822:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3826:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3828:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3832:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3834:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3838:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3840:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3844:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3846:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3850:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3852:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3856:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3858:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3862:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3864:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3869:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3873:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3874:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3875:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3876:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3877:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3878:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3880:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3884:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3886:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3890:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3891:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3893:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3897:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3899:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3903:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3905:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3910:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3914:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3915:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3917:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3921:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3923:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3927:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3929:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3934:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3938:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3940:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3941:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3943:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3947:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3948:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3950:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3954:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3956:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3960:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3962:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3967:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3971:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3972:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3974:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3978:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3980:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3984:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3986:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3991:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3995:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3996:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3997:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3998:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:3999:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4001:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4005:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4007:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4012:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4016:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4017:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4019:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4023:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4025:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4029:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4031:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4036:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4040:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4041:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4043:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4047:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4049:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4053:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4055:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4060:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4064:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4066:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4070:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4071:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4072:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4074:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4075:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4077:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4081:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4083:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4087:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4089:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4093:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4094:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4096:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4100:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4102:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4106:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4108:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4113:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4117:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4118:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4119:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4120:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4122:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4126:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4128:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4132:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4133:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4135:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4139:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4141:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4145:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4147:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4152:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4156:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4157:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4158:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4161:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4165:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4166:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4168:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4172:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4174:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4178:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4180:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4185:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4189:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4190:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4191:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4192:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4193:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4195:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4199:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4201:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4205:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4207:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4212:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4216:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4217:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4219:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4223:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4225:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4229:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4231:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4236:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4240:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4241:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4242:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4243:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4244:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4246:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4250:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4252:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4256:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4258:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4262:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4263:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4264:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4265:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4267:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4271:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4273:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4277:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4280:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4282:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4286:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4287:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4288:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4289:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4291:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4295:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4297:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4301:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4303:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4308:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4312:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4314:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4318:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4319:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4320:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4321:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4322:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4323:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4324:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4325:21
pub const __AVAILABILITY_INTERNAL__MAC_10_15 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4326:21
pub const __AVAILABILITY_INTERNAL__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4328:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4329:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4330:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4332:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4333:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4334:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4335:21
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4338:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4339:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/AvailabilityInternalLegacy.h:4340:22
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:237:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:238:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:240:17
pub const __OS_AVAILABILITY = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:263:13
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:264:13
pub const __OSX_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx_app_extension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:281:13
pub const __IOS_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios_app_extension`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:282:13
pub inline fn __OS_EXTENSION_UNAVAILABLE(_msg: anytype) @TypeOf(__OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg)) {
    _ = &_msg;
    return __OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg);
}
pub const __OSX_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:299:13
pub const __OSX_AVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:300:13
pub const __OSX_DEPRECATED = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:301:13
pub const __IOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:325:13
pub const __IOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `ios`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:327:15
pub const __IOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:329:13
pub const __IOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `ios`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:330:13
pub const __TVOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:354:13
pub const __TVOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:356:15
pub const __TVOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:358:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:359:13
pub const __WATCHOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:383:13
pub const __WATCHOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:385:15
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:387:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:388:13
pub const __SWIFT_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `swift`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:411:13
pub const __SWIFT_UNAVAILABLE_MSG = @compileError("unable to translate macro: undefined identifier `swift`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:412:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:457:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:459:13
pub const __API_AVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:460:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:480:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:481:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:483:13
pub const __API_DEPRECATED_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:484:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:486:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:487:13
pub const __API_OBSOLETED = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:490:13
pub const __API_OBSOLETED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:491:13
pub const __API_OBSOLETED_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:493:13
pub const __API_OBSOLETED_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:494:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:496:13
pub const __API_OBSOLETED_WITH_REPLACEMENT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:497:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:507:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:509:13
pub const __API_UNAVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:510:13
pub const __SPI_AVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:595:11
pub const __SPI_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:599:11
pub const __SPI_AVAILABLE_END = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:603:11
pub const __SPI_DEPRECATED = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:607:11
pub const __SPI_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/Availability.h:611:11
pub const __TYPES_H_ = "";
pub const _SYS__TYPES_H_ = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_ARM__TYPES_H_ = "";
pub const USE_CLANG_TYPES = @as(c_int, 0);
pub const __DARWIN_NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const __offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/sys/_types.h:97:9
pub const __strfmonlike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_types.h:34:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_types.h:36:9
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex) - @as(c_int, 1);
pub const __DARWIN_WEOF = @import("std").zig.c_translation.cast(__darwin_wint_t, -@as(c_int, 1));
pub const _FORTIFY_SOURCE = @as(c_int, 2);
pub const _VA_LIST_T = "";
pub const USE_CLANG_STDARG = @as(c_int, 0);
pub const _BSD_MACHINE_TYPES_H_ = "";
pub const _ARM_MACHTYPES_H_ = "";
pub const _MACHTYPES_H_ = "";
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _U_INT8_T = "";
pub const _U_INT16_T = "";
pub const _U_INT32_T = "";
pub const _U_INT64_T = "";
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub const USER_ADDR_NULL = @import("std").zig.c_translation.cast(user_addr_t, @as(c_int, 0));
pub inline fn CAST_USER_ADDR_T(a_ptr: anytype) user_addr_t {
    _ = &a_ptr;
    return @import("std").zig.c_translation.cast(user_addr_t, @import("std").zig.c_translation.cast(usize, a_ptr));
}
pub const USE_CLANG_STDDEF = @as(c_int, 0);
pub const _SIZE_T = "";
pub const NULL = __DARWIN_NULL;
pub const _SYS_STDIO_H_ = "";
pub const RENAME_SECLUDE = @as(c_int, 0x00000001);
pub const RENAME_SWAP = @as(c_int, 0x00000002);
pub const RENAME_EXCL = @as(c_int, 0x00000004);
pub const RENAME_RESERVED1 = @as(c_int, 0x00000008);
pub const RENAME_NOFOLLOW_ANY = @as(c_int, 0x00000010);
pub const __PRINTF_H_ = "";
pub const _FSTDIO = "";
pub const _SEEK_SET_H_ = "";
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_HOLE = @as(c_int, 3);
pub const SEEK_DATA = @as(c_int, 4);
pub const __SLBF = @as(c_int, 0x0001);
pub const __SNBF = @as(c_int, 0x0002);
pub const __SRD = @as(c_int, 0x0004);
pub const __SWR = @as(c_int, 0x0008);
pub const __SRW = @as(c_int, 0x0010);
pub const __SEOF = @as(c_int, 0x0020);
pub const __SERR = @as(c_int, 0x0040);
pub const __SMBF = @as(c_int, 0x0080);
pub const __SAPP = @as(c_int, 0x0100);
pub const __SSTR = @as(c_int, 0x0200);
pub const __SOPT = @as(c_int, 0x0400);
pub const __SNPT = @as(c_int, 0x0800);
pub const __SOFF = @as(c_int, 0x1000);
pub const __SMOD = @as(c_int, 0x2000);
pub const __SALC = @as(c_int, 0x4000);
pub const __SIGN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 1024);
pub const EOF = -@as(c_int, 1);
pub const FOPEN_MAX = @as(c_int, 20);
pub const FILENAME_MAX = @as(c_int, 1024);
pub const P_tmpdir = "/var/tmp/";
pub const L_tmpnam = @as(c_int, 1024);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 308915776, .decimal);
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_stdio.h:217:9: warning: macro 'stdin' contains a runtime value, translated to function
pub inline fn stdin() @TypeOf(__stdinp) {
    return __stdinp;
}
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_stdio.h:218:9: warning: macro 'stdout' contains a runtime value, translated to function
pub inline fn stdout() @TypeOf(__stdoutp) {
    return __stdoutp;
}
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_stdio.h:219:9: warning: macro 'stderr' contains a runtime value, translated to function
pub inline fn stderr() @TypeOf(__stderrp) {
    return __stderrp;
}
pub const _CTERMID_H_ = "";
pub const L_ctermid = @as(c_int, 1024);
pub const __sgetc = @compileError("TODO unary inc/dec expr");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_stdio.h:359:9
pub inline fn __sfeof(p: anytype) @TypeOf((p.*._flags & __SEOF) != @as(c_int, 0)) {
    _ = &p;
    return (p.*._flags & __SEOF) != @as(c_int, 0);
}
pub inline fn __sferror(p: anytype) @TypeOf((p.*._flags & __SERR) != @as(c_int, 0)) {
    _ = &p;
    return (p.*._flags & __SERR) != @as(c_int, 0);
}
pub const __sclearerr = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.4.sdk/usr/include/_stdio.h:383:9
pub inline fn __sfileno(p: anytype) @TypeOf(p.*._file) {
    _ = &p;
    return p.*._file;
}
pub const _OFF_T = "";
pub const _SSIZE_T = "";
pub inline fn fropen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @"fn", @as(c_int, 0), @as(c_int, 0), @as(c_int, 0))) {
    _ = &cookie;
    _ = &@"fn";
    return funopen(cookie, @"fn", @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
}
pub inline fn fwopen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @as(c_int, 0), @"fn", @as(c_int, 0), @as(c_int, 0))) {
    _ = &cookie;
    _ = &@"fn";
    return funopen(cookie, @as(c_int, 0), @"fn", @as(c_int, 0), @as(c_int, 0));
}
pub inline fn feof_unlocked(p: anytype) @TypeOf(__sfeof(p)) {
    _ = &p;
    return __sfeof(p);
}
pub inline fn ferror_unlocked(p: anytype) @TypeOf(__sferror(p)) {
    _ = &p;
    return __sferror(p);
}
pub inline fn clearerr_unlocked(p: anytype) @TypeOf(__sclearerr(p)) {
    _ = &p;
    return __sclearerr(p);
}
pub inline fn fileno_unlocked(p: anytype) @TypeOf(__sfileno(p)) {
    _ = &p;
    return __sfileno(p);
}
pub const _SECURE__STDIO_H_ = "";
pub const _SECURE__COMMON_H_ = "";
pub const _USE_FORTIFY_LEVEL = @as(c_int, 2);
pub inline fn __darwin_obsz0(object: anytype) @TypeOf(__builtin_object_size(object, @as(c_int, 0))) {
    _ = &object;
    return __builtin_object_size(object, @as(c_int, 0));
}
pub inline fn __darwin_obsz(object: anytype) @TypeOf(__builtin_object_size(object, if (_USE_FORTIFY_LEVEL > @as(c_int, 1)) @as(c_int, 1) else @as(c_int, 0))) {
    _ = &object;
    return __builtin_object_size(object, if (_USE_FORTIFY_LEVEL > @as(c_int, 1)) @as(c_int, 1) else @as(c_int, 0));
}
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _UINT32_T = "";
pub const _UINT64_T = "";
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const API = @compileError("unable to translate macro: undefined identifier `__visibility__`");
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:18:17
pub const __need___va_list = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const __STDARG_H = "";
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /Users/thomvanoorschot/zig/0.15.0-dev.483+837e0f9c3/files/lib/include/__stdarg_va_copy.h:11:9
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'");
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:29:13
pub const CIMGUI_API = EXTERN ++ API;
pub const CONST = @compileError("unable to translate C expr: unexpected token 'const'");
// /Users/thomvanoorschot/Development/zignite/libs/cimgui.h:33:9
pub const IM_UNICODE_CODEPOINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex);
pub const IMGUI_HAS_DOCK = @as(c_int, 1);
pub const ImDrawCallback_ResetRenderState = @import("std").zig.c_translation.cast(ImDrawCallback, -@as(c_int, 8));
pub const _TIME_H_ = "";
pub const _CLOCK_T = "";
pub const _TIME_T = "";
pub const _STRUCT_TIMESPEC = struct_timespec;
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const __CLOCK_AVAILABILITY = __OSX_AVAILABLE(@as(f64, 10.12)) ++ __IOS_AVAILABLE(@as(f64, 10.0)) ++ __TVOS_AVAILABLE(@as(f64, 10.0)) ++ __WATCHOS_AVAILABLE(@as(f64, 3.0));
pub const CLOCK_REALTIME = _CLOCK_REALTIME;
pub const CLOCK_MONOTONIC = _CLOCK_MONOTONIC;
pub const CLOCK_MONOTONIC_RAW = _CLOCK_MONOTONIC_RAW;
pub const CLOCK_MONOTONIC_RAW_APPROX = _CLOCK_MONOTONIC_RAW_APPROX;
pub const CLOCK_UPTIME_RAW = _CLOCK_UPTIME_RAW;
pub const CLOCK_UPTIME_RAW_APPROX = _CLOCK_UPTIME_RAW_APPROX;
pub const CLOCK_PROCESS_CPUTIME_ID = _CLOCK_PROCESS_CPUTIME_ID;
pub const CLOCK_THREAD_CPUTIME_ID = _CLOCK_THREAD_CPUTIME_ID;
pub const TIME_UTC = @as(c_int, 1);
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const __sbuf = struct___sbuf;
pub const __sFILEX = struct___sFILEX;
pub const __sFILE = struct___sFILE;
pub const timespec = struct_timespec;
