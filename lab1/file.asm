section .bss
file resb 20
fd resb 1	
section .data
file_name db 'myfile.txt'

section .text
	global main
main:
	;read and store the string
	mov eax, 3
	mov ebx, 0	;1 is stdin
	mov ecx, file 
	mov edx, 20
	int 0x80

	;create the file
	mov eax, 8
	mov ebx, file_name
	mov ecx, 0777	;read write and exe by all
	int 0x80
	
	mov [fd], eax	;store eax to file descriptor

	;write the raw data to file
	mov eax, 4
	mov ebx, [fd]
	mov ecx, file
	mov edx, 20
	int 0x80
	
	;close the file
	mov eax, 6
	mov ebx, [fd]
	int 0x80
	
	;case conversion
	mov eax, 0
	mov ebx, 0
	mov ecx, 0
	mov edx, 0
loop:	mov al,[file + ebx]
	cmp eax, 'a'
	jl notupper
	cmp eax, 'z'
	jg notupper
	and eax, ~0x20
	mov [file+ebx],al
notupper:
	inc ebx
	cmp ebx, 20
	jle loop
	;output case conversed string
	mov eax, 4
	mov ebx, 1
	mov ecx, file
	mov edx, 20
	int 0x80
	
	;exit
	mov eax, 1
	int 0x80
