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

ADD R6, R6, #-2
ldr R7, R5, #-1
ADD R3, R4, #1
ldr R3, R3, #0
;RSHI
ADD R6, R6, #-1
STR R0, R6, #0
ADD R6, R6, #-1
STR R3, R6, #0
AND R0, R0, #0
ADD R0, R0, #1
ADD R3, R3, #0
BRz L3
L4
ADD R0, R0, R0
ADD R3, R3, #-1
BRnp L4
L3
ADD R3, R0, #0
ADD R3, R3, #0
BRz L5
ADD R6, R6, #-1
STR R7, R6, #0
ADD R6, R6, #-1
STR R3, R6, #0
AND R0, R0, #0
ADD R7, R7, #0
BRzp L6
NOT R7, R7
ADD R7, R7, #1
L6
ADD R3, R3, #0
BRn L7
NOT R3, R3
ADD R3, R3, #1
L7
ADD R7, R7, R3
BRn L8
ADD R0, R0, #1
BR L7
L8
LDR R3, R6, #0
ADD R6, R6, #1
LDR R7, R6, #0
ADD R6, R6, #1
ADD R3, R3, #0
BRzp L9
ADD R7, R7, #0
BRzp L10
BRn L5
L9
ADD R7, R7, #0
BRzp L5
L10
NOT R0, R0
ADD R0, R0, #1
L5
LDR R3, R6, #0
ADD R6, R6, #1
ADD R7, R0, #0
LDR R0, R6, #0
ADD R6, R6, #1
str R7, R5, #0
ldr R7, R5, #0
lc3_L1_rightshift
STR R7, R5, #3
ADD R6, R5, #1
LDR R5, R6, #0
ADD R6, R6, #1
LDR R7, R6, #0
ADD R6, R6, #1
RET


GLOBAL_DATA_START
L1_rightshift .FILL lc3_L1_rightshift
L2_rightshift .FILL #1
.END
