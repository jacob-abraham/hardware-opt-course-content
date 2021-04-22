


global collatz_asm
global collatz_cmov
global collatz_bsf
global collatz_lea


; original source, watch here if interested
; https://www.youtube.com/watch?v=gnRCH3pAlFU
; note: this has a VERY different result

section .text

; rdi=n
collatz_asm:
    mov rax, rdi ; get n
    xor rcx, rcx ; c = 0
    mov r8, 3 ; const to use latewr

    .loop_top:
    cmp rax, 1 ; rax - 1
    jz .loop_bottom

    test rax, 1 ; rax & 1
    jnz .odd

    .even:
    shr rax, 1 ; rax >> 1 == rax /= 2
    add rcx, 1
    jmp .loop_top

    .odd:
    mul r8 ; implictly use rax as dest
    add rax, 1
    add rcx, 1
    jmp .loop_top

    .loop_bottom:

    mov rax, rcx ; mov count into result
    ret


; rdi=n
collatz_cmov:
    mov rax, rdi ; get n
    xor rcx, rcx ; c = 0
    mov r8, 3 ; const to use latewr

    .loop_top:
    cmp rax, 1 ; rax - 1
    jz .loop_bottom

    mov r9, rax ; copy to r9

    ; do the odd one on rax
    mul r8 ; implictly use rax as dest
    add rax, 1
    ; do the even one on r9
    shr r9, 1

    ; if carry flag from shr is 0, then before the shift it was even
    ; so we want to keep the r9 value, mov into rax
    cmovnc rax, r9

    add rcx, 1
    jmp .loop_top

    .loop_bottom:

    mov rax, rcx ; mov count into result
    ret



; rdi=n
collatz_bsf:
    mov rax, rdi ; get n
    xor r9, r9 ; c = 0
    mov r8, 3 ; const to use later

    .loop_top:

    ; how many bits to shift assuming even?
    bsf rcx, rax
    shr rax, cl ; rax >> cl == rax /= cl*2

    ; now its definitly odd, do that
    mul r8 ; implictly use rax as dest
    add rax, 1

    ; now add to r9 by rcx+1
    add r9, rcx
    add r9, 1

    ; we get to 1 now, then do 3*1+1 = 4
    ; so cmp 4 at bottom
    cmp rax, 4 ; rax - 4
    jne .loop_top

    .loop_bottom:
    ; need to dec the count by 1, because we overcounted slightly
    sub r9, 1

    mov rax, r9 ; mov count into result
    ret


; rdi=n
collatz_lea:
    mov rax, rdi ; get n
    xor r9, r9 ; c = 0

    .loop_top:

    ; how many bits to shift assuming even?
    bsf rcx, rax
    shr rax, cl ; rax >> cl == rax /= cl*2

    ; now its definitly odd, do that
    ; rax = rax*3 + 1
    ; rax*3 = rax+rax*2
    lea rax, [rax+rax*2+1]

    ; now add to r9 by rcx+1
    ; r9 = r9+rcx+1
    lea r9, [r9+rcx+1]

    ; we get to 1 now, then do 3*1+1 = 4
    ; so cmp 4 at bottom
    cmp rax, 4 ; rax - 4
    jne .loop_top

    .loop_bottom:
    ; need to dec the count by 1, because we overcounted slightly
    sub r9, 1

    mov rax, r9 ; mov count into result
    ret
