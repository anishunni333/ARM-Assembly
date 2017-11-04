     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r0,#2;  first number      
	MOV r1,#5;  second number
	MOV r2,#6;  third number
	CMP r0,r1;
	ITE GT
	MOVGT r4,r0; r4 holds the largest number
	MOVLE r4,r1;
	CMP r2,r4;
	IT GT
	MOVGT r4,r2; 
	 
stop B stop ; stop program
     ENDFUNC
     END