#include <stdlib.h>
#include <stdio.h>
#include <time.h>

//var names are optional, leave for readability
unsigned int is_div_by(unsigned int value, unsigned int divisor);
unsigned int rand_in_range(unsigned int low, unsigned int high);

int main() {

    //seed rand
    srand(time(NULL));

    unsigned int div = rand_in_range(3, 7);
    unsigned int val = rand_in_range(39, 163);

    if(is_div_by(val, div)) {
        printf("%d is divisible by %d\n", val, div);
    }
    else {
        printf("%d is not divisible by %d\n", val, div);
    }
    

    return 0;
}