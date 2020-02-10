.data
    A:.byte 1,2,3,4,5,6,7,8,9,10
    B:.byte 0
    C:.ASCIZ "Found"
    D:.ASCIZ "Not Found"
.text
    mov r2,#10
    ldr r0,=A
    ldr r1,=B
    ldrb r6,[r1]
    add r3,r0,#9
    L:
    cmp r3,r0
    bmi L4
    add r4,r0,r3
    mov r4,r4,lsr #1
    ldrb r5,[r4]
    cmp r5,r6
    beq L1
    bpl L2
    bmi L3

    L1:
    ldr r0,=C
    swi 0x02
    swi 0x011

    L2:
    sub r3,r4,#1
    b L
    

    L3:
    add r0,r4,#1
    b L

    L4:
    ldr r0,=D
    swi 0x02
    swi 0x011