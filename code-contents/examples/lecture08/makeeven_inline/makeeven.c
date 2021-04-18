#include <stdio.h>
#include <stdlib.h>

int main() {
    unsigned int alen = 10;
    unsigned char array[10] = {10, 5, 9, 13, 63, 76, 20, 1, 42, 87};

    for(size_t i = 0; i < alen; i++) {
        printf("%hhu ", array[i]);
    }
    printf("\n");

    //this really doesn't need to be 'long'
    //but makes types nice in asm
    unsigned long count = 0;
    while(count < alen) {
        //note the att syntax
        //DO NOT write comments inside asm
        asm volatile("testb $1, (%[_array],%[_count]) \n\t"
                        "je return_loop%= \n\t"
                        "addb $1, (%[_array],%[_count]) \n\t"
                        "return_loop%=: \n\t"
                        "inc %[_count] \n"
                        : [_count] "+r"(count) // must be output so value is updated
                        : [_array] "X"(array) //X is any operand
                        : "cc", "memory");
    }

    for(size_t i = 0; i < alen; i++) {
        printf("%hhu ", array[i]);
    }
    printf("\n");

    return 0;
}