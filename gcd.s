     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r2,#2;
	MOV r7,#4;
loop	CMP r2,r7;
	SUBGT r2,r2,r7;
	SUBLT r7,r7,r2;
	BNE loop
       
stop B stop ; stop program
     ENDFUNC
     END
