	ORG 00H
START:	MOV R1, #50H
	MOV @R1, #0D6H
	INC R1
	MOV @R1, #0F2H
	INC R1
	MOV @R1, #0E4H
	INC R1
	MOV @R1, #0A8H
	INC R1
	MOV @R1, #0CEH
	INC R1
	MOV @R1, #0B9H
	INC R1
	MOV @R1, #0FAH
	INC R1
	MOV @R1, #0AEH
	INC R1
	MOV @R1, #0BAH
	INC R1
	MOV @R1, #0CCH
	MOV R1, #050H
	MOV R2, #00H	;largest value
	MOV R3, #0FFH	;smallest value
	MOV R4, #10
CHECK:	MOV A, @R1
	CLR C
	SUBB A, R2
	JC NOTLARGE
	MOV A, @R1
	MOV R2, A
NOTLARGE:	MOV A, @R1
	CLR C
	SUBB A, R3
	JNC NOTSMALL
	MOV A, @R1
	MOV R3, A
NOTSMALL:	INC R1
	DJNZ R4, CHECK
	MOV A, R2
	MOV P0, A
	CALL DELAY
	MOV A, R3
	MOV P0, A
	ACALL DELAY
	SJMP START
	
DELAY: 	MOV R7, #7

HERE1: 	MOV R6, #1
HERE2: 	MOV R1, #2
HERE3: 	DJNZ R1, HERE3
	DJNZ R6, HERE3
	DJNZ R7, HERE3
	RET
	
	END
