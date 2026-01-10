.global main
main:

	@define a function that takes 4 values, a,b,c and x and calculate ax^2+bx+c
	
	mov r1, #3 @a
	mov r2, #5 @b
	mov r3, #2 @c
	mov r0, #7 @x
	b function
	
	
	function: push {lr}
	mul r2, r2, r0
	add r2, r2, r3
	mul r0, r0, r0
	mul r0, r0, r1
	add r0, r0, r2 
	pop {pc} 