	.file	"sqrt.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%lf"
.LC6:
	.string	"%lf\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	lea	rax, -16[rbp]
	mov	rsi, rax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR -8[rbp], xmm0
	jmp	.L2
.L3:
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	divsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm2, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm2
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
.L2:
	movsd	xmm0, QWORD PTR -8[rbp]
	mulsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR -16[rbp]
	divsd	xmm0, xmm1
	movsd	xmm1, QWORD PTR .LC3[rip]
	subsd	xmm0, xmm1
	movq	xmm1, QWORD PTR .LC4[rip]
	andpd	xmm0, xmm1
	ucomisd	xmm0, QWORD PTR .LC5[rip]
	jnb	.L3
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -24[rbp], rax
	movsd	xmm0, QWORD PTR -24[rbp]
	lea	rdi, .LC6[rip]
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	ret
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1083129856
	.align 8
.LC2:
	.long	0
	.long	1073741824
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 16
.LC4:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC5:
	.long	2696277389
	.long	1049675511
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
