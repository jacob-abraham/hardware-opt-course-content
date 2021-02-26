#include <stdlib.h>
#include <stdio.h>
#include <immintrin.h>
#include "timing.h"
#include "../dataset.h"

uint8_t popcnt(uint64_t x) {
    uint8_t count;
    count = (uint8_t)_mm_popcnt_u64(x);
    return count;
}

int main(int argc, char **argv) {

    uint64_t num;
    uint8_t count;
    for(int i = 1; i < argc; i++) {
        num = strtoull(argv[i], NULL, 10);
        count = popcnt(num);
        printf("There are %hhu 1's in %lu\n", count, num);
    }
    benchmark(popcnt);

    return 0;
}