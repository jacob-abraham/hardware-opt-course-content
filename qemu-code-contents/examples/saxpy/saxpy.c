
#include "immintrin.h"
#include "timing.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/syscall.h>
#include <unistd.h>

void saxpy_asm(float *a, float *x, float *y, float *r, size_t n);

void saxpy(float *a, float *x, float *y, float *r, size_t n) {
    float scalar = *a;
    for(size_t i = 0; i < n; i++) {
        r[i] = scalar * x[i] + y[i];
    }
}

#ifdef HAS_SSE
void saxpy_asm_sse(float *a, float *x, float *y, float *r, size_t n);

void saxpy_sse(float *a, float *x, float *y, float *r, size_t n) {
    __m128 scalar = _mm_load_ps1(a);
    __m128 ld1, ld2, res;
    for(size_t i = 0; i < n; i += 4) {
        ld1 = _mm_load_ps(x + i);
        ld2 = _mm_load_ps(y + i);
        res = _mm_mul_ps(scalar, ld1);
        res = _mm_add_ps(res, ld2);
        _mm_store_ps(r + i, res);
    }
}
#endif

#ifdef HAS_FMA
void saxpy_fma(float *a, float *x, float *y, float *r, size_t n) {
    __m128 scalar = _mm_load_ps1(a);
    __m128 ld1, ld2, res;
    for(size_t i = 0; i < n; i += 4) {
        ld1 = _mm_load_ps(x + i);
        ld2 = _mm_load_ps(y + i);
        res = _mm_fmadd_ps(scalar, ld1, ld2);
        _mm_store_ps(r + i, res);
    }
}
#endif

#ifdef HAS_AVX
void saxpy_avx(float *a, float *x, float *y, float *r, size_t n) {
    __m256 scalar = _mm256_broadcast_ss(a);
    __m256 ld1, ld2, res;
    for(size_t i = 0; i < n; i += 8) {
        ld1 = _mm256_load_ps(x + i);
        ld2 = _mm256_load_ps(y + i);
        res = _mm256_mul_ps(scalar, ld1);
        res = _mm256_add_ps(res, ld2);
        _mm256_store_ps(r + i, res);
    }
}
/*void saxpy_avx(float *a, float *x, float *y, float *r, size_t n)
{
    __m256 scalar = _mm256_broadcast_ss(a);
    __m256 t1, t2, t3, t4;
    __m256 res1, res2, res3, res4;
    for(size_t i = 0; i < n; i += 32) {
        t1 = _mm256_mul_ps(scalar, _mm256_load_ps(x + i));
        t2 = _mm256_mul_ps(scalar, _mm256_load_ps(x + i+8));
        t3 = _mm256_mul_ps(scalar, _mm256_load_ps(x + i+16));
        t4 = _mm256_mul_ps(scalar, _mm256_load_ps(x + i+24));
        res1 = _mm256_add_ps(t1, _mm256_load_ps(y + i));
        res2 = _mm256_add_ps(t2, _mm256_load_ps(y + i+8));
        res3 = _mm256_add_ps(t3, _mm256_load_ps(y + i+16));
        res4 = _mm256_add_ps(t4, _mm256_load_ps(y + i+24));
        _mm256_store_ps(r + i, res1);
        _mm256_store_ps(r + i+8, res2);
        _mm256_store_ps(r + i+16, res3);
        _mm256_store_ps(r + i+24, res4);
    }
}*/
#endif

#if defined(HAS_FMA) && defined(HAS_AVX)
void saxpy_fma256(float *a, float *x, float *y, float *r, size_t n) {
    __m256 scalar = _mm256_broadcast_ss(a);
    __m256 ld1, ld2, res;
    for(size_t i = 0; i < n; i += 8) {
        ld1 = _mm256_load_ps(x + i);
        ld2 = _mm256_load_ps(y + i);
        res = _mm256_fmadd_ps(scalar, ld1, ld2);
        _mm256_store_ps(r + i, res);
    }
}
#endif

void benchmark(char *title,
               void (*func)(float *, float *, float *, float *, size_t),
               size_t sample_size, size_t n, float *a, float *x, float *y,
               float *r) {

    float *times = (float *)malloc(sample_size * sizeof(float));
    float mean;
    float var;

    __TIME_IT_N(func(a, x, y, r, n), 10000, sample_size, times);
    __MEAN(sample_size, times, mean);
    __VARIANCE(sample_size, times, var);

    printf("%s\nMean: %5.4fms Variance: %5.4fms\n", title, mean, var);
    size_t row_length = 5;
    for(size_t i = 0; i < sample_size;) {
        for(size_t j = 0; j < row_length && (j + i) < sample_size; j++) {
            printf("%5.4fms\t", times[j + i]);
        }
        i += row_length;
        printf("\n");
    }
    free(times);
}

/*uint64_t read_clockticks()
{
    uint64_t __res;
    uint32_t __low, __high;
    uint32_t __msr_reg = 0x30A;
    asm volatile("mov %[__msr_reg], %%ecx\t\n"
                 //"rdpmc\t\n"
                 //"mov %%eax, %[__low]\t\n"
                 //"mov %%edx, %[__high]\t\n"
                 : [__low] "=r"(__low), [__high] "=r"(__high)
                 : [__msr_reg] "r"(__msr_reg)
                 : "rcx", "rdx", "rax");
    __res = ((uint64_t)__high << 32) | __low;
    return __res;
}*/

int main() {

    size_t n = 1024 * 4; // each array is a 1/4 page
    float *a = (float *)malloc(sizeof(float));
    *a = 1 + rand() / (1 + rand() % 300);

    // cannot be freed
    float *x =
        (float *)((uintptr_t)~63 & (uintptr_t)malloc(63 + n * sizeof(float)));
    float *y =
        (float *)((uintptr_t)~63 & (uintptr_t)malloc(63 + n * sizeof(float)));

    for(size_t i = 0; i < n; i++) {
        *x = 1 + rand() / (1 + rand() % 200);
        *y = 1 + rand() / (1 + rand() % 200);
    }

    float *r =
        (float *)((uintptr_t)~63 & (uintptr_t)malloc(63 + n * sizeof(float)));

    printf("a = %p, x = %p, y = %p, r = %p\n", a, x, y, r);

    // printf("HELLO: %llu\n", read_clockticks());

    benchmark("Scalar", &saxpy, 50, n, a, x, y, r);
    benchmark("Scalar Asm", &saxpy_asm, 50, n, a, x, y, r);
#ifdef HAS_SSE
    benchmark("SSE", &saxpy_sse, 50, n, a, x, y, r);
    benchmark("SSE Asm", &saxpy_asm_sse, 50, n, a, x, y, r);
#endif
#ifdef HAS_FMA
    benchmark("FMA", &saxpy_fma, 50, n, a, x, y, r);
#endif
#ifdef HAS_AVX
    benchmark("AVX", &saxpy_avx, 50, n, a, x, y, r);
#endif
#if defined(HAS_FMA) && defined(HAS_AVX)
    benchmark("FMA256", &saxpy_fma256, 50, n, a, x, y, r);
#endif
}
