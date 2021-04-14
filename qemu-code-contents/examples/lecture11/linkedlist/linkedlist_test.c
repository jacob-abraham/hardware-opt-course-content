
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "timing.h"
#include "../linkedlist.h"
#include "../allocator.h"

struct ll_node* ll_head;
void* test(__attribute__((unused)) void * arg) {
    iterate_list(&ll_head);
    return NULL;
}

#define LL_SIZE 30000

__attribute((__noinline__))  void setup_packed() {
    init_allocator((LL_SIZE+30)*sizeof(struct ll_node));
    init_list(&ll_head, allocate);
    for(size_t i = 0; i < LL_SIZE; i++) {
        insert_node(&ll_head, construct_node(allocate, "ABC", 37));
    }
}
__attribute((__noinline__))  char* setup_unpacked(size_t amount) {
    init_list(&ll_head, malloc);
    char* dummy;
    for(size_t i = 0; i < LL_SIZE; i++) {
        dummy = (char*)((uint64_t)dummy + (uint64_t)malloc(amount)); //simulate other allocations
        insert_node(&ll_head, construct_node(malloc, "ABC", 37));
    }
    return dummy;
}
__attribute((__noinline__))  char* setup_unpacked_rand(size_t amount) {
    init_list(&ll_head, malloc);
    srand(time(NULL));
    char* dummy;
    for(size_t i = 0; i < LL_SIZE; i++) {
        dummy = (char*)((uint64_t)dummy + (uint64_t)(rand()%amount)); //simulate other allocations
        insert_node(&ll_head, construct_node(malloc, "ABC", 37));
    }
    return dummy;
}

int main(__attribute((unused)) int argc, __attribute((unused)) char** argv) {

    #ifdef _PACKED_
    printf("Packed Traversal:               ");
    setup_packed();
    benchmark(test, NULL, 50, 200, 0b01, NULL);
    #endif

    #ifdef _UNPACKED_
    if(argc < 2) {printf("Missing Args\n"); exit(1);};
    size_t amount = atoll(argv[1]);
    printf("UnPacked by %3zu Traversal:      ", amount);
    setup_unpacked(amount);
    benchmark(test, NULL, 50, 200, 0b01, NULL);
    #endif

    #ifdef _UNPACKED_RAND_
    srand(time(NULL));
    if(argc < 2) {printf("Missing Args\n"); exit(1);};
    size_t amount = atoll(argv[1]);
    printf("UnPacked by rand%%%3zu Traversal: ", amount);
    setup_unpacked_rand(amount);
    benchmark(test, NULL, 50, 200, 0b01, NULL);
    #endif
}