global _start

section .data
num1: dq 37
outNum: dq 0

section .text
_start:
    mov rax, [num1]      ; load our number
    add rax, 2           ; add 2 to it
    shl qword [num1], 2  ; shift original number by 2
    imul rax, [num1]     ; multiply our modified original and loaded number

    mov rcx, 3           ; put 3 in rcx
    xor rdi, rdi         ; zero out rdi
    idiv rcx             ; divide rax by rcx

    lea rbx, [num1+4]    ; load memory address, same as outNum
    mov [rbx], rax       ; store rax out to memory

    mov rax, 60          ; exit cleanly
    xor rdi, rdi         ; return code of zero
    syscall
