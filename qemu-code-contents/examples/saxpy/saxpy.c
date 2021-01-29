
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include "timing.h"
#include "immintrin.h"


void saxpy(float* a, float* x, float* y, float* r, size_t n) {
    float scalar = *a;
    //__LOOP(10000,
    for(size_t i = 0; i < n; i++) {
        r[i] = scalar * x[i] + y[i];
    }
    //)
}

#ifdef HAS_SSE
void saxpy_sse(float* a, float* x, float* y, float* r, size_t n) {
    __m128 scalar = _mm_load_ps1(a);
    __m128 ld1, ld2, res;
    //__LOOP(10000,
    for(size_t i = 0; i < n; i+=4) {
        ld1 = _mm_load_ps(x+i);
        ld2 = _mm_load_ps(y+i);
        res = _mm_mul_ps(scalar, ld1);
        res = _mm_add_ps(res, ld2);
        _mm_store_ps(r+i,res);
    }
    //)
}
#endif

#ifdef HAS_FMA
void saxpy_fma(float* a, float* x, float* y, float* r, size_t n) {
    __m128 scalar = _mm_load_ps1(a);
    __m128 ld1, ld2, res;
    //__LOOP(10000,
    for(size_t i = 0; i < n; i+=4) {
        ld1 = _mm_load_ps(x+i);
        ld2 = _mm_load_ps(y+i);
        res = _mm_fmadd_ps(scalar, ld1, ld2);
        _mm_store_ps(r+i,res);
    }
    //)
}
#endif

#ifdef HAS_AVX
void saxpy_avx(float* a, float* x, float* y, float* r, size_t n) {
    __m256 scalar = _mm256_broadcast_ss(a);
    __m256 ld1, ld2, res;
    //__LOOP(10000,
    for(size_t i = 0; i < n; i+=8) {
        ld1 = _mm256_load_ps(x+i);
        ld2 = _mm256_load_ps(y+i);
        res = _mm256_mul_ps(scalar, ld1);
        res = _mm256_add_ps(res, ld2);
        _mm256_store_ps(r+i,res);
    }
    //)
}
#endif

# if defined(HAS_FMA) && defined(HAS_AVX)
void saxpy_fma256(float* a, float* x, float* y, float* r, size_t n) {
    __m256 scalar = _mm256_broadcast_ss(a);
    __m256 ld1, ld2, res;
    //__LOOP(10000,
    for(size_t i = 0; i < n; i+=8) {
        ld1 = _mm256_load_ps(x+i);
        ld2 = _mm256_load_ps(y+i);
        res = _mm256_fmadd_ps(scalar, ld1, ld2);
        _mm256_store_ps(r+i,res);
    }
    //)
}
#endif

void benchmark(char* title, void (*func)(float*, float*, float*, float*, size_t), size_t sample_size) {
    size_t n = 100000000;
    float* a = (float*)malloc(sizeof(float));
    *a = 1 + rand() / (1 + rand() % 300);
    
    float* x = (float*)malloc(n*sizeof(float));
    float* y = (float*)malloc(n*sizeof(float));

    for(size_t i = 0; i < n; i++) {
        *x = 1 + rand() / (1 + rand() % 200);
        *y = 1 + rand() / (1 + rand() % 200);
    } 

    float* r = (float*)malloc(n*sizeof(float));

    long double* times = (long double*)malloc(sample_size*sizeof(long double));
    long double mean;
    long double var;

    __TIME_IT_N(func(a,x,y,r,n), sample_size, times);
    __MEAN(sample_size, times, mean);
    __VARIANCE(sample_size, times, var);

    printf("%s\nMean: %5.4Lf Variance: %5.4Lf\n", title, mean, var);
    size_t row_length = 10;
    for(size_t i = 0; i < sample_size;) {
        for(size_t j = 0;j < row_length && (j+i) < sample_size; j++) {
            printf("%5.4Lf\t", times[j+i]);
        }
        i+=row_length;
        printf("\n");
    }

    free(a);
    free(x);
    free(y);
    free(r);
    free(times);
}





int main() {

    benchmark("Scalar", &saxpy, 50);
    #ifdef HAS_SSE
    benchmark("SSE", &saxpy_sse, 50);
    #endif
    #ifdef HAS_FMA
    benchmark("FMA", &saxpy_fma, 50);
    #endif
    #ifdef HAS_AVX
    benchmark("AVX", &saxpy_avx, 50);
    #endif
    #if defined(HAS_FMA) && defined(HAS_AVX)
    benchmark("FMA256", &saxpy_fma256, 50);
    #endif
}
