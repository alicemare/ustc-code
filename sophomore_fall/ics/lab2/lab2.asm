.ORIG x3000
;;interface
;;using R0 as argument 'n'
;;R0 return value

;;__start() begins here:

JSR main		
ADD R0,R3,#0	;R0=main()
HALT
;;main() begins 
main 
ST R1,SAVE1
ST R2,SAVE2
ST R4,SAVE4
ST R5,SAVE5
ST R6,SAVE6
LEA R6,STACK	;R6 is location for return address stack
LEA R5,TEMP		;R5 is location for n stack
LEA R4,T		;R4 is location for t stack
LEA R2,RESULT	;R2 is return value

STR R7,R6,#0	;store return __start address
ADD R6,R6,#1
IN				; char R0 = GETC()
LD R3,ASCII
ADD R1,R0,R3	;R1=GETC()-'0',e.g.R1 = n
JSR func
ADD R2,R2,#-1
LDR R3,R2,#0	;now R3 is return value

ADD R6,R6,#-1
LDR R7,R6,#0	;load return __start address
LD R1,SAVE1
LD R2,SAVE2
LD R4,SAVE4
LD R5,SAVE5
LD R6,SAVE6
RET

;;func()
;;R3 作为返回值
;;R0 为传入参数
func 
STR R7,R6,#0	;save return address in stack
ADD R6,R6,#1	;increase stack pointer
IN				;input t
LD  R3,ASCII
ADD R0,R0,R3	;t = GETC()-'0'
ADD R1,R1,#-1	;test n=n-1
BRnz else		;n<=1?jump to else, return t
STR R1,R5,#0	;save n-1 to temp n stack
ADD R5,R5,#1
STR R0,R4,#0	;save t to temp t stack
ADD R4,R4,#1	
JSR func		;call func(n-1)
;;restore R1(n) from R5(temp)
ADD R5,R5,#-1
LDR R1,R5,#0	;load n-1
ADD R1,R1,#-1	;get func(n-2)
JSR func
;;
ADD R2,R2,#-1	
LDR R1,R2,#0	;R1 = y e.g. func(n-2)
ADD R2,R2,#-1	
LDR R3,R2,#0	;R3 = x e.g. func(n-1)
ADD R3,R3,R1	;sum x and y, store to R3
ADD R4,R4,#-1	
LDR R1,R4,#0	;R1=t
ADD R3,R3,R1	;x+y+t
ADD R3,R3,#-1	;return x+y+t-1
BRnzp Done

else 
;;recurse base, just return t
ADD R3,R0,#0	;R3=t
Done
;;deal with jump back
ADD R6,R6,#-1	;decrement stack
LDR R7,R6,#0	;load return address
STR R3,R2,#0	;save Result value
ADD R2,R2,#1	;increment result stack
RET	
;;
SAVE1	.BLKW 1
SAVE2	.BLKW 1
SAVE4	.BLKW 1
SAVE5	.BLKW 1
SAVE6	.BLKW 1
ASCII  .FILL xFFD0	;数字0的补码表示
STACK  .BLKW #60
TEMP   .BLKW #60
T      .BLKW #60
RESULT .BLKW #60
.END
