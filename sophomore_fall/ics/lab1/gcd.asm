;;2018.12
.ORIG x3000
GCD 	NOT R2,R1	;
	ADD R2,R2,#1	;r2=-r1
SUB	ADD R0,R0,R2	;r1=r0-r1
	BRp SUB
	BRz DONE
	ADD R0,R0,R1	;最后为负数
DONE	ADD R3,R0,#0	;temp r3=r1
	ADD R0,R1,#0	
	ADD R1,R3,#0	;change r3,r1
	BRnp GCD
	HALT
.END
