


global popcnt_asm


section .text

; rdi=x
popcnt_asm:

    popcnt rax, rdi

    ret
