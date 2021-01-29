
global main
extern printf

section .data
message: db "Hello World!",10,0

section .text
main:
    mov rdi, message
    call printf
    xor rax, rax
    ret