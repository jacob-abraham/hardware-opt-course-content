
#ifndef __PERF_H__
#define __PERF_H__
#include <stdint.h>
#include <time.h>


#define __LOOP(__N, __CODE)             \
for(size_t __i = 0; __i < __N; __i++) { \
     __CODE                             \
}

#define __CYCLES_FOR_FUNC(__FUNC, __CYCLES) \
{                                           \
    clock_t begin = clock();                \
    __FUNC;                                 \
    clock_t end = clock();                  \
    __CYCLES = (end - begin);               \
}

#define __TIME_FOR_CYCLES(__CYCLES, __TIME) \
{__TIME = ((long double)(__CYCLES) / CLOCKS_PER_SEC);}

#define __TIME_IT(__FUNC, __TIME_RESULT)      \
{                                             \
    clock_t cycles;                           \
    __CYCLES_FOR_FUNC(__FUNC, cycles);        \
    __TIME_FOR_CYCLES(cycles, __TIME_RESULT); \
}

#define __TIME_IT_PRINT(__FUNC)                                      \
{                                                                    \
    long double time_spent;                                          \
    __TIME_IT(__FUNC, time_spent);                                   \
    printf("Function: " #__FUNC ", Time: %5.4Lf ms\n", time_spent);  \
}

#define __TIME_IT_N(__FUNC, __N, __TIMES) \
for(size_t __i = 0; __i < __N; __i++) {   \
    __TIME_IT(__FUNC, __TIMES[__i]);      \
}

#define __MEAN(__N, __SAMPLES, __M)         \
{                                           \
    __M = 0;                                \
    for(size_t __i = 0; __i < __N; __i++) { \
        __M += __SAMPLES[__i];              \
    }                                       \
    __M = __M / __N;                        \
}

#define __VARIANCE(__N, __SAMPLES, __V)     \
{                                           \
    long double __mean;                     \
    long double __temp;                     \
    __MEAN(__N, __SAMPLES, __mean);         \
    __V = 0;                                \
    for(size_t __i = 0; __i < __N; __i++) { \
        __temp = (__SAMPLES[__i] - __mean); \
        __V += __temp * __temp;             \
    }                                       \
    __V = __V / (__N - 1);                  \
}

#endif

