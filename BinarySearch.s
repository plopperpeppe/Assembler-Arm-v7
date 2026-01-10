.global main
main:
	
	@this program contains a function that search a int in a int array with binary search, binarySearch(int x, int dim, int *array)
	@The function returns 1 if we found the value and 0 if we didn't found it
	.text
	mov r0, #4 @random number to search, feel free to change this value for your test
	ldr r2, =v @load the address of the array
	mov r1, #8
	bl binarySearch
	
	
	binarySearch: push {r4-r6,lr}
	@we need to calculate the left and right margins
	mov r6, r2
	mov r2, #0 @left
	sub r1, r1, #1 @right
	mov r3, r0 @we mov the value to search in r3
	mov r0, r1, lsr #1 @we divide the dimention to take the half and save it in r0
	ldr r4, [r6, r0, lsl #2] @load the first value of the array
	bloop: cmp r2, r1
	bgt notFound
	cmp r4, r3
	beq bfine @we found the value and we can return
	bgt Sx
	b Dx
	
	bfine: mov r0, #1
	mov r2, r6
	pop {r4-r6,pc}
	
	Sx:	sub r1, r0, #1
	mov r5, r1
	sub r1, r1, r2
	mov r0, r1, lsr #1
	add r0, r0, r2
	mov r1, r5
	ldr r4, [r6, r0, lsl #2]
	b bloop
	
	Dx: add r2, r0, #1
	mov r5, r1
	sub r1, r1, r2
	mov r0, r1, lsr #1
	add r0, r0, r2
	mov r1, r5
	ldr r4, [r6, r0, lsl #2]
	b bloop
	
	notFound: mov r0, #0
	mov r2, r6
	pop {r4-r6,pc}


	.data

	v: .word 1,4,7,12,16,23,32,43 @random sorted array, you can change the value and the length

