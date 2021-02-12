global _start

section .data          ; put our string into memory
msg: db "Hello World!", 10

section .text
_start:                ; magic function name
    mov rax, 1         ; write to a file
    mov rdi, 1         ; file handle for stdout
    mov rsi, msg       ; what memory to write
    mov rdx, 13        ; how big is the memory
    syscall
    mov rax, 60        ; exit cleanly
    xor rdi, rdi       ; return code of zero
    syscall
