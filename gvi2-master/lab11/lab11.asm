; This program calculates X! (X factorial). It can calculate
;   different numbers (4!, 6!, etc.) by changing the value of the first memory
;   location at the bottom of the code. It is currently set up to calculate
;   5!. The program does not account for zero or negative numbers as input.
 
; This program primarily uses registers in the following manner:
; R0 contains 0 (registers contain zero after reset)
; R1 contains multiplication result (6x5 = 30, 30x4 = 120, etc)
; R2 contains -1
; R3 contains counter for outer loop
; R4 contains counter for inner loop
; R5 contains current sum

            .ORIG x3000               ;		// Added the .ORIG function to initialize the first line

            LD    R1,INPUT            ;x3000 R1 contains input number
            LD    R2,NEG              ;x3001 R2 contains -1	 //Second argument is the label of the negative value
            ADD   R3,R1,R2            ;x3002 R3 contains input number -1
            ADD   R3,R3,R2            ;x3003 R3 contains input number -2	 //Deleted unnecessary comma before SR
                                      ;   (initializes outer count)
OUTERLOOP   ADD   R4,R0,R3            ;x3004 Copy outer count into inner count
 
; This loop multiplies via addition (6x5 = 6+6+6+6+6 = 30,
;   30x4 = 30+30+30+30 = 120, etc)
INNERLOOP   ADD   R5,R5,R1            ;x3005 Increment sum
            ADD   R4,R4,R2            ;x3006 Decrement inner count
            BRzp  INNERLOOP           ;x3007 Branch to inner loop if inner count
                                      ;   is positive or zero
            ADD   R1,R0,R5            ;x3008 R1 now contains sum result from inner loop
            LD	  R5,ZERO             ;x3009 Clear R5 (previous sum) to 0 	//Loads R5 with memory at label ZERO
            ADD   R3,R3,R2            ;x300A Decrement outer count
            BRzp  OUTERLOOP           ;x300B Branch to outer loop if outer count	//Fixed BRpz
                                      ;   is positive or zero

            STI   R1,RESULT           ;x300C This address contains X!	//Indirect store to label RESULT which stores to x30FF          
            TRAP x25                  ;x300D

INPUT      .FILL  x0005               ;x300E Input for X!, in this case X = 5
ZERO       .FILL  x0000		      ;x300F //Added label ZERO
NEG        .FILL  xFFFF               ;x3010 2's complement of 1 (i.e. -1) //Added label NEG for the negative reference
RESULT     .FILL  x30FF               ;x3011 At program completion, the result is //Added label RESULT to store the result on x300C
                                      ;   stored here
	   .END			      ;x3012 //Added .END directive
