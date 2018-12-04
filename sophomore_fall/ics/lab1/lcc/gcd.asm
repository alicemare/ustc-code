.Orig x3000
INIT_CODE
LEA R6, #-1
ADD R5, R6, #0
ADD R6, R6, R6
ADD R6, R6, R6
ADD R6, R6, R5
ADD R6, R6, #-1
ADD R5, R5, R5
ADD R5, R6, #0
LD R4, GLOBAL_DATA_POINTER
LD R7, GLOBAL_MAIN_POINTER
jsrr R7
HALT

GLOBAL_DATA_POINTER .FILL GLOBAL_DATA_START
GLOBAL_MAIN_POINTER .FILL main
;;;;;;;;;;;;;;;;;;;;;;;;;;;;main;;;;;;;;;;;;;;;;;;;;;;;;;;;;
main
ADD R6, R6, #-2
STR R7, R6, #0
ADD R6, R6, #-1
STR R5, R6, #0
ADD R5, R6, #-1

ADD R6, R6, #-3
ADD R7, R4, #5
ldr R7, R7, #0
str R7, R5, #0
ADD R7, R4, #4
ldr R7, R7, #0
str R7, R5, #-1
lc3_L4_gcd
ldr R7, R5, #0
ldr R3, R5, #-1
ADD R6, R6, #-1
STR R0, R6, #0
ADD R3, R3, #0
BRz L8
ADD R6, R6, #-1
STR R7, R6, #0
ADD R6, R6, #-1
STR R3, R6, #0
AND R0, R0, #0
ADD R7, R7, #0
BRzp L9
NOT R7, R7
ADD R7, R7, #1
L9
ADD R3, R3, #0
BRn L10
NOT R3, R3
ADD R3, R3, #1
L10
ADD R7, R7, R3
BRzp L10
ADD R0, R7, #0
NOT R3, R3
ADD R3, R3, #1
ADD R0, R0, R3
LDR R3, R6, #0
ADD R6, R6, #1
LDR R7, R6, #0
ADD R6, R6, #1
ADD R3, R3, #0
BRzp L12
ADD R7, R7, #0
BRzp L13
BRn L8
L12
ADD R7, R7, #0
BRzp L8
L13
NOT R0, R0
ADD R0, R0, #1
L8
ADD R7, R0, #0
LDR R0, R6, #0
ADD R6, R6, #1
;modding done
str R7, R5, #-2
ldr R7, R5, #0
str R7, R5, #-1
ldr R7, R5, #-2
str R7, R5, #0
lc3_L5_gcd
ldr R7, R5, #-1
ADD R3, R4, #3
ldr R3, R3, #0
NOT R7, R7
ADD R7, R7, #1
ADD R7, R7, R3
BRzp L14
ADD R7, R4, #0
LDR R7, R7, #0
jmp R7
L14
ldr R7, R5, #0
lc3_L1_gcd
STR R7, R5, #3
ADD R6, R5, #1
LDR R5, R6, #0
ADD R6, R6, #1
LDR R7, R6, #0
ADD R6, R6, #1
RET


GLOBAL_DATA_START
L4_gcd .FILL lc3_L4_gcd
L5_gcd .FILL lc3_L5_gcd
L1_gcd .FILL lc3_L1_gcd
L7_gcd .FILL #0
L3_gcd .FILL #8
L2_gcd .FILL #6
.END
