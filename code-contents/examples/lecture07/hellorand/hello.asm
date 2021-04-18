
global main
extern printf
extern srand
extern time
extern rand

section .data
msg_divs_true: db "%d is divisible by %d",10,0
msg_divs_false: db "%d is not divisible by %d",10,0

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

main:
    add rsp, -8     ; need to align the stack

    ; seed rand nums
    xor rdi, rdi
    call time
    mov rdi, rax ; result of time is arg of srand
    call srand

    ; get rand in range 3-7
    mov rdi, 3
    mov rsi, 7
    call rand_in_range
    push rax ; save on stack

    ; get rand in range 39-163
    mov rdi, 39
    mov rsi, 163
    call rand_in_range
    push rax ; save on stack

    ; setup parameters and call
    ; dont need to save anything
    ; because we dont care about cmdline args
    mov rdi, [rsp] ; TOS, our second rand number
    mov rsi, [rsp+8] ; SOS, our first rand number
    call is_div_by


    mov rdi, msg_divs_true  ; load the format for printf
    mov rdx, msg_divs_false
    test rax, rax ; need to set flags again based on rax
    cmove rdi, rdx  ; if ZF=1, its a false statement

    ; need those values again for the print
    mov rsi, [rsp]
    mov rdx, [rsp+8]
    xor rax, rax
    call printf

    ; now we can cleanup the stack
    pop rax
    pop rax

    add rsp, 8      ; we need to put the stack back
    xor rax, rax
    ret
