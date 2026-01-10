.global main
main:
	
	@define a function that counts the occurrences of a character in a string
	
	.text
	mov r1, #'w' @carattere da trovare
	ldr r0, =s @load the address of the string
	bl counter
	
	
	counter:push {lr}
	mov r2, #0@counter
	ldrb r3, [r0], #1
	loop: cmp r3, #0
	beq fine
	cmp r3, r1
	addeq r2, r2, #1
	ldrb r3, [r0], #1
	b loop
	
	
	fine: mov r0, r2
	pop {pc}
	
	
	.data

	s:	.string "hello world" @a random string
