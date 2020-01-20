.data
    A:.byte 2,3,4,5
    B:.byte 3,4,5,6
.text
    ldr r0,=A
    ldr r1,=B
    mov r3,#4
    l:
    ldrb r4,[r0],#1
    ldrb r5,[r1],#1    
    mla r6,r5,r4,r6
    subs r3,r3,#1
    bne l
    swi 0x011
