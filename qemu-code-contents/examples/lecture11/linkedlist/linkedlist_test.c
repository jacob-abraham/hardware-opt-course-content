
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "timing.h"
#include "../linkedlist.h"
#include "../allocator.h"



struct ll_node* ll_head;
void test() {
    iterate_list(&ll_head);
}

#define LL_SIZE 30000

__attribute((__noinline__))  void setup_packed() {
    init_allocator((LL_SIZE+30)*sizeof(struct ll_node));
    init_list(&ll_head, allocate);
    for(size_t i = 0; i < LL_SIZE; i++) {
        insert_node(&ll_head, construct_node(allocate, "I am a string", 37));
    }
}
__attribute((__noinline__))  char* setup_unpacked(size_t amount) {
    init_list(&ll_head, malloc);
    char* dummy;
    for(size_t i = 0; i < LL_SIZE; i++) {
        dummy = (char*)((uint64_t)dummy + (uint64_t)malloc(amount)); //simulate other allocations
        insert_node(&ll_head, construct_node(malloc, "I am a string", 37));
    }
    return dummy;
}
__attribute((__noinline__))  char* setup_unpacked_rand() {
    init_list(&ll_head, malloc);
    srand(time(NULL));
    char* dummy;
    for(size_t i = 0; i < LL_SIZE; i++) {
        dummy = (char*)((uint64_t)dummy + (uint64_t)malloc(rand()%256)); //simulate other allocations
        insert_node(&ll_head, construct_node(malloc, "I am a string", 37));
    }
    return dummy;
}

#define SAMPLE_SIZE 50
__attribute((__noinline__)) void benchmark() {

    float *times = (float *)malloc(SAMPLE_SIZE * sizeof(float));
    float mean;
    float var;

    __TIME_IT_N(test(), 100, SAMPLE_SIZE, times);
    __MEAN(SAMPLE_SIZE, times, mean);
    __VARIANCE(SAMPLE_SIZE, times, var);

    printf("Mean: %5.4fms Variance: %5.4fms\n", mean, var);
#ifdef PRINT_ALL_NUMS
    size_t row_length = 5;
    for(size_t i = 0; i < SAMPLE_SIZE;) {
        for(size_t j = 0; j < row_length && (j + i) < SAMPLE_SIZE; j++) {
            printf("%5.4fms\t", times[j + i]);
        }
        i += row_length;
        printf("\n");
    }
#endif
    free(times);
}

int main(__attribute((unused)) int argc, __attribute((unused)) char** argv) {

    #ifdef _PACKED_
    printf("Packed Linked List Traversal:             ");
    setup_packed();
    benchmark();
    #endif

    #ifdef _UNPACKED_
    if(argc < 2) {printf("Missing Args\n"); exit(1);};
    size_t amount = atoll(argv[1]);
    printf("UnPacked by %3zu Linked List Traversal:    ", amount);
    setup_unpacked(amount);
    benchmark();
    #endif

    #ifdef _UNPACKED_RAND_
    printf("UnPacked by random Linked List Traversal: ");
    setup_unpacked_rand();
    benchmark();
    #endif
}