

#ifndef _LINKED_LIST_H_
#define _LINKED_LIST_H_

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// this is carefully crafted to be exactly 16 bytes, which is aligned
// ORDER MATTERS
// architecture matters (on 64bit, pointers are 8 bytes)
struct ll_node {
    struct ll_node* next;
    int32_t some_number;
    char some_string[4];
};

#define NULL_CHECK(__CHECK)                                                    \
    if(!__CHECK) {                                                             \
        printf("%s-%d-%s: Unexpected NULL\n", __FILE__, __LINE__, __func__);   \
        exit(1);                                                               \
    }

// this linked list may be implemented different than you may have seen before
// the head node is a dummy node
// so a list with 3 nodes actually has 4 nodes, 1 head node and 3 body nodes
// this simplifies the code and removes a lot of the edge cases

__attribute((__noinline__)) void init_list(struct ll_node** head,
                                           void* (*alloc)(size_t)) {
    NULL_CHECK(head);
    *head = (struct ll_node*)alloc(sizeof(struct ll_node));
    (*head)->next = NULL;
}

__attribute((__noinline__)) struct ll_node*
construct_node(void* (*alloc)(size_t), char* str, int32_t num) {
    struct ll_node* newNode = (struct ll_node*)alloc(sizeof(struct ll_node));
    newNode->next = NULL;
    strncpy(newNode->some_string, str, 4);
    newNode->some_number = num;
    return newNode;
}

__attribute((__noinline__)) void insert_node(struct ll_node** head,
                                             struct ll_node* newNode) {
    NULL_CHECK(head);
    NULL_CHECK(*head);
    NULL_CHECK(newNode);

    struct ll_node* last = *head;
    while(last->next) {
        last = last->next;
    }
    last->next = newNode;
}

__attribute((__noinline__)) int64_t iterate_list(struct ll_node** head) {
    NULL_CHECK(head);
    NULL_CHECK(*head);

    // just doing something to touch the memory
    struct ll_node* ptr = (*head)->next;
    int64_t sum = 0;
    while(ptr) {
        sum += ptr->some_number;
        ptr = ptr->next;
    }
    return sum;
}

#endif