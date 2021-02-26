


global popcnt_asm


section .text

; rdi=x
popcnt_asm:

    mov rax, 0     ; we will keep our count here
    
    xor cl, cl

popcnt_loop:

    inc cl

    mov rdx, rdi      ; copy value so we dont overwrite it
    and rdx, 1        ; perform calculation
    add rax, rdx

    shr rdi, 1        ; move to next bit

    cmp cl, 64
    jl popcnt_loop

    ret
