
global is_div_by
global rand_in_range
extern rand


section .text
; rdi is value
; rsi is what it is div by
; return bool 0 or 1
is_div_by:

    mov rax, rdi      ; load RDX:RAX for div
    xor rdx, rdx
    div rsi

    xor rax, rax ; zero out rax, we don't care about quoantient

    test rdx, rdx ; just need to set FLAGS, this test will do that
    sete al       ; set to 1 if ZF=1

    ret

; rdi is low
; rsi is high
; return num
rand_in_range:

    add rsp, -8 ; align stack
    ; we need to save our args
    push rdi
    push rsi

    call rand

    ; we can restore our args
    pop rsi
    pop rdi
    ; we can also restore the stack here
    add rsp, 8

    ; formula for our number
    ; num = (rand() % (upper – lower + 1)) + lower
    sub rsi, rdi ; upper - lower
    inc rsi ; plus 1
    ; rax already has our rand, need to prep rdx
    xor rdx, rdx
    div rsi
    ; rdx has our remainder, the reuslt of modulo
    ; rdi is still lower
    add rdx, rdi 
    ; copy to rax for return
    mov rax, rdx

    ret