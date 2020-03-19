	.file	"prvocisla.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Vitej, jdeme hledat prvo\304\215\303\255sla. GL !!"
.LC1:
	.string	"%ld, "
.LC2:
	.string	"\n konec %c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8048, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -8040(%rbp)
	leaq	-8016(%rbp), %rdx
	movl	$0, %eax
	movl	$1000, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$2, -8016(%rbp)
	movq	$2, -8024(%rbp)
	movl	$0, -8036(%rbp)
	jmp	.L2
.L9:
	movb	$0, -8041(%rbp)
	jmp	.L3
.L8:
	addq	$1, -8024(%rbp)
	movl	$0, -8032(%rbp)
	jmp	.L4
.L7:
	movl	-8032(%rbp), %eax
	cltq
	movq	-8016(%rbp,%rax,8), %rcx
	movq	-8024(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	testq	%rax, %rax
	je	.L5
	movb	$1, -8041(%rbp)
	jmp	.L14
.L5:
	movb	$0, -8041(%rbp)
	jmp	.L3
.L14:
	addl	$1, -8032(%rbp)
.L4:
	movl	-8032(%rbp), %eax
	cmpl	-8040(%rbp), %eax
	jle	.L7
.L3:
	movzbl	-8041(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L8
	addl	$1, -8040(%rbp)
	movl	-8040(%rbp), %eax
	cltq
	movq	-8024(%rbp), %rdx
	movq	%rdx, -8016(%rbp,%rax,8)
	addl	$1, -8036(%rbp)
.L2:
	cmpl	$999, -8036(%rbp)
	jle	.L9
	movl	$0, -8028(%rbp)
	jmp	.L10
.L11:
	movl	-8028(%rbp), %eax
	cltq
	movq	-8016(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -8028(%rbp)
.L10:
	movl	-8028(%rbp), %eax
	cmpl	-8040(%rbp), %eax
	jl	.L11
	movl	$10, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
