.global main
main:

	.text
	ldr r0, =array @load the array address into r0
	mov r1, #4 @dim
	bl bubblesort
	
	
	bubblesort: push {r4-r5,lr}
	mov r2, #0 @we use this as a index
	mov r5, #0 @this is a variable we use to do the last loop
	loop: 	cmp r2, r1
			beq reloop
			ldr r3, [r0, r2, lsl #2]
			add r2, r2, #1
			ldr r4, [r0, r2, lsl #2]
			cmp r3, r4
			bgt switch
			b loop
			
			
	switch: str r3, [r0, r2, lsl #2]
			sub r2, r2, #1
			str r4, [r0, r2, lsl #2]
			add r2, r2, #1
			mov r5, #1
			b loop
			
	reloop: cmp r5, #0
			beq fine
			mov r2, #0
			mov r5, #0
			b loop
			
	fine: pop {r4-r5,pc}


	
	
	.data
	array: .word 5,8,9,3,5