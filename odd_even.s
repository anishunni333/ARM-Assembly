     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r0,#2;        
	MOV r1,#6;        number for test       
	udiv r2,r1,r0;    r0=r3/r2
	mls r2,r2,r0,r1;  remainter
	CMP r2,#0;        
	ITE EQ
	MOVEQ r3,#1;      r3=1 if number is even 
	MOVNE r3,#0;      r3=0 if number is odd
	 
stop B stop ; stop program
     ENDFUNC
     END