const std = @import("std");

// This handles the @cImport with proper Emscripten support
const c = @cImport({
    @cInclude("pthread.h");
});

// Re-export pthread types and functions
pub const pthread_t = c.pthread_t;
pub const pthread_create = c.pthread_create;
pub const pthread_join = c.pthread_join;

// Re-export mutex types and functions
pub const pthread_mutex_t = c.pthread_mutex_t;
pub const pthread_mutex_init = c.pthread_mutex_init;
pub const pthread_mutex_destroy = c.pthread_mutex_destroy;
pub const pthread_mutex_lock = c.pthread_mutex_lock;
pub const pthread_mutex_unlock = c.pthread_mutex_unlock;
pub const pthread_mutex_trylock = c.pthread_mutex_trylock;
