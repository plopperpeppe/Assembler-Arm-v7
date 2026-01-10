.global _start
_start:
	
	@definiamo un programma con una funzione che, dato in r0 l'indirizzo di una stringa che contiene solo caratteri alfanumerici, conti
	@tutte le occorrenze del carattere il cui codice è in r1
	
	@r1 carattere da trovare
	@r0 contatore
	@r2 stringa
	
	.text
	mov r1, #'w' @carattere da trovare
	ldr r0, =s @carichiamo in r2 l'indirizzo della stringa
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