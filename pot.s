        .text
        .global main
main:
mov r0, #32
bl pot

pot:push {lr}
bl conta
cmp r0, #1
moveq r0, #1
movne r0, #0
pop {pc}

conta:push {lr}
mov r1, #0
cmp r0, #0
beq fine
mov r2, #0
mov r3, #1
and r3, r3, r0
cmp r3, #1
addeq r1, r1, #1
cloop:cmp r2, #31
mov r3, #1
beq fine
cmp r1, #1
bgt fine
lsr r0, #1
cmp r0, #0
beq fine
and r3, r3, r0
cmp r3, #1
addeq r1, r1, #1
add r2, r2, #1
b cloop
fine:mov r0, r1
pop {pc}



.data