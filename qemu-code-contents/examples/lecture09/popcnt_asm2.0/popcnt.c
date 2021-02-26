#include <stdlib.h>
#include <stdio.h>
#include "timing.h"
#include "../dataset.h"


uint8_t popcnt_asm(uint64_t x);

int main(int argc, char** argv) {

    uint64_t num;
    uint8_t count;
    for(int i = 1; i < argc; i++) {
        num = strtoull(argv[i], NULL, 10);
        count = popcnt_asm(num);
        printf("There are %hhu 1's in %lu\n", count, num);
    }
    benchmark(popcnt_asm);

    return 0;
}