; To assemble and run:
;
;	nasm -felf64 hello.asm && ld hello.o && ./a.out
;-------------------------------------------------------------------------

	global	_start

	section .text
_start: mov 	rax, 1
	mov	rdi, 1
	mov 	rsi, message
	mov	rdx, 13
	syscall
	mov	rax, 60
	xor	rdi, rdi
	syscall

	section .data

;db: A pseudo-instruction that declares bytes that will be in memory when the program runs
message: db	"Hello,World",10	;10 is using to note the newline
					; e.g. , is just link the two part

