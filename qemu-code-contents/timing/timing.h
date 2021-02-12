
#ifndef __PERF_H__
#define __PERF_H__
#include <stdint.h>
#include <time.h>
#include <x86intrin.h>

#define __LOOP(__N, __CODE)                                                    \
    for(size_t __i = 0; __i < __N; __i++) {                                    \
        __CODE                                                                 \
    }

#define __TIMESPEC_TO_MS(__TIMESPEC)                                           \
    (((float)__TIMESPEC.tv_sec * 1000.0) +                                     \
     ((float)__TIMESPEC.tv_nsec / 1000.0 / 1000.0))

// fix me to do convert to ms before difference
#define __TIME_IT(__FUNC, __LOOP_COUNT, __TIME)                                \
    {                                                                          \
        struct timespec __start, __end;                                        \
        clock_gettime(CLOCK_MONOTONIC, &__start);                              \
        __LOOP(__LOOP_COUNT, __FUNC;);                                         \
        clock_gettime(CLOCK_MONOTONIC, &__end);                                \
        __TIME = __TIMESPEC_TO_MS(__end) - __TIMESPEC_TO_MS(__start);          \
    }

/*
#define __TIME_IT(__FUNC, __TIME)                                              \
    {                                                                          \
        __int64_t __start, __end;                                              \
        __start = _rdtsc();                                                    \
        __LOOP(1000, __FUNC;);                                                 \
        __end = _rdtsc();                                                      \
        __TIME = (float)(__end - __start);                                     \
    }
    */

#define __TIME_IT_PRINT(__FUNC, __LOOP_COUNT)                                  \
    {                                                                          \
        float time_spent;                                                      \
        __TIME_IT(__LOOP_COUNT, __FUNC, time_spent);                           \
        printf("Function: " #__FUNC ", Time: %4.5fms\n", time_spent);          \
    }

#define __TIME_IT_N(__FUNC, __LOOP_COUNT, __N, __TIMES)                        \
    for(size_t __i = 0; __i < __N; __i++) {                                    \
        __TIME_IT(__FUNC, __LOOP_COUNT, __TIMES[__i]);                         \
    }

#define __MEAN(__N, __SAMPLES, __M)                                            \
    {                                                                          \
        __M = 0;                                                               \
        for(size_t __i = 0; __i < __N; __i++) {                                \
            __M += __SAMPLES[__i];                                             \
        }                                                                      \
        __M = __M / __N;                                                       \
    }

#define __VARIANCE(__N, __SAMPLES, __V)                                        \
    {                                                                          \
        float __mean;                                                          \
        float __temp;                                                          \
        __MEAN(__N, __SAMPLES, __mean);                                        \
        __V = 0;                                                               \
        for(size_t __i = 0; __i < __N; __i++) {                                \
            __temp = (__SAMPLES[__i] - __mean);                                \
            __V += __temp * __temp;                                            \
        }                                                                      \
        __V = __V / (__N - 1);                                                 \
    }

#endif
