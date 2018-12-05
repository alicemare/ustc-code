	.file	"stack_fram.c"
	.text
	.globl	s
	.type	s, @function
s:
.LFB23:
	.cfi_startproc
	leal	(%rdi,%rsi), %eax
	ret
	.cfi_endproc
.LFE23:
	.size	s, .-s
	.globl	t
	.type	t, @function
t:
.LFB24:
	.cfi_startproc
	movl	16(%rsp), %esi
	call	s
	rep ret
	.cfi_endproc
.LFE24:
	.size	t, .-t
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	pushq	$8
	.cfi_def_cfa_offset 24
	pushq	$7
	.cfi_def_cfa_offset 32
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	t
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	movl	%eax, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
