.global main
main:
	@the function search the value in the ith array of the matrix, return -1 in case of not finding
	 
	.text
	ldr r0, =array
	mov r1, #2 @index
	mov r2, #77 @the value to search
	mov r3, #8
	bl matrixSearch
	
	
	matrixSearch: push {r4,lr}
	mov r4, #0 @indice
	ldr r0, [r0, r1, lsl #2]
	loop: cmp r4, r3 
	beq fine
	ldr r1, [r0, r4, lsl #2]
	cmp r1, r2
	beq found
	add r4, r4, #1
	b loop
	
	found: mov r0, #1
	pop {pc}
	
	fine: mov r0, #-1
	pop {r4,pc}


	.data
	a0: .word 13,47,25,62,8,91,37,54
	a1: .word 72,18,39,55,23,11,64,90
	a2: .word 5,41,77,9,33,84,26,67
	a3: .word 31,92,12,40,68,2,87,58
	a4: .word 46,19,74,8,61,93,27,52
	a5: .word 79,15,44,56,21,35,99,63
	a6: .word 28,7,82,10,65,49,94,30
	a7: .word 53,16,38,85,3,71,12,66
	array: .word a0,a1,a2,a3,a4,a5,a6,a7