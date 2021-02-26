
global main
extern printf

section .data
msg: db "Hello World!",10,0
msg2: db "My favorite number is %d",10,0

section .text
main:
    add rsp, -8     ; need to align the stack

    mov rdi, msg    ; we can print regular strings
    xor rax, rax
    call printf

    mov rdi, msg2   ; but now we have something more advanced as well
    mov rsi, 37
    xor rax, rax
    call printf

    add rsp, 8      ; we need to put the stack back
    xor rax, rax
    ret
