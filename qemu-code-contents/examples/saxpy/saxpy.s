	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.intel_syntax noprefix
	.file	1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types" "_uintptr_t.h"
	.globl	_saxpy                  ## -- Begin function saxpy
	.p2align	4, 0x90
_saxpy:                                 ## @saxpy
Lfunc_begin0:
	.file	2 "/Users/abraham/Development/x86/hardware-opt-course-content/qemu-code-contents/examples/saxpy" "saxpy.c"
	.loc	2 14 0                  ## saxpy.c:14:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: saxpy:a <- $rdi
	##DEBUG_VALUE: saxpy:a <- $rdi
	##DEBUG_VALUE: saxpy:x <- $rsi
	##DEBUG_VALUE: saxpy:x <- $rsi
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:n <- $r8
	##DEBUG_VALUE: saxpy:n <- $r8
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
Ltmp0:
	##DEBUG_VALUE: i <- 0
	.loc	2 16 25 prologue_end    ## saxpy.c:16:25
	test	r8, r8
Ltmp1:
	.loc	2 16 5 is_stmt 0        ## saxpy.c:16:5
	je	LBB0_5
Ltmp2:
## %bb.1:
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: saxpy:n <- $r8
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:x <- $rsi
	##DEBUG_VALUE: saxpy:a <- $rdi
	.loc	2 0 0                   ## saxpy.c:0:0
	movss	xmm0, dword ptr [rdi]   ## xmm0 = mem[0],zero,zero,zero
Ltmp3:
	##DEBUG_VALUE: saxpy:scalar <- $xmm0
	.loc	2 16 5                  ## saxpy.c:16:5
	mov	eax, r8d
	and	eax, 1
	cmp	r8, 1
	jne	LBB0_6
Ltmp4:
## %bb.2:
	##DEBUG_VALUE: saxpy:scalar <- $xmm0
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: saxpy:n <- $r8
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:x <- $rsi
	##DEBUG_VALUE: saxpy:a <- $rdi
	.loc	2 0 5                   ## saxpy.c:0:5
	xor	edi, edi
Ltmp5:
	##DEBUG_VALUE: i <- $rdi
	##DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	.loc	2 16 5                  ## saxpy.c:16:5
	test	rax, rax
	jne	LBB0_4
	jmp	LBB0_5
Ltmp6:
LBB0_6:
	##DEBUG_VALUE: saxpy:scalar <- $xmm0
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: saxpy:n <- $r8
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:x <- $rsi
	##DEBUG_VALUE: saxpy:a <- $rdi
	sub	r8, rax
Ltmp7:
	.loc	2 0 5                   ## saxpy.c:0:5
	xor	edi, edi
Ltmp8:
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: saxpy:scalar <- $xmm0
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:x <- $rsi
	##DEBUG_VALUE: i <- $rdi
	movss	xmm1, dword ptr [rsi + 4*rdi] ## xmm1 = mem[0],zero,zero,zero
Ltmp9:
	.loc	2 17 23 is_stmt 1       ## saxpy.c:17:23
	mulss	xmm1, xmm0
	.loc	2 17 30 is_stmt 0       ## saxpy.c:17:30
	addss	xmm1, dword ptr [rdx + 4*rdi]
	.loc	2 17 14                 ## saxpy.c:17:14
	movss	dword ptr [rcx + 4*rdi], xmm1
	movss	xmm1, dword ptr [rsi + 4*rdi + 4] ## xmm1 = mem[0],zero,zero,zero
	.loc	2 17 23                 ## saxpy.c:17:23
	mulss	xmm1, xmm0
	.loc	2 17 30                 ## saxpy.c:17:30
	addss	xmm1, dword ptr [rdx + 4*rdi + 4]
	.loc	2 17 14                 ## saxpy.c:17:14
	movss	dword ptr [rcx + 4*rdi + 4], xmm1
Ltmp10:
	.loc	2 16 31 is_stmt 1       ## saxpy.c:16:31
	add	rdi, 2
Ltmp11:
	##DEBUG_VALUE: i <- $rdi
	.loc	2 16 5 is_stmt 0        ## saxpy.c:16:5
	cmp	r8, rdi
	jne	LBB0_7
Ltmp12:
## %bb.3:
	##DEBUG_VALUE: i <- $rdi
	##DEBUG_VALUE: saxpy:scalar <- $xmm0
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:x <- $rsi
	##DEBUG_VALUE: i <- $rdi
	##DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] $rdi
	test	rax, rax
	je	LBB0_5
Ltmp13:
LBB0_4:
	##DEBUG_VALUE: i <- $rdi
	##DEBUG_VALUE: saxpy:scalar <- $xmm0
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:x <- $rsi
	.loc	2 17 23 is_stmt 1       ## saxpy.c:17:23
	mulss	xmm0, dword ptr [rsi + 4*rdi]
Ltmp14:
	.loc	2 17 30 is_stmt 0       ## saxpy.c:17:30
	addss	xmm0, dword ptr [rdx + 4*rdi]
	.loc	2 17 14                 ## saxpy.c:17:14
	movss	dword ptr [rcx + 4*rdi], xmm0
Ltmp15:
LBB0_5:
	##DEBUG_VALUE: saxpy:r <- $rcx
	##DEBUG_VALUE: saxpy:y <- $rdx
	##DEBUG_VALUE: saxpy:x <- $rsi
	.loc	2 19 1 is_stmt 1        ## saxpy.c:19:1
	pop	rbp
	ret
Ltmp16:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function benchmark
LCPI1_0:
	.quad	4652007308841189376     ## double 1000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_benchmark
	.p2align	4, 0x90
_benchmark:                             ## @benchmark
Lfunc_begin1:
	.loc	2 103 0                 ## saxpy.c:103:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: benchmark:title <- $rdi
	##DEBUG_VALUE: benchmark:func <- $rsi
	##DEBUG_VALUE: benchmark:sample_size <- $rdx
	##DEBUG_VALUE: benchmark:n <- $rcx
	##DEBUG_VALUE: benchmark:a <- $r8
	##DEBUG_VALUE: benchmark:x <- $r9
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 104
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
Ltmp17:
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	mov	r13, r9
Ltmp18:
	##DEBUG_VALUE: benchmark:x <- $r13
	mov	r14, r8
Ltmp19:
	##DEBUG_VALUE: benchmark:a <- $r14
	mov	r15, rcx
Ltmp20:
	##DEBUG_VALUE: benchmark:n <- $r15
	mov	r12, rdx
Ltmp21:
	##DEBUG_VALUE: benchmark:sample_size <- $r12
	mov	rbx, rsi
Ltmp22:
	##DEBUG_VALUE: benchmark:func <- $rbx
	mov	qword ptr [rbp - 56], rdi ## 8-byte Spill
Ltmp23:
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	.loc	2 105 48 prologue_end   ## saxpy.c:105:48
	lea	rdi, [4*rdx]
	.loc	2 105 29 is_stmt 0      ## saxpy.c:105:29
	call	_malloc
Ltmp24:
	.loc	2 0 29                  ## saxpy.c:0:29
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
Ltmp25:
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	.loc	2 109 5 is_stmt 1       ## saxpy.c:109:5
	test	r12, r12
Ltmp26:
	.loc	2 109 5 is_stmt 0       ## saxpy.c:109:5
	je	LBB1_12
Ltmp27:
## %bb.1:
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $rbx
	##DEBUG_VALUE: benchmark:sample_size <- $r12
	##DEBUG_VALUE: benchmark:n <- $r15
	##DEBUG_VALUE: benchmark:a <- $r14
	##DEBUG_VALUE: benchmark:x <- $r13
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5                   ## saxpy.c:0:5
	mov	qword ptr [rbp - 64], rbx ## 8-byte Spill
Ltmp28:
	##DEBUG_VALUE: benchmark:func <- [DW_OP_constu 64, DW_OP_minus] [$rbp+0]
	mov	qword ptr [rbp - 72], r15 ## 8-byte Spill
Ltmp29:
	##DEBUG_VALUE: benchmark:n <- [DW_OP_constu 72, DW_OP_minus] [$rbp+0]
	mov	qword ptr [rbp - 80], r14 ## 8-byte Spill
Ltmp30:
	##DEBUG_VALUE: benchmark:a <- [DW_OP_constu 80, DW_OP_minus] [$rbp+0]
	mov	qword ptr [rbp - 88], r13 ## 8-byte Spill
Ltmp31:
	##DEBUG_VALUE: benchmark:x <- [DW_OP_constu 88, DW_OP_minus] [$rbp+0]
	xor	eax, eax
	mov	qword ptr [rbp - 96], r12 ## 8-byte Spill
Ltmp32:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	mov	rbx, qword ptr [rbp - 88] ## 8-byte Reload
Ltmp33:
	##DEBUG_VALUE: benchmark:x <- $rbx
	mov	r15, qword ptr [rbp - 80] ## 8-byte Reload
Ltmp34:
	##DEBUG_VALUE: benchmark:a <- $r15
	mov	r14, qword ptr [rbp - 72] ## 8-byte Reload
Ltmp35:
	##DEBUG_VALUE: benchmark:n <- $r14
	mov	r13, qword ptr [rbp - 64] ## 8-byte Reload
