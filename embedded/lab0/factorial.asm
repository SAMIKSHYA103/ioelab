	ORG 00H
	NUMS EQU 05H
	;; storing value
START:	MOV R3, #NUMS
	CALL FACT
	MOV P0, A
	CALL DELAY
	SJMP START
	
DELAY: 	MOV R7, #7

HERE1: 	MOV R6, #1
HERE2: 	MOV R1, #2
HERE3: 	DJNZ R1, HERE3
	DJNZ R6, HERE3
	DJNZ R7, HERE3
	RET
	
FACT:	MOV A, #1
NEX:	MOV B, R3
	MUL AB
	DJNZ R3, NEX
	RET
	
	END



