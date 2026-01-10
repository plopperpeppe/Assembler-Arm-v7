        .text
        .global main
main:
mov r0, #2
mov r1, #2
mov r2, #3
ldr r3, =m
bl croce



croce:push {r4-r7, lr}
mov r4, #0 @contatore
mov r5, r0
mov r6, r1
mov r7, r2
sub r7, r7, #1
bl elem
add r4, r4, r0 @sommiamo elemento corrente
mov r0, r5
mov r1, r6
cmp r1, r7
subeq r1, r1, r7
addne r1, r1, #1
bl elem
add r4, r4, r0 @sommiamo elemento destra
mov r0, r5
mov r1, r6
cmp r0, r7
subeq r0, r0, r7
addne r0, r0, #1
bl elem
add r4, r4, r0 @sommiamo elemento sotto
mov r0, r5
mov r1, r6
cmp r1, #0
addeq r1, r1, r7
subne r1, r1, #1
bl elem
add r4, r4, r0 @sommiamo elemento sinistra
mov r0, r5
mov r1, r6
cmp r0, #0
addeq r0, r0, r7
subne r0, r0, #1
bl elem
add r4, r4, r0 @sommiamo elemento sopra
mov r0, r4
pop {r4-r7,pc}

elem: push {lr}
mul r0,r0,r2
add r0,r0,r1
ldr r0, [r3, r0, lsl #2]
pop {pc}

.data
m:
.word 1, 2, 3

.word 4, 5, 6

.word 7, 8, 9