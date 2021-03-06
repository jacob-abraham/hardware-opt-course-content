

#ifndef _ALLOCATOR_H_
#define _ALLOCATOR_H_

#include <stdint.h>
#include <stdlib.h>

void* allocator_base_ptr;
void* allocator_ptr;

void init_allocator(size_t bytes) {
    allocator_base_ptr = aligned_alloc(64, bytes);
    allocator_ptr = allocator_base_ptr;
}

void destroy_allocator() {
    free(allocator_base_ptr);
    allocator_base_ptr = NULL;
    allocator_ptr = NULL;
}

void* allocate(size_t bytes) {
    void* ptr = allocator_ptr;
    allocator_ptr = (void*)((char*)(allocator_ptr) + bytes);
    return ptr;
}

__attribute((__always_inline__)) void* malloc64(size_t n) {
    return aligned_alloc(64, n);
}

#endif