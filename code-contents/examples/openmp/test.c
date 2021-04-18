
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <time.h>

#include "timing.h"

struct test_args {
    float *a;
    float *b;
    float s;
    size_t n;
};
#define UNPACK_ARGS(ARGS)                                                      \
    float *a = ((struct test_args *)ARGS)->a;                                  \
    float *b = ((struct test_args *)ARGS)->b;                                  \
    float s = ((struct test_args *)ARGS)->s;                                   \
    size_t n = ((struct test_args *)ARGS)->n;

void *f(void *args) {
    UNPACK_ARGS(args)
#ifdef _WITH_OPENMP_
#pragma omp simd 
#endif
    for(size_t i = 0; i < n; i++) {
        a[i] += s * b[i];
    }
    return NULL;
}

int main(__attribute((unused)) int argc, __attribute((unused)) char **argv) {

    size_t n = 1024 * 4; // each array is a 1/4 page
    float s = 1 + rand() / (1 + rand() % 300);

    float *a = (float *)aligned_alloc(64, n * sizeof(float));
    float *b = (float *)aligned_alloc(64, n * sizeof(float));

    for(size_t i = 0; i < n; i++) {
        a[i] = 1 + rand() / (1 + rand() % 200);
        b[i] = 1 + rand() / (1 + rand() % 200);
    }
    struct test_args arg = {.a = a, .b = b, .s = s, .n = n};

    benchmark(f, (void *)(&arg), 50, 1000, 0b01, NULL);
}