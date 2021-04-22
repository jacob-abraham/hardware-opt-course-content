
#include <immintrin.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "timing.h"

struct test_args {
    long* n;
    long* c;
};

void collatz_c(void* arg) {
    long n = *(((struct test_args*)arg)->n);
    long c = 0;
    while(n != 1) {
        if(n % 2 == 0)
            n = n / 2;
        else
            n = 3 * n + 1;
        c++;
    }
    *(((struct test_args*)arg)->c) = c;
    return NULL;
}
void* hardware_hadd(void* args);
void* emulate_hadd_1(void* args);
void* emulate_hadd_2(void* args);

int main(__attribute((unused)) int argc, __attribute((unused)) char** argv) {

    long n;
    ;
    long c;
    struct test_args arg = {.n = &n, .c = &c};

    printf("collatz_c  : ");
    benchmark(collatz_c, (void*)(&arg), 50, 1000, 0b01, NULL);

    // accuracy check
    collatz_c((void*)(&arg));
    printf("collatz_c : %d\n", c);

#endif
}