Ltmp36:
	##DEBUG_VALUE: benchmark:func <- $r13
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:a <- $r15
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: __i <- $rax
	##DEBUG_VALUE: __start <- [DW_OP_constu 136, DW_OP_minus, DW_OP_deref] $rbp
	mov	qword ptr [rbp - 104], rax ## 8-byte Spill
Ltmp37:
	##DEBUG_VALUE: __i <- [DW_OP_constu 104, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: __i <- [DW_OP_constu 104, DW_OP_minus] [$rbp+0]
	.loc	2 109 5                 ## saxpy.c:109:5
	mov	edi, 6
	lea	rsi, [rbp - 136]
	call	_clock_gettime
Ltmp38:
	.loc	2 0 5                   ## saxpy.c:0:5
	mov	r12d, 10000
Ltmp39:
	##DEBUG_VALUE: __i <- 0
	.p2align	4, 0x90
LBB1_3:                                 ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:a <- $r15
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: __i <- [DW_OP_constu 104, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: __start <- [DW_OP_constu 136, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: __i <- undef
	.loc	2 109 5                 ## saxpy.c:109:5
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp + 16]
	mov	rcx, qword ptr [rbp + 24]
	mov	r8, r14
	call	r13
Ltmp40:
	##DEBUG_VALUE: __i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	2 109 5                 ## saxpy.c:109:5
	dec	r12
Ltmp41:
	.loc	2 109 5                 ## saxpy.c:109:5
	jne	LBB1_3
Ltmp42:
## %bb.4:                               ##   in Loop: Header=BB1_2 Depth=1
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:a <- $r15
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __i <- [DW_OP_constu 104, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: __start <- [DW_OP_constu 136, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: __end <- [DW_OP_constu 120, DW_OP_minus, DW_OP_deref] $rbp
	.loc	2 109 5                 ## saxpy.c:109:5
	mov	edi, 6
	lea	rsi, [rbp - 120]
	call	_clock_gettime
Ltmp43:
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, qword ptr [rbp - 120]
	cvtss2sd	xmm0, xmm0
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, qword ptr [rbp - 112]
	movsd	xmm2, qword ptr [rip + LCPI1_0] ## xmm2 = mem[0],zero
	movapd	xmm3, xmm2
	mulsd	xmm0, xmm2
	cvtss2sd	xmm1, xmm1
	divsd	xmm1, xmm2
	divsd	xmm1, xmm2
	addsd	xmm1, xmm0
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, qword ptr [rbp - 136]
	cvtss2sd	xmm0, xmm0
	xorps	xmm2, xmm2
	cvtsi2ss	xmm2, qword ptr [rbp - 128]
	mulsd	xmm0, xmm3
	cvtss2sd	xmm2, xmm2
	divsd	xmm2, xmm3
	divsd	xmm2, xmm3
	addsd	xmm2, xmm0
	subsd	xmm1, xmm2
	xorps	xmm0, xmm0
	cvtsd2ss	xmm0, xmm1
	mov	rax, qword ptr [rbp - 48] ## 8-byte Reload
	mov	rcx, qword ptr [rbp - 104] ## 8-byte Reload
	movss	dword ptr [rax + 4*rcx], xmm0
	mov	rax, rcx
Ltmp44:
	.loc	2 109 5                 ## saxpy.c:109:5
	inc	rax
Ltmp45:
	##DEBUG_VALUE: __i <- $rax
	.loc	2 0 5                   ## saxpy.c:0:5
	mov	r12, qword ptr [rbp - 96] ## 8-byte Reload
	.loc	2 109 5                 ## saxpy.c:109:5
	cmp	rax, r12
Ltmp46:
	.loc	2 109 5                 ## saxpy.c:109:5
	jne	LBB1_2
Ltmp47:
## %bb.5:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:a <- $r15
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 110 5 is_stmt 1       ## saxpy.c:110:5
	lea	rax, [r12 - 1]
	mov	ecx, r12d
	and	ecx, 7
	cmp	rax, 7
	jae	LBB1_30
Ltmp48:
## %bb.6:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:a <- $r15
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5 is_stmt 0         ## saxpy.c:0:5
	xorps	xmm0, xmm0
	xor	edx, edx
	mov	r15, qword ptr [rbp - 48] ## 8-byte Reload
Ltmp49:
	.loc	2 110 5                 ## saxpy.c:110:5
	test	rcx, rcx
	jne	LBB1_8
	jmp	LBB1_10
Ltmp50:
LBB1_12:
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $rbx
	##DEBUG_VALUE: benchmark:sample_size <- $r12
	##DEBUG_VALUE: benchmark:n <- $r15
	##DEBUG_VALUE: benchmark:a <- $r14
	##DEBUG_VALUE: benchmark:x <- $r13
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 110 5                 ## saxpy.c:110:5
	test	r12, r12
	mov	r15, qword ptr [rbp - 48] ## 8-byte Reload
Ltmp51:
	.loc	2 0 5                   ## saxpy.c:0:5
	mov	rsi, qword ptr [rbp - 56] ## 8-byte Reload
	.loc	2 110 5                 ## saxpy.c:110:5
	js	LBB1_13
Ltmp52:
## %bb.14:
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $rbx
	##DEBUG_VALUE: benchmark:sample_size <- $r12
	##DEBUG_VALUE: benchmark:a <- $r14
	##DEBUG_VALUE: benchmark:x <- $r13
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5                   ## saxpy.c:0:5
	cvtsi2ss	xmm1, r12
	jmp	LBB1_15
Ltmp53:
LBB1_30:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:a <- $r15
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 110 5                 ## saxpy.c:110:5
	mov	rsi, r12
	sub	rsi, rcx
	xorps	xmm0, xmm0
	xor	edx, edx
	mov	r15, qword ptr [rbp - 48] ## 8-byte Reload
Ltmp54:
	.p2align	4, 0x90
LBB1_31:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: __i <- $rdx
	.loc	2 110 5                 ## saxpy.c:110:5
	addss	xmm0, dword ptr [r15 + 4*rdx]
Ltmp55:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	addss	xmm0, dword ptr [r15 + 4*rdx + 4]
Ltmp56:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	addss	xmm0, dword ptr [r15 + 4*rdx + 8]
Ltmp57:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	addss	xmm0, dword ptr [r15 + 4*rdx + 12]
Ltmp58:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	addss	xmm0, dword ptr [r15 + 4*rdx + 16]
Ltmp59:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	addss	xmm0, dword ptr [r15 + 4*rdx + 20]
Ltmp60:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	addss	xmm0, dword ptr [r15 + 4*rdx + 24]
Ltmp61:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	addss	xmm0, dword ptr [r15 + 4*rdx + 28]
Ltmp62:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	.loc	2 110 5                 ## saxpy.c:110:5
	add	rdx, 8
Ltmp63:
	##DEBUG_VALUE: __i <- $rdx
	.loc	2 110 5                 ## saxpy.c:110:5
	cmp	rsi, rdx
	jne	LBB1_31
Ltmp64:
## %bb.7:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __i <- $rdx
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	test	rcx, rcx
	je	LBB1_10
Ltmp65:
LBB1_8:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	lea	rdx, [r15 + 4*rdx]
	xor	esi, esi
Ltmp66:
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: __i <- undef
	.loc	2 110 5                 ## saxpy.c:110:5
	addss	xmm0, dword ptr [rdx + 4*rsi]
Ltmp67:
	##DEBUG_VALUE: __i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	.loc	2 110 5                 ## saxpy.c:110:5
	inc	rsi
	cmp	rcx, rsi
	jne	LBB1_9
Ltmp68:
LBB1_10:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	.loc	2 110 5                 ## saxpy.c:110:5
	test	r12, r12
	js	LBB1_11
Ltmp69:
## %bb.18:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5                   ## saxpy.c:0:5
	xorps	xmm2, xmm2
	cvtsi2ss	xmm2, r12
Ltmp70:
	##DEBUG_VALUE: __mean <- 0.000000e+00
	##DEBUG_VALUE: __i <- 0
	.loc	2 111 5 is_stmt 1       ## saxpy.c:111:5
	mov	ecx, r12d
	and	ecx, 7
	cmp	rax, 7
	jb	LBB1_20
Ltmp71:
LBB1_32:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: __mean <- 0.000000e+00
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	mov	rsi, r12
	sub	rsi, rcx
	xorpd	xmm1, xmm1
	xor	edx, edx
Ltmp72:
	.p2align	4, 0x90
LBB1_33:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: __mean <- 0.000000e+00
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: __i <- $rdx
	.loc	2 111 5 is_stmt 0       ## saxpy.c:111:5
	addss	xmm1, dword ptr [r15 + 4*rdx]
Ltmp73:
	##DEBUG_VALUE: __mean <- $xmm1
	addss	xmm1, dword ptr [r15 + 4*rdx + 4]
Ltmp74:
	##DEBUG_VALUE: __mean <- $xmm1
	addss	xmm1, dword ptr [r15 + 4*rdx + 8]
Ltmp75:
	##DEBUG_VALUE: __mean <- $xmm1
	addss	xmm1, dword ptr [r15 + 4*rdx + 12]
Ltmp76:
	##DEBUG_VALUE: __mean <- $xmm1
	addss	xmm1, dword ptr [r15 + 4*rdx + 16]
Ltmp77:
	##DEBUG_VALUE: __mean <- $xmm1
	addss	xmm1, dword ptr [r15 + 4*rdx + 20]
Ltmp78:
	##DEBUG_VALUE: __mean <- $xmm1
	addss	xmm1, dword ptr [r15 + 4*rdx + 24]
Ltmp79:
	##DEBUG_VALUE: __mean <- $xmm1
	addss	xmm1, dword ptr [r15 + 4*rdx + 28]
Ltmp80:
	##DEBUG_VALUE: __mean <- $xmm1
	.loc	2 111 5                 ## saxpy.c:111:5
	add	rdx, 8
Ltmp81:
	##DEBUG_VALUE: __i <- $rdx
	.loc	2 111 5                 ## saxpy.c:111:5
	cmp	rsi, rdx
	jne	LBB1_33
Ltmp82:
## %bb.21:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __i <- $rdx
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	test	rcx, rcx
	jne	LBB1_22
	jmp	LBB1_24
Ltmp83:
LBB1_11:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5                   ## saxpy.c:0:5
	mov	rcx, r12
	shr	rcx
	mov	edx, r12d
	and	edx, 1
	or	rdx, rcx
	xorps	xmm2, xmm2
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
Ltmp84:
	##DEBUG_VALUE: __mean <- 0.000000e+00
	##DEBUG_VALUE: __i <- 0
	.loc	2 111 5                 ## saxpy.c:111:5
	mov	ecx, r12d
	and	ecx, 7
	cmp	rax, 7
	jae	LBB1_32
Ltmp85:
LBB1_20:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: __mean <- 0.000000e+00
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5                   ## saxpy.c:0:5
	xorpd	xmm1, xmm1
	xor	edx, edx
	.loc	2 111 5                 ## saxpy.c:111:5
	test	rcx, rcx
	je	LBB1_24
Ltmp86:
LBB1_22:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	lea	rdx, [r15 + 4*rdx]
	xor	esi, esi
Ltmp87:
	.p2align	4, 0x90
LBB1_23:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: __i <- undef
	.loc	2 111 5                 ## saxpy.c:111:5
	addss	xmm1, dword ptr [rdx + 4*rsi]
Ltmp88:
	##DEBUG_VALUE: __i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	##DEBUG_VALUE: __mean <- $xmm1
	.loc	2 111 5                 ## saxpy.c:111:5
	inc	rsi
	cmp	rcx, rsi
	jne	LBB1_23
Ltmp89:
LBB1_24:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: __mean <- $xmm1
	.loc	2 111 5                 ## saxpy.c:111:5
	divss	xmm1, xmm2
Ltmp90:
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: benchmark:var <- 0.000000e+00
	##DEBUG_VALUE: __mean <- $xmm1
	.loc	2 111 5                 ## saxpy.c:111:5
	mov	ecx, r12d
	and	ecx, 3
	cmp	rax, 3
	jae	LBB1_37
Ltmp91:
## %bb.25:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:var <- 0.000000e+00
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5                   ## saxpy.c:0:5
	xorpd	xmm3, xmm3
	xor	eax, eax
	divss	xmm0, xmm2
Ltmp92:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	.loc	2 111 5                 ## saxpy.c:111:5
	test	rcx, rcx
	jne	LBB1_27
	jmp	LBB1_29
Ltmp93:
LBB1_37:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:var <- 0.000000e+00
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	mov	rdx, r12
	sub	rdx, rcx
	xorpd	xmm3, xmm3
	xor	eax, eax
Ltmp94:
	.p2align	4, 0x90
LBB1_38:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: benchmark:var <- 0.000000e+00
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: benchmark:var <- $xmm3
	##DEBUG_VALUE: __i <- $rax
	.loc	2 111 5                 ## saxpy.c:111:5
	movss	xmm4, dword ptr [r15 + 4*rax] ## xmm4 = mem[0],zero,zero,zero
	movss	xmm5, dword ptr [r15 + 4*rax + 4] ## xmm5 = mem[0],zero,zero,zero
	subss	xmm4, xmm1
Ltmp95:
	##DEBUG_VALUE: __temp <- $xmm4
	mulss	xmm4, xmm4
Ltmp96:
	addss	xmm4, xmm3
Ltmp97:
	##DEBUG_VALUE: benchmark:var <- $xmm4
	subss	xmm5, xmm1
Ltmp98:
	##DEBUG_VALUE: __temp <- $xmm5
	mulss	xmm5, xmm5
Ltmp99:
	addss	xmm5, xmm4
Ltmp100:
	##DEBUG_VALUE: benchmark:var <- $xmm5
	movss	xmm4, dword ptr [r15 + 4*rax + 8] ## xmm4 = mem[0],zero,zero,zero
	subss	xmm4, xmm1
Ltmp101:
	##DEBUG_VALUE: __temp <- $xmm4
	mulss	xmm4, xmm4
Ltmp102:
	addss	xmm4, xmm5
Ltmp103:
	##DEBUG_VALUE: benchmark:var <- $xmm4
	movss	xmm3, dword ptr [r15 + 4*rax + 12] ## xmm3 = mem[0],zero,zero,zero
	subss	xmm3, xmm1
Ltmp104:
	##DEBUG_VALUE: __temp <- $xmm3
	mulss	xmm3, xmm3
Ltmp105:
	addss	xmm3, xmm4
Ltmp106:
	##DEBUG_VALUE: benchmark:var <- $xmm3
	.loc	2 111 5                 ## saxpy.c:111:5
	add	rax, 4
Ltmp107:
	##DEBUG_VALUE: __i <- $rax
	.loc	2 111 5                 ## saxpy.c:111:5
	cmp	rdx, rax
	jne	LBB1_38
Ltmp108:
## %bb.26:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __i <- $rax
	##DEBUG_VALUE: benchmark:var <- $xmm3
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 0                   ## saxpy.c:0:0
	divss	xmm0, xmm2
Ltmp109:
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	.loc	2 111 5                 ## saxpy.c:111:5
	test	rcx, rcx
	je	LBB1_29
Ltmp110:
LBB1_27:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	lea	rax, [r15 + 4*rax]
	xor	edx, edx
Ltmp111:
	.p2align	4, 0x90
LBB1_28:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: benchmark:var <- $xmm3
	##DEBUG_VALUE: __i <- undef
	.loc	2 111 5                 ## saxpy.c:111:5
	movss	xmm2, dword ptr [rax + 4*rdx] ## xmm2 = mem[0],zero,zero,zero
	subss	xmm2, xmm1
Ltmp112:
	##DEBUG_VALUE: __temp <- $xmm2
	mulss	xmm2, xmm2
Ltmp113:
	addss	xmm3, xmm2
Ltmp114:
	##DEBUG_VALUE: __i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	##DEBUG_VALUE: benchmark:var <- $xmm3
	.loc	2 111 5                 ## saxpy.c:111:5
	inc	rdx
	cmp	rcx, rdx
	jne	LBB1_28
Ltmp115:
LBB1_29:
	##DEBUG_VALUE: benchmark:sample_size <- [DW_OP_constu 96, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $r13
	##DEBUG_VALUE: benchmark:n <- $r14
	##DEBUG_VALUE: benchmark:x <- $rbx
	##DEBUG_VALUE: __mean <- $xmm1
	##DEBUG_VALUE: benchmark:mean <- $xmm0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5                   ## saxpy.c:0:5
	mov	rsi, qword ptr [rbp - 56] ## 8-byte Reload
Ltmp116:
	##DEBUG_VALUE: benchmark:var <- $xmm3
	.loc	2 111 5                 ## saxpy.c:111:5
	mov	rax, r12
	dec	rax
	js	LBB1_17
Ltmp117:
LBB1_34:
	##DEBUG_VALUE: benchmark:var <- $xmm3
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5                   ## saxpy.c:0:5
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rax
	jmp	LBB1_35
Ltmp118:
LBB1_13:
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $rbx
	##DEBUG_VALUE: benchmark:sample_size <- $r12
	##DEBUG_VALUE: benchmark:a <- $r14
	##DEBUG_VALUE: benchmark:x <- $r13
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	mov	rax, r12
	shr	rax
	mov	ecx, r12d
	and	ecx, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
Ltmp119:
LBB1_15:
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:func <- $rbx
	##DEBUG_VALUE: benchmark:sample_size <- $r12
	##DEBUG_VALUE: benchmark:a <- $r14
	##DEBUG_VALUE: benchmark:x <- $r13
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	xorps	xmm3, xmm3
Ltmp120:
	.loc	2 110 5 is_stmt 1       ## saxpy.c:110:5
	xorps	xmm0, xmm0
	divss	xmm0, xmm1
Ltmp121:
	##DEBUG_VALUE: __i <- 0
	##DEBUG_VALUE: __mean <- 0.000000e+00
	##DEBUG_VALUE: benchmark:var <- $xmm3
	.loc	2 111 5                 ## saxpy.c:111:5
	mov	rax, r12
	dec	rax
	jns	LBB1_34
Ltmp122:
LBB1_17:
	##DEBUG_VALUE: benchmark:var <- $xmm3
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5 is_stmt 0         ## saxpy.c:0:5
	mov	rcx, rax
	shr	rcx
	and	eax, 1
	or	rax, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rax
	addss	xmm1, xmm1
Ltmp123:
LBB1_35:
	##DEBUG_VALUE: benchmark:var <- $xmm3
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 111 5                 ## saxpy.c:111:5
	divss	xmm3, xmm1
Ltmp124:
	##DEBUG_VALUE: benchmark:var <- $xmm3
	.loc	2 113 60 is_stmt 1      ## saxpy.c:113:60
	cvtss2sd	xmm0, xmm0
	.loc	2 113 66 is_stmt 0      ## saxpy.c:113:66
	xorps	xmm1, xmm1
	cvtss2sd	xmm1, xmm3
	.loc	2 113 5                 ## saxpy.c:113:5
	lea	rdi, [rip + L_.str]
	mov	al, 2
	call	_printf
Ltmp125:
	.loc	2 109 5 is_stmt 1       ## saxpy.c:109:5
	test	r12, r12
Ltmp126:
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: benchmark:row_length <- 5
	.loc	2 115 5                 ## saxpy.c:115:5
	je	LBB1_39
Ltmp127:
## %bb.36:
	##DEBUG_VALUE: benchmark:row_length <- 5
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 0 5 is_stmt 0         ## saxpy.c:0:5
	mov	ebx, 2
	lea	r14, [rip + L_.str.1]
	jmp	LBB1_41
Ltmp128:
	.p2align	4, 0x90
LBB1_40:                                ##   in Loop: Header=BB1_41 Depth=1
	##DEBUG_VALUE: benchmark:row_length <- 5
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 120 9 is_stmt 1       ## saxpy.c:120:9
	mov	edi, 10
	call	_putchar
Ltmp129:
	.loc	2 115 25                ## saxpy.c:115:25
	lea	rax, [rbx + 5]
Ltmp130:
	##DEBUG_VALUE: i <- [DW_OP_plus_uconst 5, DW_OP_stack_value] undef
	add	rbx, 3
	cmp	rbx, r12
	mov	rbx, rax
Ltmp131:
	.loc	2 115 5 is_stmt 0       ## saxpy.c:115:5
	jae	LBB1_39
Ltmp132:
LBB1_41:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: benchmark:row_length <- 5
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	##DEBUG_VALUE: i <- undef
	##DEBUG_VALUE: j <- 0
	.loc	2 117 33 is_stmt 1      ## saxpy.c:117:33
	movss	xmm0, dword ptr [r15 + 4*rbx - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	.loc	2 117 13 is_stmt 0      ## saxpy.c:117:13
	mov	rdi, r14
	mov	al, 1
	call	_printf
Ltmp133:
	##DEBUG_VALUE: j <- 1
	.loc	2 116 53 is_stmt 1      ## saxpy.c:116:53
	lea	rax, [rbx - 1]
	cmp	rax, r12
Ltmp134:
	.loc	2 116 9 is_stmt 0       ## saxpy.c:116:9
	jae	LBB1_40
Ltmp135:
## %bb.42:                              ##   in Loop: Header=BB1_41 Depth=1
	##DEBUG_VALUE: j <- 1
	##DEBUG_VALUE: benchmark:row_length <- 5
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 117 33 is_stmt 1      ## saxpy.c:117:33
	movss	xmm0, dword ptr [r15 + 4*rbx - 4] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	.loc	2 117 13 is_stmt 0      ## saxpy.c:117:13
	mov	rdi, r14
	mov	al, 1
	call	_printf
Ltmp136:
	##DEBUG_VALUE: j <- 2
	.loc	2 116 53 is_stmt 1      ## saxpy.c:116:53
	cmp	rbx, r12
Ltmp137:
	.loc	2 116 9 is_stmt 0       ## saxpy.c:116:9
	jae	LBB1_40
Ltmp138:
## %bb.43:                              ##   in Loop: Header=BB1_41 Depth=1
	##DEBUG_VALUE: j <- 2
	##DEBUG_VALUE: benchmark:row_length <- 5
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 117 33 is_stmt 1      ## saxpy.c:117:33
	movss	xmm0, dword ptr [r15 + 4*rbx] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	.loc	2 117 13 is_stmt 0      ## saxpy.c:117:13
	mov	rdi, r14
	mov	al, 1
	call	_printf
Ltmp139:
	##DEBUG_VALUE: j <- 3
	.loc	2 116 53 is_stmt 1      ## saxpy.c:116:53
	lea	rax, [rbx + 1]
	cmp	rax, r12
Ltmp140:
	.loc	2 116 9 is_stmt 0       ## saxpy.c:116:9
	jae	LBB1_40
Ltmp141:
## %bb.44:                              ##   in Loop: Header=BB1_41 Depth=1
	##DEBUG_VALUE: j <- 3
	##DEBUG_VALUE: benchmark:row_length <- 5
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 117 33 is_stmt 1      ## saxpy.c:117:33
	movss	xmm0, dword ptr [r15 + 4*rbx + 4] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	.loc	2 117 13 is_stmt 0      ## saxpy.c:117:13
	mov	rdi, r14
	mov	al, 1
	call	_printf
Ltmp142:
	##DEBUG_VALUE: j <- 4
	.loc	2 116 53 is_stmt 1      ## saxpy.c:116:53
	lea	rax, [rbx + 2]
	cmp	rax, r12
Ltmp143:
	.loc	2 116 9 is_stmt 0       ## saxpy.c:116:9
	jae	LBB1_40
Ltmp144:
## %bb.45:                              ##   in Loop: Header=BB1_41 Depth=1
	##DEBUG_VALUE: j <- 4
	##DEBUG_VALUE: benchmark:row_length <- 5
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 117 33 is_stmt 1      ## saxpy.c:117:33
	movss	xmm0, dword ptr [r15 + 4*rbx + 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	.loc	2 117 13 is_stmt 0      ## saxpy.c:117:13
	mov	rdi, r14
	mov	al, 1
	call	_printf
Ltmp145:
	##DEBUG_VALUE: j <- 5
	.loc	2 0 13                  ## saxpy.c:0:13
	jmp	LBB1_40
Ltmp146:
LBB1_39:
	##DEBUG_VALUE: benchmark:row_length <- 5
	##DEBUG_VALUE: benchmark:times <- [DW_OP_constu 48, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:title <- [DW_OP_constu 56, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: benchmark:r <- [DW_OP_plus_uconst 24] [$rbp+0]
	##DEBUG_VALUE: benchmark:y <- [DW_OP_plus_uconst 16] [$rbp+0]
	.loc	2 122 5 is_stmt 1       ## saxpy.c:122:5
	mov	rdi, r15
	call	_free
Ltmp147:
	.loc	2 123 1                 ## saxpy.c:123:1
	add	rsp, 104
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
Ltmp148:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin2:
	.loc	2 142 0                 ## saxpy.c:142:0
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
Ltmp149:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
Ltmp150:
	##DEBUG_VALUE: main:n <- 4096
	.loc	2 145 25 prologue_end   ## saxpy.c:145:25
	mov	edi, 4
	call	_malloc
Ltmp151:
	mov	r14, rax
Ltmp152:
	##DEBUG_VALUE: main:a <- $r14
	.loc	2 146 14                ## saxpy.c:146:14
	call	_rand
Ltmp153:
	mov	ebx, eax
	.loc	2 146 28 is_stmt 0      ## saxpy.c:146:28
	call	_rand
Ltmp154:
	.loc	2 146 35                ## saxpy.c:146:35
	cdqe
	imul	rcx, rax, 458129845
	mov	rdx, rcx
	shr	rdx, 63
	sar	rcx, 37
	add	ecx, edx
	imul	ecx, ecx, 300
	.loc	2 146 26                ## saxpy.c:146:26
	neg	ecx
	lea	ecx, [rax + rcx + 1]
	.loc	2 146 21                ## saxpy.c:146:21
	mov	eax, ebx
	cdq
	idiv	ecx
	.loc	2 146 12                ## saxpy.c:146:12
	inc	eax
	.loc	2 146 10                ## saxpy.c:146:10
	cvtsi2ss	xmm0, eax
	.loc	2 146 8                 ## saxpy.c:146:8
	movss	dword ptr [r14], xmm0
	.loc	2 150 47 is_stmt 1      ## saxpy.c:150:47
	mov	edi, 16447
	call	_malloc
Ltmp155:
	mov	r15, rax
	.loc	2 150 34 is_stmt 0      ## saxpy.c:150:34
	and	r15, -64
Ltmp156:
	##DEBUG_VALUE: main:x <- $r15
	.loc	2 152 47 is_stmt 1      ## saxpy.c:152:47
	mov	edi, 16447
	call	_malloc
Ltmp157:
	mov	r13, rax
	.loc	2 152 34 is_stmt 0      ## saxpy.c:152:34
	and	r13, -64
Ltmp158:
	##DEBUG_VALUE: main:y <- $r13
	.loc	2 0 34                  ## saxpy.c:0:34
	mov	ebx, 4096
Ltmp159:
	##DEBUG_VALUE: i <- 0
	.p2align	4, 0x90
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: i <- 0
	##DEBUG_VALUE: main:y <- $r13
	##DEBUG_VALUE: main:x <- $r15
	##DEBUG_VALUE: main:a <- $r14
	##DEBUG_VALUE: main:n <- 4096
	##DEBUG_VALUE: i <- undef
	.loc	2 155 18 is_stmt 1      ## saxpy.c:155:18
	call	_rand
Ltmp160:
	mov	r12d, eax
	.loc	2 155 32 is_stmt 0      ## saxpy.c:155:32
	call	_rand
Ltmp161:
	.loc	2 155 39                ## saxpy.c:155:39
	cdqe
	imul	rcx, rax, 1374389535
	mov	rdx, rcx
	shr	rdx, 63
	sar	rcx, 38
	add	ecx, edx
	imul	ecx, ecx, 200
	.loc	2 155 30                ## saxpy.c:155:30
	neg	ecx
	lea	ecx, [rax + rcx + 1]
	.loc	2 155 25                ## saxpy.c:155:25
	mov	eax, r12d
	cdq
	idiv	ecx
	.loc	2 155 16                ## saxpy.c:155:16
	inc	eax
	.loc	2 155 14                ## saxpy.c:155:14
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	.loc	2 155 12                ## saxpy.c:155:12
	movss	dword ptr [r15], xmm0
	.loc	2 156 18 is_stmt 1      ## saxpy.c:156:18
	call	_rand
Ltmp162:
	mov	r12d, eax
	.loc	2 156 32 is_stmt 0      ## saxpy.c:156:32
	call	_rand
Ltmp163:
	.loc	2 156 39                ## saxpy.c:156:39
	cdqe
	imul	rcx, rax, 1374389535
	mov	rdx, rcx
	shr	rdx, 63
	sar	rcx, 38
	add	ecx, edx
	imul	ecx, ecx, 200
	.loc	2 156 30                ## saxpy.c:156:30
	neg	ecx
	lea	ecx, [rax + rcx + 1]
	.loc	2 156 25                ## saxpy.c:156:25
	mov	eax, r12d
	cdq
	idiv	ecx
	.loc	2 156 16                ## saxpy.c:156:16
	inc	eax
	.loc	2 156 14                ## saxpy.c:156:14
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	.loc	2 156 12                ## saxpy.c:156:12
	movss	dword ptr [r13], xmm0
Ltmp164:
	##DEBUG_VALUE: i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	2 154 25 is_stmt 1      ## saxpy.c:154:25
	dec	rbx
Ltmp165:
	.loc	2 154 5 is_stmt 0       ## saxpy.c:154:5
	jne	LBB2_1
Ltmp166:
## %bb.2:
	##DEBUG_VALUE: main:y <- $r13
	##DEBUG_VALUE: main:x <- $r15
	##DEBUG_VALUE: main:a <- $r14
	##DEBUG_VALUE: main:n <- 4096
	.loc	2 160 47 is_stmt 1      ## saxpy.c:160:47
	mov	edi, 16447
	call	_malloc
Ltmp167:
	mov	r12, rax
	.loc	2 160 34 is_stmt 0      ## saxpy.c:160:34
	and	r12, -64
Ltmp168:
	##DEBUG_VALUE: main:r <- $r12
	.loc	2 162 5 is_stmt 1       ## saxpy.c:162:5
	lea	rdi, [rip + L_.str.3]
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, r12
	xor	eax, eax
	call	_printf
Ltmp169:
	.loc	2 166 5                 ## saxpy.c:166:5
	lea	rdi, [rip + L_.str.4]
	lea	rsi, [rip + _saxpy]
	mov	edx, 50
	mov	ecx, 4096
	mov	r8, r14
	mov	r9, r15
	push	r12
	push	r13
	call	_benchmark
Ltmp170:
	add	rsp, 16
	.loc	2 167 5                 ## saxpy.c:167:5
	lea	rdi, [rip + L_.str.5]
	mov	rsi, qword ptr [rip + _saxpy_asm@GOTPCREL]
	mov	edx, 50
	mov	ecx, 4096
	mov	r8, r14
	mov	r9, r15
	push	r12
	push	r13
	call	_benchmark
Ltmp171:
	add	rsp, 16
	.loc	2 180 1                 ## saxpy.c:180:1
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
Ltmp172:
	pop	r13
Ltmp173:
	pop	r14
Ltmp174:
	pop	r15
Ltmp175:
	pop	rbp
	ret
Ltmp176:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s\nMean: %5.4fms Variance: %5.4fms\n"

L_.str.1:                               ## @.str.1
	.asciz	"%5.4fms\t"

L_.str.3:                               ## @.str.3
	.asciz	"a = %p, x = %p, y = %p, r = %p\n"

L_.str.4:                               ## @.str.4
	.asciz	"Scalar"

L_.str.5:                               ## @.str.5
	.asciz	"Scalar Asm"

	.file	3 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386" "_types.h"
	.file	4 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types" "_size_t.h"
	.file	5 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types" "_timespec.h"
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 11.0.3 (clang-1103.0.32.59)" ## string offset=0
	.asciz	"saxpy.c"               ## string offset=48
	.asciz	"/Users/abraham/Development/x86/hardware-opt-course-content/qemu-code-contents/examples/saxpy" ## string offset=56
	.asciz	"float"                 ## string offset=149
	.asciz	"uintptr_t"             ## string offset=155
	.asciz	"long unsigned int"     ## string offset=165
	.asciz	"saxpy"                 ## string offset=183
	.asciz	"benchmark"             ## string offset=189
	.asciz	"main"                  ## string offset=199
	.asciz	"int"                   ## string offset=204
	.asciz	"a"                     ## string offset=208
	.asciz	"x"                     ## string offset=210
	.asciz	"y"                     ## string offset=212
	.asciz	"r"                     ## string offset=214
	.asciz	"n"                     ## string offset=216
	.asciz	"size_t"                ## string offset=218
	.asciz	"__darwin_size_t"       ## string offset=225
	.asciz	"i"                     ## string offset=241
	.asciz	"scalar"                ## string offset=243
	.asciz	"title"                 ## string offset=250
	.asciz	"char"                  ## string offset=256
	.asciz	"func"                  ## string offset=261
	.asciz	"sample_size"           ## string offset=266
	.asciz	"__i"                   ## string offset=278
	.asciz	"times"                 ## string offset=282
	.asciz	"__start"               ## string offset=288
	.asciz	"timespec"              ## string offset=296
	.asciz	"tv_sec"                ## string offset=305
	.asciz	"__darwin_time_t"       ## string offset=312
	.asciz	"long int"              ## string offset=328
	.asciz	"tv_nsec"               ## string offset=337
	.asciz	"__end"                 ## string offset=345
	.asciz	"mean"                  ## string offset=351
	.asciz	"__mean"                ## string offset=356
	.asciz	"var"                   ## string offset=363
	.asciz	"__temp"                ## string offset=367
	.asciz	"row_length"            ## string offset=374
	.asciz	"j"                     ## string offset=385
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp5-Lfunc_begin0
	.quad	Lset1
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset2, Ltmp6-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp8-Lfunc_begin0
	.quad	Lset3
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset4, Lfunc_begin0-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp7-Lfunc_begin0
	.quad	Lset5
	.short	1                       ## Loc expr size
	.byte	88                      ## DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset6, Ltmp0-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp5-Lfunc_begin0
	.quad	Lset7
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset8, Ltmp5-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp6-Lfunc_begin0
	.quad	Lset9
	.short	3                       ## Loc expr size
	.byte	117                     ## DW_OP_breg5
	.byte	1                       ## 1
	.byte	159                     ## DW_OP_stack_value
.set Lset10, Ltmp6-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp8-Lfunc_begin0
	.quad	Lset11
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset12, Ltmp8-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp12-Lfunc_begin0
	.quad	Lset13
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset14, Ltmp12-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp13-Lfunc_begin0
	.quad	Lset15
	.short	3                       ## Loc expr size
	.byte	117                     ## DW_OP_breg5
	.byte	1                       ## 1
	.byte	159                     ## DW_OP_stack_value
.set Lset16, Ltmp13-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp15-Lfunc_begin0
	.quad	Lset17
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset18, Ltmp3-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp14-Lfunc_begin0
	.quad	Lset19
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset20, Lfunc_begin1-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp23-Lfunc_begin0
	.quad	Lset21
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset22, Ltmp23-Lfunc_begin0
	.quad	Lset22
.set Lset23, Lfunc_end1-Lfunc_begin0
	.quad	Lset23
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	72                      ## -56
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset24, Lfunc_begin1-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp22-Lfunc_begin0
	.quad	Lset25
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset26, Ltmp22-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp28-Lfunc_begin0
	.quad	Lset27
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset28, Ltmp28-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp36-Lfunc_begin0
	.quad	Lset29
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	64                      ## -64
.set Lset30, Ltmp36-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp50-Lfunc_begin0
	.quad	Lset31
	.short	1                       ## Loc expr size
	.byte	93                      ## DW_OP_reg13
.set Lset32, Ltmp50-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp53-Lfunc_begin0
	.quad	Lset33
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset34, Ltmp53-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp117-Lfunc_begin0
	.quad	Lset35
	.short	1                       ## Loc expr size
	.byte	93                      ## DW_OP_reg13
.set Lset36, Ltmp118-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp122-Lfunc_begin0
	.quad	Lset37
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset38, Lfunc_begin1-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp21-Lfunc_begin0
	.quad	Lset39
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset40, Ltmp21-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp32-Lfunc_begin0
	.quad	Lset41
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
.set Lset42, Ltmp32-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp50-Lfunc_begin0
	.quad	Lset43
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	160                     ## -96
	.byte	127                     ## 
.set Lset44, Ltmp50-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp53-Lfunc_begin0
	.quad	Lset45
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
.set Lset46, Ltmp53-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp117-Lfunc_begin0
	.quad	Lset47
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	160                     ## -96
	.byte	127                     ## 
.set Lset48, Ltmp118-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp122-Lfunc_begin0
	.quad	Lset49
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset50, Lfunc_begin1-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp20-Lfunc_begin0
	.quad	Lset51
	.short	1                       ## Loc expr size
	.byte	82                      ## DW_OP_reg2
.set Lset52, Ltmp20-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp29-Lfunc_begin0
	.quad	Lset53
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
.set Lset54, Ltmp29-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp35-Lfunc_begin0
	.quad	Lset55
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	184                     ## -72
	.byte	127                     ## 
.set Lset56, Ltmp35-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp50-Lfunc_begin0
	.quad	Lset57
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset58, Ltmp50-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp51-Lfunc_begin0
	.quad	Lset59
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
.set Lset60, Ltmp53-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp117-Lfunc_begin0
	.quad	Lset61
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset62, Lfunc_begin1-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp19-Lfunc_begin0
	.quad	Lset63
	.short	1                       ## Loc expr size
	.byte	88                      ## DW_OP_reg8
.set Lset64, Ltmp19-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp30-Lfunc_begin0
	.quad	Lset65
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset66, Ltmp30-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp34-Lfunc_begin0
	.quad	Lset67
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	176                     ## -80
	.byte	127                     ## 
.set Lset68, Ltmp34-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp49-Lfunc_begin0
	.quad	Lset69
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
.set Lset70, Ltmp50-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp53-Lfunc_begin0
	.quad	Lset71
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
.set Lset72, Ltmp53-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp54-Lfunc_begin0
	.quad	Lset73
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
.set Lset74, Ltmp118-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp122-Lfunc_begin0
	.quad	Lset75
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset76, Lfunc_begin1-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp18-Lfunc_begin0
	.quad	Lset77
	.short	1                       ## Loc expr size
	.byte	89                      ## DW_OP_reg9
.set Lset78, Ltmp18-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp31-Lfunc_begin0
	.quad	Lset79
	.short	1                       ## Loc expr size
	.byte	93                      ## DW_OP_reg13
.set Lset80, Ltmp31-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp33-Lfunc_begin0
	.quad	Lset81
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	168                     ## -88
	.byte	127                     ## 
.set Lset82, Ltmp33-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp50-Lfunc_begin0
	.quad	Lset83
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset84, Ltmp50-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp53-Lfunc_begin0
	.quad	Lset85
	.short	1                       ## Loc expr size
	.byte	93                      ## DW_OP_reg13
.set Lset86, Ltmp53-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp117-Lfunc_begin0
	.quad	Lset87
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
.set Lset88, Ltmp118-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp122-Lfunc_begin0
	.quad	Lset89
	.short	1                       ## Loc expr size
	.byte	93                      ## DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset90, Ltmp25-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp36-Lfunc_begin0
	.quad	Lset91
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset92, Ltmp36-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp37-Lfunc_begin0
	.quad	Lset93
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
.set Lset94, Ltmp37-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp45-Lfunc_begin0
	.quad	Lset95
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	152                     ## -104
	.byte	127                     ## 
.set Lset96, Ltmp45-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp47-Lfunc_begin0
	.quad	Lset97
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset98, Ltmp25-Lfunc_begin0
	.quad	Lset98
.set Lset99, Lfunc_end1-Lfunc_begin0
	.quad	Lset99
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	80                      ## -48
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset100, Ltmp36-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp47-Lfunc_begin0
	.quad	Lset101
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	248                     ## -136
	.byte	126                     ## 
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset102, Ltmp42-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp47-Lfunc_begin0
	.quad	Lset103
	.short	3                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	136                     ## -120
	.byte	127                     ## 
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset104, Ltmp54-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp65-Lfunc_begin0
	.quad	Lset105
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
.set Lset106, Ltmp66-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp117-Lfunc_begin0
	.quad	Lset107
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset108, Ltmp54-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp65-Lfunc_begin0
	.quad	Lset109
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset110, Ltmp70-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp72-Lfunc_begin0
	.quad	Lset111
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset112, Ltmp72-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp83-Lfunc_begin0
	.quad	Lset113
	.short	1                       ## Loc expr size
	.byte	98                      ## DW_OP_reg18
.set Lset114, Ltmp84-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp86-Lfunc_begin0
	.quad	Lset115
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset116, Ltmp87-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp117-Lfunc_begin0
	.quad	Lset117
	.short	1                       ## Loc expr size
	.byte	98                      ## DW_OP_reg18
.set Lset118, Ltmp121-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp122-Lfunc_begin0
	.quad	Lset119
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset120, Ltmp70-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp72-Lfunc_begin0
	.quad	Lset121
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset122, Ltmp72-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp83-Lfunc_begin0
	.quad	Lset123
	.short	1                       ## Loc expr size
	.byte	81                      ## DW_OP_reg1
.set Lset124, Ltmp84-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp86-Lfunc_begin0
	.quad	Lset125
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset126, Ltmp121-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp122-Lfunc_begin0
	.quad	Lset127
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset128, Ltmp90-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp94-Lfunc_begin0
	.quad	Lset129
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset130, Ltmp94-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp110-Lfunc_begin0
	.quad	Lset131
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset132, Ltmp90-Lfunc_begin0
	.quad	Lset132
.set Lset133, Ltmp94-Lfunc_begin0
	.quad	Lset133
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset134, Ltmp94-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp97-Lfunc_begin0
	.quad	Lset135
	.short	1                       ## Loc expr size
	.byte	100                     ## DW_OP_reg20
.set Lset136, Ltmp97-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp100-Lfunc_begin0
	.quad	Lset137
	.short	1                       ## Loc expr size
	.byte	101                     ## DW_OP_reg21
.set Lset138, Ltmp100-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp103-Lfunc_begin0
	.quad	Lset139
	.short	1                       ## Loc expr size
	.byte	102                     ## DW_OP_reg22
.set Lset140, Ltmp103-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp106-Lfunc_begin0
	.quad	Lset141
	.short	1                       ## Loc expr size
	.byte	101                     ## DW_OP_reg21
.set Lset142, Ltmp106-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp110-Lfunc_begin0
	.quad	Lset143
	.short	1                       ## Loc expr size
	.byte	100                     ## DW_OP_reg20
.set Lset144, Ltmp111-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp115-Lfunc_begin0
	.quad	Lset145
	.short	1                       ## Loc expr size
	.byte	100                     ## DW_OP_reg20
.set Lset146, Ltmp116-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp118-Lfunc_begin0
	.quad	Lset147
	.short	1                       ## Loc expr size
	.byte	100                     ## DW_OP_reg20
.set Lset148, Ltmp121-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp125-Lfunc_begin0
	.quad	Lset149
	.short	1                       ## Loc expr size
	.byte	100                     ## DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset150, Ltmp95-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp96-Lfunc_begin0
	.quad	Lset151
	.short	1                       ## Loc expr size
	.byte	101                     ## DW_OP_reg21
.set Lset152, Ltmp98-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp99-Lfunc_begin0
	.quad	Lset153
	.short	1                       ## Loc expr size
	.byte	102                     ## DW_OP_reg22
.set Lset154, Ltmp101-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp102-Lfunc_begin0
	.quad	Lset155
	.short	1                       ## Loc expr size
	.byte	101                     ## DW_OP_reg21
.set Lset156, Ltmp104-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp105-Lfunc_begin0
	.quad	Lset157
	.short	1                       ## Loc expr size
	.byte	100                     ## DW_OP_reg20
.set Lset158, Ltmp112-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp113-Lfunc_begin0
	.quad	Lset159
	.short	1                       ## Loc expr size
	.byte	99                      ## DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset160, Ltmp126-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp128-Lfunc_begin0
	.quad	Lset161
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset162, Ltmp126-Lfunc_begin0
	.quad	Lset162
.set Lset163, Lfunc_end1-Lfunc_begin0
	.quad	Lset163
	.short	2                       ## Loc expr size
	.byte	53                      ## DW_OP_lit5
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset164, Ltmp132-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp133-Lfunc_begin0
	.quad	Lset165
	.short	2                       ## Loc expr size
	.byte	48                      ## DW_OP_lit0
	.byte	159                     ## DW_OP_stack_value
.set Lset166, Ltmp133-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp136-Lfunc_begin0
	.quad	Lset167
	.short	2                       ## Loc expr size
	.byte	49                      ## DW_OP_lit1
	.byte	159                     ## DW_OP_stack_value
.set Lset168, Ltmp136-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp139-Lfunc_begin0
	.quad	Lset169
	.short	2                       ## Loc expr size
	.byte	50                      ## DW_OP_lit2
	.byte	159                     ## DW_OP_stack_value
.set Lset170, Ltmp139-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp142-Lfunc_begin0
	.quad	Lset171
	.short	2                       ## Loc expr size
	.byte	51                      ## DW_OP_lit3
	.byte	159                     ## DW_OP_stack_value
.set Lset172, Ltmp142-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp145-Lfunc_begin0
	.quad	Lset173
	.short	2                       ## Loc expr size
	.byte	52                      ## DW_OP_lit4
	.byte	159                     ## DW_OP_stack_value
.set Lset174, Ltmp145-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp146-Lfunc_begin0
	.quad	Lset175
	.short	2                       ## Loc expr size
	.byte	53                      ## DW_OP_lit5
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset176, Ltmp152-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp174-Lfunc_begin0
	.quad	Lset177
	.short	1                       ## Loc expr size
	.byte	94                      ## DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset178, Ltmp156-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp175-Lfunc_begin0
	.quad	Lset179
	.short	1                       ## Loc expr size
	.byte	95                      ## DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset180, Ltmp158-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp173-Lfunc_begin0
	.quad	Lset181
	.short	1                       ## Loc expr size
	.byte	93                      ## DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset182, Ltmp168-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp172-Lfunc_begin0
	.quad	Lset183
	.short	1                       ## Loc expr size
	.byte	92                      ## DW_OP_reg12
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	23                      ## DW_FORM_sec_offset
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	122                     ## DW_AT_call_all_calls
	.byte	25                      ## DW_FORM_flag_present
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	85                      ## DW_AT_ranges
	.byte	23                      ## DW_FORM_sec_offset
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	122                     ## DW_AT_call_all_calls
	.byte	25                      ## DW_FORM_flag_present
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	28                      ## DW_AT_const_value
	.byte	15                      ## DW_FORM_udata
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	72                      ## DW_TAG_call_site
	.byte	0                       ## DW_CHILDREN_no
	.byte	127                     ## DW_AT_call_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	125                     ## DW_AT_call_return_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	21                      ## DW_TAG_subroutine_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	18                      ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset184, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset184
Ldebug_info_start0:
	.short	4                       ## DWARF version number
.set Lset185, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset185
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x396 DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	48                      ## DW_AT_name
.set Lset186, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset186
	.long	56                      ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset187, Lfunc_end2-Lfunc_begin0   ## DW_AT_high_pc
	.long	Lset187
	.byte	2                       ## Abbrev [2] 0x2a:0x5 DW_TAG_pointer_type
	.long	47                      ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x2f:0x7 DW_TAG_base_type
	.long	149                     ## DW_AT_name
	.byte	4                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	4                       ## Abbrev [4] 0x36:0xb DW_TAG_typedef
	.long	65                      ## DW_AT_type
	.long	155                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x41:0x7 DW_TAG_base_type
	.long	165                     ## DW_AT_name
	.byte	7                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0x48:0x7f DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset188, Lfunc_end0-Lfunc_begin0   ## DW_AT_high_pc
	.long	Lset188
	.byte	1                       ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	183                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	6                       ## Abbrev [6] 0x5d:0xf DW_TAG_formal_parameter
.set Lset189, Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset189
	.long	208                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x6c:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.long	210                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x79:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	81
	.long	212                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x86:0xd DW_TAG_formal_parameter
	.byte	1                       ## DW_AT_location
	.byte	82
	.long	214                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x93:0xf DW_TAG_formal_parameter
.set Lset190, Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset190
	.long	216                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xa2:0xf DW_TAG_variable
.set Lset191, Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset191
	.long	243                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	15                      ## DW_AT_decl_line
	.long	47                      ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0xb1:0x15 DW_TAG_lexical_block
.set Lset192, Ldebug_ranges0-Ldebug_range ## DW_AT_ranges
	.long	Lset192
	.byte	8                       ## Abbrev [8] 0xb6:0xf DW_TAG_variable
.set Lset193, Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset193
	.long	241                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0xc7:0x1c7 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
.set Lset194, Lfunc_end1-Lfunc_begin1   ## DW_AT_high_pc
	.long	Lset194
	.byte	1                       ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	189                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	99                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	6                       ## Abbrev [6] 0xdc:0xf DW_TAG_formal_parameter
.set Lset195, Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset195
	.long	250                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	99                      ## DW_AT_decl_line
	.long	833                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0xeb:0xf DW_TAG_formal_parameter
.set Lset196, Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset196
	.long	261                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	100                     ## DW_AT_decl_line
	.long	845                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0xfa:0xf DW_TAG_formal_parameter
.set Lset197, Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset197
	.long	266                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	101                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x109:0xf DW_TAG_formal_parameter
.set Lset198, Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset198
	.long	216                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	101                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x118:0xf DW_TAG_formal_parameter
.set Lset199, Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset199
	.long	208                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	101                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x127:0xf DW_TAG_formal_parameter
.set Lset200, Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset200
	.long	210                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	101                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x136:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	16
	.long	212                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	101                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x144:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	24
	.long	214                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	102                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x152:0xf DW_TAG_variable
.set Lset201, Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset201
	.long	282                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	105                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x161:0xf DW_TAG_variable
.set Lset202, Ldebug_loc14-Lsection_debug_loc ## DW_AT_location
	.long	Lset202
	.long	351                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	106                     ## DW_AT_decl_line
	.long	47                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x170:0xf DW_TAG_variable
.set Lset203, Ldebug_loc19-Lsection_debug_loc ## DW_AT_location
	.long	Lset203
	.long	363                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	107                     ## DW_AT_decl_line
	.long	47                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x17f:0xf DW_TAG_variable
.set Lset204, Ldebug_loc22-Lsection_debug_loc ## DW_AT_location
	.long	Lset204
	.long	374                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	114                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0x18e:0x5a DW_TAG_lexical_block
.set Lset205, Ldebug_ranges1-Ldebug_range ## DW_AT_ranges
	.long	Lset205
	.byte	8                       ## Abbrev [8] 0x193:0xf DW_TAG_variable
.set Lset206, Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset206
	.long	278                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	109                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x1a2:0x45 DW_TAG_lexical_block
	.quad	Ltmp37                  ## DW_AT_low_pc
.set Lset207, Ltmp44-Ltmp37             ## DW_AT_high_pc
	.long	Lset207
	.byte	8                       ## Abbrev [8] 0x1af:0xf DW_TAG_variable
.set Lset208, Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset208
	.long	288                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	109                     ## DW_AT_decl_line
	.long	877                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x1be:0xf DW_TAG_variable
.set Lset209, Ldebug_loc13-Lsection_debug_loc ## DW_AT_location
	.long	Lset209
	.long	345                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	109                     ## DW_AT_decl_line
	.long	877                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x1cd:0x19 DW_TAG_lexical_block
	.quad	Ltmp39                  ## DW_AT_low_pc
.set Lset210, Ltmp42-Ltmp39             ## DW_AT_high_pc
	.long	Lset210
	.byte	11                      ## Abbrev [11] 0x1da:0xb DW_TAG_variable
	.long	278                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	109                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x1e8:0x15 DW_TAG_lexical_block
.set Lset211, Ldebug_ranges2-Ldebug_range ## DW_AT_ranges
	.long	Lset211
	.byte	8                       ## Abbrev [8] 0x1ed:0xf DW_TAG_variable
.set Lset212, Ldebug_loc15-Lsection_debug_loc ## DW_AT_location
	.long	Lset212
	.long	278                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	110                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x1fd:0x56 DW_TAG_lexical_block
.set Lset213, Ldebug_ranges4-Ldebug_range ## DW_AT_ranges
	.long	Lset213
	.byte	8                       ## Abbrev [8] 0x202:0xf DW_TAG_variable
.set Lset214, Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset214
	.long	356                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.long	47                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x211:0xf DW_TAG_variable
.set Lset215, Ldebug_loc20-Lsection_debug_loc ## DW_AT_location
	.long	Lset215
	.long	367                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.long	47                      ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x220:0x1d DW_TAG_lexical_block
	.quad	Ltmp70                  ## DW_AT_low_pc
.set Lset216, Ltmp89-Ltmp70             ## DW_AT_high_pc
	.long	Lset216
	.byte	8                       ## Abbrev [8] 0x22d:0xf DW_TAG_variable
.set Lset217, Ldebug_loc17-Lsection_debug_loc ## DW_AT_location
	.long	Lset217
	.long	278                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	9                       ## Abbrev [9] 0x23d:0x15 DW_TAG_lexical_block
.set Lset218, Ldebug_ranges3-Ldebug_range ## DW_AT_ranges
	.long	Lset218
	.byte	8                       ## Abbrev [8] 0x242:0xf DW_TAG_variable
.set Lset219, Ldebug_loc18-Lsection_debug_loc ## DW_AT_location
	.long	Lset219
	.long	278                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	111                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	10                      ## Abbrev [10] 0x253:0x3a DW_TAG_lexical_block
	.quad	Ltmp126                 ## DW_AT_low_pc
.set Lset220, Ltmp146-Ltmp126           ## DW_AT_high_pc
	.long	Lset220
	.byte	8                       ## Abbrev [8] 0x260:0xf DW_TAG_variable
.set Lset221, Ldebug_loc21-Lsection_debug_loc ## DW_AT_location
	.long	Lset221
	.long	241                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	115                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x26f:0x1d DW_TAG_lexical_block
	.quad	Ltmp132                 ## DW_AT_low_pc
.set Lset222, Ltmp146-Ltmp132           ## DW_AT_high_pc
	.long	Lset222
	.byte	8                       ## Abbrev [8] 0x27c:0xf DW_TAG_variable
.set Lset223, Ldebug_loc23-Lsection_debug_loc ## DW_AT_location
	.long	Lset223
	.long	385                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	116                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	12                      ## Abbrev [12] 0x28e:0x96 DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
.set Lset224, Lfunc_end2-Lfunc_begin2   ## DW_AT_high_pc
	.long	Lset224
	.byte	1                       ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	199                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	141                     ## DW_AT_decl_line
	.long	804                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	13                      ## Abbrev [13] 0x2a7:0xd DW_TAG_variable
	.ascii	"\200 "                 ## DW_AT_const_value
	.long	216                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	144                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x2b4:0xf DW_TAG_variable
.set Lset225, Ldebug_loc24-Lsection_debug_loc ## DW_AT_location
	.long	Lset225
	.long	208                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	145                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x2c3:0xf DW_TAG_variable
.set Lset226, Ldebug_loc25-Lsection_debug_loc ## DW_AT_location
	.long	Lset226
	.long	210                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	149                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x2d2:0xf DW_TAG_variable
.set Lset227, Ldebug_loc26-Lsection_debug_loc ## DW_AT_location
	.long	Lset227
	.long	212                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	151                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x2e1:0xf DW_TAG_variable
.set Lset228, Ldebug_loc27-Lsection_debug_loc ## DW_AT_location
	.long	Lset228
	.long	214                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	159                     ## DW_AT_decl_line
	.long	42                      ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x2f0:0x19 DW_TAG_lexical_block
	.quad	Ltmp159                 ## DW_AT_low_pc
.set Lset229, Ltmp166-Ltmp159           ## DW_AT_high_pc
	.long	Lset229
	.byte	11                      ## Abbrev [11] 0x2fd:0xb DW_TAG_variable
	.long	241                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	154                     ## DW_AT_decl_line
	.long	811                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	14                      ## Abbrev [14] 0x309:0xd DW_TAG_call_site
	.long	199                     ## DW_AT_call_origin
	.quad	Ltmp170-Lfunc_begin2    ## DW_AT_call_return_pc
	.byte	14                      ## Abbrev [14] 0x316:0xd DW_TAG_call_site
	.long	199                     ## DW_AT_call_origin
	.quad	Ltmp171-Lfunc_begin2    ## DW_AT_call_return_pc
	.byte	0                       ## End Of Children Mark
	.byte	3                       ## Abbrev [3] 0x324:0x7 DW_TAG_base_type
	.long	204                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	4                       ## Abbrev [4] 0x32b:0xb DW_TAG_typedef
	.long	822                     ## DW_AT_type
	.long	218                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x336:0xb DW_TAG_typedef
	.long	65                      ## DW_AT_type
	.long	225                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	92                      ## DW_AT_decl_line
	.byte	2                       ## Abbrev [2] 0x341:0x5 DW_TAG_pointer_type
	.long	838                     ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x346:0x7 DW_TAG_base_type
	.long	256                     ## DW_AT_name
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	2                       ## Abbrev [2] 0x34d:0x5 DW_TAG_pointer_type
	.long	850                     ## DW_AT_type
	.byte	15                      ## Abbrev [15] 0x352:0x1b DW_TAG_subroutine_type
                                        ## DW_AT_prototyped
	.byte	16                      ## Abbrev [16] 0x353:0x5 DW_TAG_formal_parameter
	.long	42                      ## DW_AT_type
	.byte	16                      ## Abbrev [16] 0x358:0x5 DW_TAG_formal_parameter
	.long	42                      ## DW_AT_type
	.byte	16                      ## Abbrev [16] 0x35d:0x5 DW_TAG_formal_parameter
	.long	42                      ## DW_AT_type
	.byte	16                      ## Abbrev [16] 0x362:0x5 DW_TAG_formal_parameter
	.long	42                      ## DW_AT_type
	.byte	16                      ## Abbrev [16] 0x367:0x5 DW_TAG_formal_parameter
	.long	811                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	17                      ## Abbrev [17] 0x36d:0x21 DW_TAG_structure_type
	.long	296                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	5                       ## DW_AT_decl_file
	.byte	33                      ## DW_AT_decl_line
	.byte	18                      ## Abbrev [18] 0x375:0xc DW_TAG_member
	.long	305                     ## DW_AT_name
	.long	910                     ## DW_AT_type
	.byte	5                       ## DW_AT_decl_file
	.byte	35                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	18                      ## Abbrev [18] 0x381:0xc DW_TAG_member
	.long	337                     ## DW_AT_name
	.long	921                     ## DW_AT_type
	.byte	5                       ## DW_AT_decl_file
	.byte	36                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	4                       ## Abbrev [4] 0x38e:0xb DW_TAG_typedef
	.long	921                     ## DW_AT_type
	.long	312                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	120                     ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x399:0x7 DW_TAG_base_type
	.long	328                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	0                       ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset230, Ltmp0-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp2-Lfunc_begin0
	.quad	Lset231
.set Lset232, Ltmp3-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp15-Lfunc_begin0
	.quad	Lset233
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset234, Ltmp25-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp47-Lfunc_begin0
	.quad	Lset235
.set Lset236, Ltmp125-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp126-Lfunc_begin0
	.quad	Lset237
	.quad	0
	.quad	0
Ldebug_ranges2:
.set Lset238, Ltmp47-Lfunc_begin0
	.quad	Lset238
.set Lset239, Ltmp50-Lfunc_begin0
	.quad	Lset239
.set Lset240, Ltmp53-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp68-Lfunc_begin0
	.quad	Lset241
	.quad	0
	.quad	0
Ldebug_ranges3:
.set Lset242, Ltmp90-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp91-Lfunc_begin0
	.quad	Lset243
.set Lset244, Ltmp92-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp108-Lfunc_begin0
	.quad	Lset245
.set Lset246, Ltmp109-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp115-Lfunc_begin0
	.quad	Lset247
	.quad	0
	.quad	0
Ldebug_ranges4:
.set Lset248, Ltmp70-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp91-Lfunc_begin0
	.quad	Lset249
.set Lset250, Ltmp92-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp108-Lfunc_begin0
	.quad	Lset251
.set Lset252, Ltmp109-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp117-Lfunc_begin0
	.quad	Lset253
.set Lset254, Ltmp121-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp124-Lfunc_begin0
	.quad	Lset255
	.quad	0
	.quad	0
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	3                       ## Header Bucket Count
	.long	3                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	274153530               ## Hash in Bucket 0
	.long	2090499946              ## Hash in Bucket 1
	.long	-1044053904             ## Hash in Bucket 1
.set Lset256, LNames0-Lnames_begin      ## Offset in Bucket 0
	.long	Lset256
.set Lset257, LNames1-Lnames_begin      ## Offset in Bucket 1
	.long	Lset257
.set Lset258, LNames2-Lnames_begin      ## Offset in Bucket 1
	.long	Lset258
LNames0:
	.long	183                     ## saxpy
	.long	1                       ## Num DIEs
	.long	72
	.long	0
LNames1:
	.long	199                     ## main
	.long	1                       ## Num DIEs
	.long	654
	.long	0
LNames2:
	.long	189                     ## benchmark
	.long	1                       ## Num DIEs
	.long	199
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	10                      ## Header Bucket Count
	.long	10                      ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	-1                      ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	1                       ## Bucket 3
	.long	-1                      ## Bucket 4
	.long	-1                      ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	2                       ## Bucket 7
	.long	5                       ## Bucket 8
	.long	7                       ## Bucket 9
	.long	1078282830              ## Hash in Bucket 0
	.long	259121563               ## Hash in Bucket 3
	.long	567385087               ## Hash in Bucket 7
	.long	-282664779              ## Hash in Bucket 7
	.long	-80380739               ## Hash in Bucket 7
	.long	193495088               ## Hash in Bucket 8
	.long	-1880351968             ## Hash in Bucket 8
	.long	466678419               ## Hash in Bucket 9
	.long	2090147939              ## Hash in Bucket 9
	.long	-243996567              ## Hash in Bucket 9
.set Lset259, Ltypes4-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset259
.set Lset260, Ltypes2-Ltypes_begin      ## Offset in Bucket 3
	.long	Lset260
.set Lset261, Ltypes5-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset261
.set Lset262, Ltypes0-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset262
.set Lset263, Ltypes3-Ltypes_begin      ## Offset in Bucket 7
	.long	Lset263
.set Lset264, Ltypes6-Ltypes_begin      ## Offset in Bucket 8
	.long	Lset264
.set Lset265, Ltypes7-Ltypes_begin      ## Offset in Bucket 8
	.long	Lset265
.set Lset266, Ltypes8-Ltypes_begin      ## Offset in Bucket 9
	.long	Lset266
.set Lset267, Ltypes9-Ltypes_begin      ## Offset in Bucket 9
	.long	Lset267
.set Lset268, Ltypes1-Ltypes_begin      ## Offset in Bucket 9
	.long	Lset268
Ltypes4:
	.long	155                     ## uintptr_t
	.long	1                       ## Num DIEs
	.long	54
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	149                     ## float
	.long	1                       ## Num DIEs
	.long	47
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	296                     ## timespec
	.long	1                       ## Num DIEs
	.long	877
	.short	19
	.byte	0
	.long	0
Ltypes0:
	.long	225                     ## __darwin_size_t
	.long	1                       ## Num DIEs
	.long	822
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	165                     ## long unsigned int
	.long	1                       ## Num DIEs
	.long	65
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	204                     ## int
	.long	1                       ## Num DIEs
	.long	804
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	328                     ## long int
	.long	1                       ## Num DIEs
	.long	921
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	218                     ## size_t
	.long	1                       ## Num DIEs
	.long	811
	.short	22
	.byte	0
	.long	0
Ltypes9:
	.long	256                     ## char
	.long	1                       ## Num DIEs
	.long	838
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	312                     ## __darwin_time_t
	.long	1                       ## Num DIEs
	.long	910
	.short	22
	.byte	0
	.long	0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
