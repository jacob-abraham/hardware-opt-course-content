#include "../dataset.h"
#include "timing.h"
#include <stdio.h>
#include <stdlib.h>

uint8_t cntsetbits(uint64_t x) {
    uint64_t count;
    asm volatile("popcntq %0, %1 \n" : "=r"(count) : "r"(x) : "cc");
    return (uint8_t)count;
}

int main(int argc, char** argv) {

    uint64_t num;
    uint8_t count;
    for(int i = 1; i < argc; i++) {
        num = strtoull(argv[i], NULL, 10);
        count = cntsetbits(num);
        printf("There are %hhu 1's in %lu\n", count, num);
    }
    benchmark(test, (void*)cntsetbits, 50, 1000, 0b01, NULL);

    return 0;
}