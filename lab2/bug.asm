global main

section .bss
n resb 1
array resb 100

section .data

section .text
main:

part1:  

        mov eax, 3
        mov ebx, 1
        mov ecx, n
        mov edx, 1
        int 80h

part2:
        xor eax, eax
        mov al, [n]
        sub eax, '0'
        mov edx, eax

;LOOP FOR CAL 1 to N^2

      mov ebx, 0      ;line
L2:   mov ecx, 0      ;row
L1:   mov eax, ebx
	push edx
 	mul edx
	pop edx
        add eax, ecx    ;eax = line*n+ecx
        mov edi, eax	;edi = offset
        inc eax		;eax = number 
        mov [array+edi], al ;array[i-1]=i
        inc ecx
        cmp ecx, edx
        jl L1
        inc ebx
        cmp ebx, edx
        jl L2

       mov ebx, 0      ;line number
L4:
       mov ecx, 0      ;row number
       
L3:
        cmp ebx, ecx
        jl skipoutput
        push ebx
	push ecx
	push edx
	mov eax, ebx
        mul dl
        add eax, ecx
	xor edx, edx
        mov dl, byte[array+eax]
        ;输出部分
       
        mov eax, edx
        mov ebx ,10
        cmp eax, ebx
bug:        jl skip
        div bl  ;余数在ah，商在al
        ;输出商
	mov edi, eax
	movzx ecx,al
        add ecx ,'0'
        push ecx
        mov eax, 4
        mov ebx, 1
        mov ecx, esp
        mov  edx, 1
        int 0x80
        add esp, 4
	;输出余数
	mov eax, edi
        movzx ecx,ah
        add ecx,'0'
        push ecx
	mov eax, 4
        mov ecx, esp
        int 0x80
        add esp, 4
	jmp popsave
skip: add eax, '0'
        push eax
        mov eax, 4
        mov ebx, 1
        mov ecx, esp
        mov edx, 1
        int 0x80
        add esp,4 
popsave:
        pop edx
        pop ecx
        pop ebx
        ;输出部分结束
skipoutput:
        inc ecx
        cmp ecx, edx
        jl L3
        ;打印回车
        push ebx
        push ecx
        push edx
        mov eax, 4
        mov ebx, 1
        push 10
        mov ecx, esp
        mov edx, 1
        int 0x80
        add esp,4
        pop edx
        pop ecx
        pop  ebx
        
        inc ebx
        cmp ebx, edx
        jl L4

 ; Exit code
   mov eax, 1
   mov ebx, 0
   int 80h
