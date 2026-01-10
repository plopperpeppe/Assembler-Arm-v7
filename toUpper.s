.global main
main:

		
.text

	LDR r0, =s
	BL upper

upper: 
	PUSH {lr}
	MOV r1, #0
	LDRB r2, [r0, r1]
	B loop
	
	
loop: 
	CMP r2, #0
	BEQ fine
	CMP r2, #'a'
	BLT increment
	CMP r2, #'z'
	BGT increment
	SUB r2, r2, #'a'
	ADD r2, r2, #'A'
	STRB r2, [r0, r1]
	B increment
	
increment: 
	ADD r1, r1, #1
	LDRB r2, [r0, r1]
	B loop
	
fine: 
	pop {pc}

	
.data
s:	.string "HelLo woRlD"