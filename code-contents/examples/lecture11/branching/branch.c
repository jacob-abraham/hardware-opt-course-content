
#include <stdlib.h>


int predicable_branch(int* a, int* b, int n) {
    //dot product
    int sum = 0;
    for(int i = 0; i < n; i++) {
        sum = a[i] * b[i];
    }
    return sum;
}
void unpredicable_branch() {

}
