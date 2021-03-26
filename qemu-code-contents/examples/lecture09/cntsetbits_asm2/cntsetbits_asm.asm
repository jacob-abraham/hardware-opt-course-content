


global cntsetbits_asm


section .text

; rdi=x
cntsetbits_asm:

    popcnt rax, rdi

    ret
