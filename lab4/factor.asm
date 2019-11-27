extern printf
extern scanf

section .data
pmsg db '%20ld',10,0
smsg db '%d',10,0
section .bss
n resq 1

section .text

global main
main:
	;read n
	;mov rax, 0
	;mov rdi, 1
	;mov rsi, n
	;mov rdx, 1
	;syscall
;input:
	mov rdi, smsg
	xor rsi, rsi
	mov rsi, n
	mov rax, 0
	call scanf
	call fact

;output:
	mov rdi, pmsg	;第一个参数
	mov rsi, rax	;第二个参数
	mov eax, 0	;不使用mmx
	call printf
	

	
fact:
	cmp rcx, 1
	jg cal
	;0!=1
	mov rax, 1
	ret
cal:	
	dec rcx
	call fact
mul:	inc rcx
	mul rcx		;rax = rax * ecx	;rdx = 0
	ret 


