TOTAL equ 100 ;total number

global main

extern printf
extern scanf
section .data

smsg: db '%d',0
pmsg: db '%d',10,0

section .bss
data: resd TOTAL ;data

section .text
    main:

    ;read data
    mov ecx,0	;count
    mov esi,data	

loop1:
    ;x86传参用逆序的压栈
    lea eax,[esi+4*ecx]	
    push ecx	;save count
    push eax
    push smsg
    call scanf
    ;scanf("%d",&[esi+4*ecx])
    add esp,8
    pop ecx

    inc ecx
    cmp ecx,TOTAL
    jl loop1

    
    push eax	;save eax
    ;sort
    mov eax,0	;i
loop2:
    mov ebx,0	;j
loop3:
    mov ecx,[esi+4*ebx]		;ecx = data[j]
    mov edx,[esi+4*ebx+4]	;edx = data[j+1]
    cmp ecx,edx			;if data[j]<=data[j+2] ;//nothing
    jle done
    mov [esi+4*ebx],edx		;swap
    mov [esi+4*ebx+4],ecx

done:
    inc ebx
    mov ecx,TOTAL-1
    sub ecx,eax
    cmp ebx,ecx
    jl loop3
    inc eax
    cmp eax,TOTAL-1
    jl loop2
    pop ebx
    sub eax,ebx

    ;output result
    mov ecx,0	;count number
loop4:
    mov eax,[esi+4*ecx]	;eax = array[count]
    push ecx
    push eax
    push pmsg
    call printf
    add esp,8
    pop ecx

    inc ecx
    cmp ecx,TOTAL
    jl loop4

    ;return 0
    mov eax,0
    ret

