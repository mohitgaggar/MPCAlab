.data
    A:.ASCIZ "This is a string"
    B:.ASCIZ "i"
    C:.ASCIZ "Found"
    D:.ASCIZ "Not Found"
.text
    ldr r0,=A
    ldr r4,=B
    mov r8,#0
    ldrb r7,[r4]
    ldrb r1,[r0]
    L:
        cmp r1,r7
        add r8,r8,#1
        beq L2
        add r0,r0,#1
        ldrb r1,[r0]
        cmp r1,#0
        bne L
        b L3
        swi 0x011
    L2:
    ldr r0,=C
    swi 0x02
    swi 0x011
    L3:
    ldr r0,=D
    swi 0x02
