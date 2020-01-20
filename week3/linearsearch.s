.data
    A:.byte 10,20,30,40,50,60,70,80,90,100
    B:.byte 900
.text
    ldr r0,=A
    ldr r1,=B
    ldrb r2,[r1]
    mov r7,#-1
    mov r3,#10
    l:
    ldrb r1,[r0],#1
    cmp r2,r1
    beq eq
    subs r3,r3,#1
    bne l
    swi 0x011

    eq:
    rsb r3,r3,#10
    mov r7,r3
    swi 0x011