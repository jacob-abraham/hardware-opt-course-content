#include "timing.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

__attribute__((__noinline__)) unsigned long collatz_c(unsigned long n) {
    unsigned long c = 0; // should be 1, 1 converges in 1 step

    // n == 0 is invalid, will cause an infinite loop
    // not apart of the original problem

    while(n != 1) {
        if(n % 2 == 0)
            n = n / 2;
        else
            n = 3 * n + 1;
        c++;
    }
    return c;
}
unsigned long collatz_asm(unsigned long args);
unsigned long collatz_cmov(unsigned long args);
unsigned long collatz_bsf(unsigned long args);
unsigned long collatz_lea(unsigned long args);

void* collatz_bench(void* arg) {
    unsigned long (*func)(unsigned long) = (unsigned long (*)(unsigned long))arg;
    for(unsigned long i = 1; i < 50000; i++) {
        func(i);
    } 
    return NULL;
}

int main(__attribute((unused)) int argc, __attribute((unused)) char** argv) {

    printf("collatz_c    : ");
    benchmark(collatz_bench, (void*)collatz_c, 50, 50, 0b01, NULL);
    printf("collatz_asm  : ");
    benchmark(collatz_bench, (void*)collatz_asm, 50, 50, 0b01, NULL);
    printf("collatz_cmov : ");
    benchmark(collatz_bench, (void*)collatz_cmov, 50, 50, 0b01, NULL);
    printf("collatz_bsf  : ");
    benchmark(collatz_bench, (void*)collatz_bsf, 50, 50, 0b01, NULL);
    printf("collatz_lea  : ");
    benchmark(collatz_bench, (void*)collatz_lea, 50, 50, 0b01, NULL);

    // accuracy check
    unsigned long n;
    unsigned long c;
    n = 27;
    printf("\nAccuracy\n");
    c = collatz_c(n);
    printf("collatz_c    : %6lu converges in %6lu\n", n, c);
    c = collatz_asm(n);
    printf("collatz_asm  : %6lu converges in %6lu\n", n, c);
    c = collatz_cmov(n);
    printf("collatz_cmov : %6lu converges in %6lu\n", n, c);
    c = collatz_bsf(n);
    printf("collatz_bsf  : %6lu converges in %6lu\n", n, c);
    c = collatz_lea(n);
    printf("collatz_lea  : %6lu converges in %6lu\n", n, c);
}
