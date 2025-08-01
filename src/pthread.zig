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
pub const time_t = c_longlong;
const union_unnamed_1 = extern union {
    __i: [10]c_int,
    __vi: [10]c_int,
    __s: [10]c_ulong,
};
pub const pthread_attr_t = extern struct {
    __u: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
};
const union_unnamed_2 = extern union {
    __i: [6]c_int,
    __vi: [6]c_int,
    __p: [6]?*volatile anyopaque,
};
pub const pthread_mutex_t = extern struct {
    __u: union_unnamed_2 = @import("std").mem.zeroes(union_unnamed_2),
};
const union_unnamed_3 = extern union {
    __i: [12]c_int,
    __vi: [12]c_int,
    __p: [12]?*anyopaque,
};
pub const pthread_cond_t = extern struct {
    __u: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
};
const union_unnamed_4 = extern union {
    __i: [14]c_int,
    __vi: [14]c_int,
    __p: [7]?*anyopaque,
};
pub const pthread_rwlock_t = extern struct {
    __u: union_unnamed_4 = @import("std").mem.zeroes(union_unnamed_4),
};
const union_unnamed_5 = extern union {
    __i: [5]c_int,
    __vi: [5]c_int,
    __p: [5]?*anyopaque,
};
pub const pthread_barrier_t = extern struct {
    __u: union_unnamed_5 = @import("std").mem.zeroes(union_unnamed_5),
};
pub const clockid_t = c_int;
pub const struct_timespec = extern struct {
    tv_sec: time_t = @import("std").mem.zeroes(time_t),
    tv_nsec: c_long = @import("std").mem.zeroes(c_long),
};
pub const struct___pthread = opaque {};
pub const pthread_t = ?*struct___pthread;
pub const pthread_once_t = c_int;
pub const pthread_key_t = c_uint;
pub const pthread_spinlock_t = c_int;
pub const pthread_mutexattr_t = extern struct {
    __attr: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const pthread_condattr_t = extern struct {
    __attr: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const pthread_barrierattr_t = extern struct {
    __attr: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const pthread_rwlockattr_t = extern struct {
    __attr: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const struct___sigset_t = extern struct {
    __bits: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = struct___sigset_t;
pub const pid_t = c_int;
const struct_unnamed_6 = extern struct {
    __reserved1: time_t = @import("std").mem.zeroes(time_t),
    __reserved2: c_long = @import("std").mem.zeroes(c_long),
};
pub const struct_sched_param = extern struct {
    sched_priority: c_int = @import("std").mem.zeroes(c_int),
    __reserved1: c_int = @import("std").mem.zeroes(c_int),
    __reserved2: [2]struct_unnamed_6 = @import("std").mem.zeroes([2]struct_unnamed_6),
    __reserved3: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn sched_get_priority_max(c_int) c_int;
pub extern fn sched_get_priority_min(c_int) c_int;
pub extern fn sched_getparam(pid_t, [*c]struct_sched_param) c_int;
pub extern fn sched_getscheduler(pid_t) c_int;
pub extern fn sched_rr_get_interval(pid_t, [*c]struct_timespec) c_int;
pub extern fn sched_setparam(pid_t, [*c]const struct_sched_param) c_int;
pub extern fn sched_setscheduler(pid_t, c_int, [*c]const struct_sched_param) c_int;
pub extern fn sched_yield() c_int;
pub const timer_t = ?*anyopaque;
pub const clock_t = c_int;
pub const struct___locale_struct = opaque {};
pub const locale_t = ?*struct___locale_struct;
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
    tm_zone: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub extern fn clock() clock_t;
pub extern fn time([*c]time_t) time_t;
pub extern fn difftime(time_t, time_t) f64;
pub extern fn mktime([*c]struct_tm) time_t;
pub extern fn strftime(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm) usize;
pub extern fn gmtime([*c]const time_t) [*c]struct_tm;
pub extern fn localtime([*c]const time_t) [*c]struct_tm;
pub extern fn asctime([*c]const struct_tm) [*c]u8;
pub extern fn ctime([*c]const time_t) [*c]u8;
pub extern fn timespec_get([*c]struct_timespec, c_int) c_int;
pub extern fn strftime_l(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm, locale_t) usize;
pub extern fn gmtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime_r(noalias [*c]const struct_tm, noalias [*c]u8) [*c]u8;
pub extern fn ctime_r([*c]const time_t, [*c]u8) [*c]u8;
pub extern fn tzset() void;
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub extern fn nanosleep([*c]const struct_timespec, [*c]struct_timespec) c_int;
pub extern fn clock_getres(clockid_t, [*c]struct_timespec) c_int;
pub extern fn clock_gettime(clockid_t, [*c]struct_timespec) c_int;
pub extern fn clock_settime(clockid_t, [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(clockid_t, c_int, [*c]const struct_timespec, [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(pid_t, [*c]clockid_t) c_int;
pub const struct_sigevent = opaque {};
pub extern fn timer_create(clockid_t, noalias ?*struct_sigevent, noalias [*c]timer_t) c_int;
pub extern fn timer_delete(timer_t) c_int;
pub extern fn timer_settime(timer_t, c_int, noalias [*c]const struct_itimerspec, noalias [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(timer_t, [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(timer_t) c_int;
pub extern var tzname: [2][*c]u8;
pub extern fn strptime(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]struct_tm) [*c]u8;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern var getdate_err: c_int;
pub extern fn getdate([*c]const u8) [*c]struct_tm;
pub extern fn stime([*c]const time_t) c_int;
pub extern fn timegm([*c]struct_tm) time_t;
pub extern fn pthread_create(noalias [*c]pthread_t, noalias [*c]const pthread_attr_t, ?*const fn (?*anyopaque) callconv(.c) ?*anyopaque, noalias ?*anyopaque) c_int;
pub extern fn pthread_detach(pthread_t) c_int;
pub extern fn pthread_exit(?*anyopaque) void;
pub extern fn pthread_join(pthread_t, [*c]?*anyopaque) c_int;
pub extern fn pthread_self() pthread_t;
pub extern fn pthread_equal(pthread_t, pthread_t) c_int;
pub extern fn pthread_setcancelstate(c_int, [*c]c_int) c_int;
pub extern fn pthread_setcanceltype(c_int, [*c]c_int) c_int;
pub extern fn pthread_testcancel() void;
pub extern fn pthread_cancel(pthread_t) c_int;
pub extern fn pthread_getschedparam(pthread_t, noalias [*c]c_int, noalias [*c]struct_sched_param) c_int;
pub extern fn pthread_setschedparam(pthread_t, c_int, [*c]const struct_sched_param) c_int;
pub extern fn pthread_setschedprio(pthread_t, c_int) c_int;
pub extern fn pthread_once([*c]pthread_once_t, ?*const fn () callconv(.c) void) c_int;
pub extern fn pthread_mutex_init(noalias [*c]pthread_mutex_t, noalias [*c]const pthread_mutexattr_t) c_int;
pub extern fn pthread_mutex_lock([*c]pthread_mutex_t) c_int;
pub extern fn pthread_mutex_unlock([*c]pthread_mutex_t) c_int;
pub extern fn pthread_mutex_trylock([*c]pthread_mutex_t) c_int;
pub extern fn pthread_mutex_timedlock(noalias [*c]pthread_mutex_t, noalias [*c]const struct_timespec) c_int;
pub extern fn pthread_mutex_destroy([*c]pthread_mutex_t) c_int;
pub extern fn pthread_mutex_consistent([*c]pthread_mutex_t) c_int;
pub extern fn pthread_mutex_getprioceiling(noalias [*c]const pthread_mutex_t, noalias [*c]c_int) c_int;
pub extern fn pthread_mutex_setprioceiling(noalias [*c]pthread_mutex_t, c_int, noalias [*c]c_int) c_int;
pub extern fn pthread_cond_init(noalias [*c]pthread_cond_t, noalias [*c]const pthread_condattr_t) c_int;
pub extern fn pthread_cond_destroy([*c]pthread_cond_t) c_int;
pub extern fn pthread_cond_wait(noalias [*c]pthread_cond_t, noalias [*c]pthread_mutex_t) c_int;
pub extern fn pthread_cond_timedwait(noalias [*c]pthread_cond_t, noalias [*c]pthread_mutex_t, noalias [*c]const struct_timespec) c_int;
pub extern fn pthread_cond_broadcast([*c]pthread_cond_t) c_int;
pub extern fn pthread_cond_signal([*c]pthread_cond_t) c_int;
pub extern fn pthread_rwlock_init(noalias [*c]pthread_rwlock_t, noalias [*c]const pthread_rwlockattr_t) c_int;
pub extern fn pthread_rwlock_destroy([*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_rdlock([*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_tryrdlock([*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_timedrdlock(noalias [*c]pthread_rwlock_t, noalias [*c]const struct_timespec) c_int;
pub extern fn pthread_rwlock_wrlock([*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_trywrlock([*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_timedwrlock(noalias [*c]pthread_rwlock_t, noalias [*c]const struct_timespec) c_int;
pub extern fn pthread_rwlock_unlock([*c]pthread_rwlock_t) c_int;
pub extern fn pthread_spin_init([*c]pthread_spinlock_t, c_int) c_int;
pub extern fn pthread_spin_destroy([*c]pthread_spinlock_t) c_int;
pub extern fn pthread_spin_lock([*c]pthread_spinlock_t) c_int;
pub extern fn pthread_spin_trylock([*c]pthread_spinlock_t) c_int;
pub extern fn pthread_spin_unlock([*c]pthread_spinlock_t) c_int;
pub extern fn pthread_barrier_init(noalias [*c]pthread_barrier_t, noalias [*c]const pthread_barrierattr_t, c_uint) c_int;
pub extern fn pthread_barrier_destroy([*c]pthread_barrier_t) c_int;
pub extern fn pthread_barrier_wait([*c]pthread_barrier_t) c_int;
pub extern fn pthread_key_create([*c]pthread_key_t, ?*const fn (?*anyopaque) callconv(.c) void) c_int;
pub extern fn pthread_key_delete(pthread_key_t) c_int;
pub extern fn pthread_getspecific(pthread_key_t) ?*anyopaque;
pub extern fn pthread_setspecific(pthread_key_t, ?*const anyopaque) c_int;
pub extern fn pthread_attr_init([*c]pthread_attr_t) c_int;
pub extern fn pthread_attr_destroy([*c]pthread_attr_t) c_int;
pub extern fn pthread_attr_getguardsize(noalias [*c]const pthread_attr_t, noalias [*c]usize) c_int;
pub extern fn pthread_attr_setguardsize([*c]pthread_attr_t, usize) c_int;
pub extern fn pthread_attr_getstacksize(noalias [*c]const pthread_attr_t, noalias [*c]usize) c_int;
pub extern fn pthread_attr_setstacksize([*c]pthread_attr_t, usize) c_int;
pub extern fn pthread_attr_getdetachstate([*c]const pthread_attr_t, [*c]c_int) c_int;
pub extern fn pthread_attr_setdetachstate([*c]pthread_attr_t, c_int) c_int;
pub extern fn pthread_attr_getstack(noalias [*c]const pthread_attr_t, noalias [*c]?*anyopaque, noalias [*c]usize) c_int;
pub extern fn pthread_attr_setstack([*c]pthread_attr_t, ?*anyopaque, usize) c_int;
pub extern fn pthread_attr_getscope(noalias [*c]const pthread_attr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_attr_setscope([*c]pthread_attr_t, c_int) c_int;
pub extern fn pthread_attr_getschedpolicy(noalias [*c]const pthread_attr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_attr_setschedpolicy([*c]pthread_attr_t, c_int) c_int;
pub extern fn pthread_attr_getschedparam(noalias [*c]const pthread_attr_t, noalias [*c]struct_sched_param) c_int;
pub extern fn pthread_attr_setschedparam(noalias [*c]pthread_attr_t, noalias [*c]const struct_sched_param) c_int;
pub extern fn pthread_attr_getinheritsched(noalias [*c]const pthread_attr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_attr_setinheritsched([*c]pthread_attr_t, c_int) c_int;
pub extern fn pthread_mutexattr_destroy([*c]pthread_mutexattr_t) c_int;
pub extern fn pthread_mutexattr_getprioceiling(noalias [*c]const pthread_mutexattr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_mutexattr_getprotocol(noalias [*c]const pthread_mutexattr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_mutexattr_getpshared(noalias [*c]const pthread_mutexattr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_mutexattr_getrobust(noalias [*c]const pthread_mutexattr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_mutexattr_gettype(noalias [*c]const pthread_mutexattr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_mutexattr_init([*c]pthread_mutexattr_t) c_int;
pub extern fn pthread_mutexattr_setprioceiling([*c]pthread_mutexattr_t, c_int) c_int;
pub extern fn pthread_mutexattr_setprotocol([*c]pthread_mutexattr_t, c_int) c_int;
pub extern fn pthread_mutexattr_setpshared([*c]pthread_mutexattr_t, c_int) c_int;
pub extern fn pthread_mutexattr_setrobust([*c]pthread_mutexattr_t, c_int) c_int;
pub extern fn pthread_mutexattr_settype([*c]pthread_mutexattr_t, c_int) c_int;
pub extern fn pthread_condattr_init([*c]pthread_condattr_t) c_int;
pub extern fn pthread_condattr_destroy([*c]pthread_condattr_t) c_int;
pub extern fn pthread_condattr_setclock([*c]pthread_condattr_t, clockid_t) c_int;
pub extern fn pthread_condattr_setpshared([*c]pthread_condattr_t, c_int) c_int;
pub extern fn pthread_condattr_getclock(noalias [*c]const pthread_condattr_t, noalias [*c]clockid_t) c_int;
pub extern fn pthread_condattr_getpshared(noalias [*c]const pthread_condattr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_rwlockattr_init([*c]pthread_rwlockattr_t) c_int;
pub extern fn pthread_rwlockattr_destroy([*c]pthread_rwlockattr_t) c_int;
pub extern fn pthread_rwlockattr_setpshared([*c]pthread_rwlockattr_t, c_int) c_int;
pub extern fn pthread_rwlockattr_getpshared(noalias [*c]const pthread_rwlockattr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_barrierattr_destroy([*c]pthread_barrierattr_t) c_int;
pub extern fn pthread_barrierattr_getpshared(noalias [*c]const pthread_barrierattr_t, noalias [*c]c_int) c_int;
pub extern fn pthread_barrierattr_init([*c]pthread_barrierattr_t) c_int;
pub extern fn pthread_barrierattr_setpshared([*c]pthread_barrierattr_t, c_int) c_int;
pub extern fn pthread_atfork(?*const fn () callconv(.c) void, ?*const fn () callconv(.c) void, ?*const fn () callconv(.c) void) c_int;
pub extern fn pthread_getconcurrency() c_int;
pub extern fn pthread_setconcurrency(c_int) c_int;
pub extern fn pthread_getcpuclockid(pthread_t, [*c]clockid_t) c_int;
pub const struct___ptcb = extern struct {
    __f: ?*const fn (?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.c) void),
    __x: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __next: [*c]struct___ptcb = @import("std").mem.zeroes([*c]struct___ptcb),
};
pub extern fn _pthread_cleanup_push([*c]struct___ptcb, ?*const fn (?*anyopaque) callconv(.c) void, ?*anyopaque) void;
pub extern fn _pthread_cleanup_pop([*c]struct___ptcb, c_int) void;
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
pub const _PTHREAD_H = "";
pub const _FEATURES_H = "";
pub const _BSD_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// ./features.h:27:9
pub const __inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// ./features.h:33:9
pub const __REDIR = @compileError("unable to translate C expr: unexpected token '__typeof__'");
// ./features.h:45:9
pub const __NEED_time_t = "";
pub const __NEED_clockid_t = "";
pub const __NEED_struct_timespec = "";
pub const __NEED_sigset_t = "";
pub const __NEED_pthread_t = "";
pub const __NEED_pthread_attr_t = "";
pub const __NEED_pthread_mutexattr_t = "";
pub const __NEED_pthread_condattr_t = "";
pub const __NEED_pthread_rwlockattr_t = "";
pub const __NEED_pthread_barrierattr_t = "";
pub const __NEED_pthread_mutex_t = "";
pub const __NEED_pthread_cond_t = "";
pub const __NEED_pthread_rwlock_t = "";
pub const __NEED_pthread_barrier_t = "";
pub const __NEED_pthread_spinlock_t = "";
pub const __NEED_pthread_key_t = "";
pub const __NEED_pthread_once_t = "";
pub const __NEED_size_t = "";
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __LONG_MAX = __LONG_MAX__;
pub const _Addr = __PTRDIFF_TYPE__;
pub const _Int64 = __INT64_TYPE__;
pub const _Reg = __PTRDIFF_TYPE__;
pub const __DEFINED_time_t = "";
pub const __DEFINED_pthread_attr_t = "";
pub const __DEFINED_pthread_mutex_t = "";
pub const __DEFINED_pthread_cond_t = "";
pub const __DEFINED_pthread_rwlock_t = "";
pub const __DEFINED_pthread_barrier_t = "";
pub const __DEFINED_size_t = "";
pub const __DEFINED_clockid_t = "";
pub const __DEFINED_struct_timespec = "";
pub const __DEFINED_pthread_t = "";
pub const __DEFINED_pthread_once_t = "";
pub const __DEFINED_pthread_key_t = "";
pub const __DEFINED_pthread_spinlock_t = "";
pub const __DEFINED_pthread_mutexattr_t = "";
pub const __DEFINED_pthread_condattr_t = "";
pub const __DEFINED_pthread_barrierattr_t = "";
pub const __DEFINED_pthread_rwlockattr_t = "";
pub const __DEFINED_sigset_t = "";
pub const _SCHED_H = "";
pub const __NEED_pid_t = "";
pub const __DEFINED_pid_t = "";
pub const SCHED_OTHER = @as(c_int, 0);
pub const SCHED_FIFO = @as(c_int, 1);
pub const SCHED_RR = @as(c_int, 2);
pub const SCHED_BATCH = @as(c_int, 3);
pub const SCHED_IDLE = @as(c_int, 5);
pub const SCHED_DEADLINE = @as(c_int, 6);
pub const SCHED_RESET_ON_FORK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const _TIME_H = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __NEED_clock_t = "";
pub const __NEED_timer_t = "";
pub const __NEED_locale_t = "";
pub const __DEFINED_timer_t = "";
pub const __DEFINED_clock_t = "";
pub const __DEFINED_locale_t = "";
pub const __tm_gmtoff = @compileError("unable to translate macro: undefined identifier `tm_gmtoff`");
// ./time.h:36:9
pub const __tm_zone = @compileError("unable to translate macro: undefined identifier `tm_zone`");
// ./time.h:37:9
pub const CLOCKS_PER_SEC = @as(c_long, 1000000);
pub const TIME_UTC = @as(c_int, 1);
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_SGI_CYCLE = @as(c_int, 10);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const PTHREAD_CREATE_JOINABLE = @as(c_int, 0);
pub const PTHREAD_CREATE_DETACHED = @as(c_int, 1);
pub const PTHREAD_MUTEX_NORMAL = @as(c_int, 0);
pub const PTHREAD_MUTEX_DEFAULT = @as(c_int, 0);
pub const PTHREAD_MUTEX_RECURSIVE = @as(c_int, 1);
pub const PTHREAD_MUTEX_ERRORCHECK = @as(c_int, 2);
pub const PTHREAD_MUTEX_STALLED = @as(c_int, 0);
pub const PTHREAD_MUTEX_ROBUST = @as(c_int, 1);
pub const PTHREAD_PRIO_NONE = @as(c_int, 0);
pub const PTHREAD_PRIO_INHERIT = @as(c_int, 1);
pub const PTHREAD_PRIO_PROTECT = @as(c_int, 2);
pub const PTHREAD_INHERIT_SCHED = @as(c_int, 0);
pub const PTHREAD_EXPLICIT_SCHED = @as(c_int, 1);
pub const PTHREAD_SCOPE_SYSTEM = @as(c_int, 0);
pub const PTHREAD_SCOPE_PROCESS = @as(c_int, 1);
pub const PTHREAD_PROCESS_PRIVATE = @as(c_int, 0);
pub const PTHREAD_PROCESS_SHARED = @as(c_int, 1);
pub const PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// pthread.h:58:9
pub const PTHREAD_RWLOCK_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// pthread.h:59:9
pub const PTHREAD_COND_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// pthread.h:60:9
pub const PTHREAD_ONCE_INIT = @as(c_int, 0);
pub const PTHREAD_CANCEL_ENABLE = @as(c_int, 0);
pub const PTHREAD_CANCEL_DISABLE = @as(c_int, 1);
pub const PTHREAD_CANCEL_MASKED = @as(c_int, 2);
pub const PTHREAD_CANCEL_DEFERRED = @as(c_int, 0);
pub const PTHREAD_CANCEL_ASYNCHRONOUS = @as(c_int, 1);
pub const PTHREAD_CANCELED = @import("std").zig.c_translation.cast(?*anyopaque, -@as(c_int, 1));
pub const PTHREAD_BARRIER_SERIAL_THREAD = -@as(c_int, 1);
pub const PTHREAD_NULL = @import("std").zig.c_translation.cast(pthread_t, @as(c_int, 0));
pub const pthread_cleanup_push = @compileError("unable to translate macro: undefined identifier `__cb`");
// pthread.h:215:9
pub const pthread_cleanup_pop = @compileError("unable to translate macro: undefined identifier `__cb`");
// pthread.h:216:9
pub const timespec = struct_timespec;
pub const __pthread = struct___pthread;
pub const __sigset_t = struct___sigset_t;
pub const sched_param = struct_sched_param;
pub const __locale_struct = struct___locale_struct;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
pub const __ptcb = struct___ptcb;
