;只是为了测试db 'hello',13,10,'$'在64位机器的内存中怎么存放的

;(gdb) x/10cb &msg
;0x6000d8:       104 'h' 101 'e' 108 'l' 108 'l' 111 'o' 13 '\r' 10 '\n' 36 '$'
;0x6000e0:       0 '\000'        0 '\000'

;(gdb) x 0x6000e0
;0x6000e0:       0x6c6c6568
;(gdb) x/b 0x6000e0
;0x6000e0:       0x68
;(gdb) x/4bc 0x6000e0
;0x6000e0:       104 'h' 101 'e' 108 'l' 108 'l' 111 'o'
;(gdb)
;
; 由此可见hello都存在一个内存单元0x6000e0，这个内存地址以byte为单位
; h'0x68' e'0x65' l'0x6c' l'0x6c' 


section .data
msg db 'hello',13,10,'$'
global _start

section .text
_start: mov  rax, 1
	mov  rdi, 1
	mov  rsi, msg	
	mov  rdx,8
	syscall
	
	mov  rax, 60
	xor  rdi, rdi
	syscall
