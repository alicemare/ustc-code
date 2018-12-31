## homework05

PB17030889	吉志远

----

1. This instruction is equal to 

   ​	x4F08 LD R1, x4F08

   In machine language level is 

   ​	0010 001 111111111

   so after this instruction 

   R1 will load the value in memory unit x4F08, e.g. 23FF

2. This error will not be discoverd until running it 

   bug: ADD instruction have 5 bit for immediately date, so the imm5 range is [-32,15], well in this example the #30 will be #-2 in running

   ![1544525108197](/home/alicemare/.config/Typora/typora-user-images/1544525108197.png)

3. 1. // Symbol table
      // Scope level 0:
      //	Symbol Name       Page Address
      //	----------------  ------------
      //	LOOP              3003
      //	L1                300A
      //	NEXT              300B
      //	DONE              300D
      //	NUMBERS           300E
   2. adds up the sequence of nonngegative integers

4. (a) LDR  R3, R1, #0

   (b) NOT R4, R4

   (c) ADD R4, R4, #1

5. 1. R0:	x300B

      R1:	x300D

      R2:	x000A

      R3:	x1263

      R4:	x300B

   2. Addr1: x300B

      Addr2: x000A

      Addr3: x000A

      Addr4: x300B

      Addr5: x300D

6. BRp CHECK --> BRzp CHECK

7. check how many '1' in mem(x4000)[15:13] and store the answer in x5000(Ptr2)

8. interrupt-driven I/O is more effecitive because the CPU will only be busying with I/O when is proper time to deal I/O

   well in other hand, polling will make CPU waitting until a signal arrive, which consume much time doing nothing

9. 1. output '2' again and again
   2. the keboard interrupt service routine will do:
      1. load mem(mem(KBSR)) into R0
      2. getchar and store in R0
      3. return 
   3. the next char to be print is what someone just hit

10. 