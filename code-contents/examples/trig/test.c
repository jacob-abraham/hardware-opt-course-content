
#include <immintrin.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "sleef.h"
#include "timing.h"

/* Cartesian and Polar Coordinates
x = r * cos(a)
y = r * sin(a)

r = sqrt(x^2 + y^2)
a = arctan(y/x)
*/

struct test_args {
    float* x;
    float* y;
    float* r;
    float* a;
    size_t n;
};
#define UNPACK_ARGS(ARGS)                                                      \
    float* x = ((struct test_args*)ARGS)->x;                                   \
    float* y = ((struct test_args*)ARGS)->y;                                   \
    float* r = ((struct test_args*)ARGS)->r;                                   \
    float* a = ((struct test_args*)ARGS)->a;                                   \
    size_t n = ((struct test_args*)ARGS)->n;

void* scalar_c2p(void* args) {
    UNPACK_ARGS(args)
    for(size_t i = 0; i < n; i++) {
        x[i] = r[i] * cos(a[i]);
        y[i] = r[i] * sin(a[i]);
    }
    return NULL;
}
void* scalar_p2c(void* args) {
    UNPACK_ARGS(args)
    for(size_t i = 0; i < n; i += 1) {
        r[i] = sqrt(pow(x[i], 2) + pow(y[i], 2));
        a[i] = atan(y[i] / x[i]);
    }
    return NULL;
}
void* vector_c2p(void* args) {
    UNPACK_ARGS(args)
    __m256 vr, va, vsa, vca, vx, vy;
    for(size_t i = 0; i < n; i += 8) {
        vr = _mm256_load_ps(&(r[i]));
        va = _mm256_load_ps(&(a[i]));

        vsa = Sleef_sinf8_u35avx2(va);
        vca = Sleef_cosf8_u35avx2(va);

        vx = _mm256_mul_ps(vr, vsa);
        vy = _mm256_mul_ps(vr, vca);

        _mm256_store_ps(&(x[i]), vx);
        _mm256_store_ps(&(y[i]), vy);
    }
    return NULL;
}
void* vector_p2c(void* args) {
    UNPACK_ARGS(args)
    __m256 vx, vy, vx2, vy2, vxy2, vr, vyx, va;
    for(size_t i = 0; i < n; i += 8) {
        vx = _mm256_load_ps(&(x[i]));
        vy = _mm256_load_ps(&(y[i]));

        vx2 = _mm256_mul_ps(vx, vx);
        vy2 = _mm256_mul_ps(vy, vy);

        vxy2 = _mm256_add_ps(vx2, vy2);
        vr = _mm256_sqrt_ps(vxy2);
        _mm256_store_ps(&(r[i]), vr);

        vyx = _mm256_div_ps(vy, vx);
        va = Sleef_atanf8_u35avx2(vyx);
        _mm256_store_ps(&(a[i]), va);
    }
    return NULL;
}

#define rand_range_int(low, high) low + rand() % (high + 1 - low)
#define rand_range_float(low, high)                                            \
    low + (float)(rand()) / ((float)(RAND_MAX / (high - low)));

int main(__attribute((unused)) int argc, __attribute((unused)) char** argv) {

    srand(time(NULL));

    size_t n = 1024 * 4; // each array is a 1/4 page

    // cannot be freed
    float* x = (float*)aligned_alloc(64, n * sizeof(float));
    float* y = (float*)aligned_alloc(64, n * sizeof(float));
    float* r = (float*)aligned_alloc(64, n * sizeof(float));
    float* a = (float*)aligned_alloc(64, n * sizeof(float));

    struct test_args arg = {.x = x, .y = y, .r = r, .a = a, .n = n};

    printf("C2P\n");
    // init r and a for c2p
    for(size_t i = 0; i < n; i++) {
        r[i] = rand_range_float(1, 300);
        a[i] = rand_range_float(0, 2 * M_PI);
    }
    printf("Scalar C2P: ");
    benchmark(scalar_c2p, (void*)(&arg), 50, 500, 0b01, NULL);
    printf("Vector C2P: ");
    benchmark(vector_c2p, (void*)(&arg), 50, 500, 0b01, NULL);

    // accuracy check
    printf("\nAccuracy\n");
    printf("x=%10.6f, y=%10.6f\n", arg.x[37], arg.x[37]);
    scalar_c2p((void*)(&arg));
    printf("Scalar: r=%10.6f, a=%10.6f\n", arg.r[37], arg.a[37]);
    vector_c2p((void*)(&arg));
    printf("Vector: r=%10.6f, a=%10.6f\n", arg.r[37], arg.a[37]);

    printf("\n");

    printf("P2C\n");
    // init x and y for p2c
    for(size_t i = 0; i < n; i++) {
        x[i] = rand_range_float(1, 500);
        y[i] = rand_range_float(1, 500);
    }
    printf("Scalar: ");
    benchmark(scalar_p2c, (void*)(&arg), 50, 500, 0b01, NULL);
    printf("Vector: ");
    benchmark(vector_p2c, (void*)(&arg), 50, 500, 0b01, NULL);

    // accuracy check
    printf("\nAccuracy\n");
    printf("r=%10.6f, a=%10.6f\n", arg.r[37], arg.a[37]);
    scalar_p2c((void*)(&arg));
    printf("Scalar: x=%10.6f, y=%10.6f\n", arg.x[37], arg.y[37]);
    vector_p2c((void*)(&arg));
    printf("Vector: x=%10.6f, y=%10.6f\n", arg.x[37], arg.y[37]);
}