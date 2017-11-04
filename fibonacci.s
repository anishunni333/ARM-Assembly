     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r2,#0xD;count
	MOV r0,#0;          first number
	MOV r1,#1;          second number
	MOV r3,#0;          it holds the subsiquent numbers
loop	CMP r2,#0;
	ADD r3,r0,r1;
	MOV r0,r1;
	MOV r1,r3;
	SUBGT r2,r2,#1;
	BGT loop
	 
stop B stop ; stop program
     ENDFUNC
     END