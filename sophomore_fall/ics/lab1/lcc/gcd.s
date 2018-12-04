	.file	"gcd.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	movl	$8, %esi
	movl	$6, %ecx
	jmp	.L2
.L3:
	movl	%edx, %ecx
.L2:
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%edx, %eax
	movl	%ecx, %esi
	testl	%ecx, %ecx
	jg	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
