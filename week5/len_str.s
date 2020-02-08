.data
    A:.ASCIZ "This is a string"
.text
    ldr r0,=A
    mov r2,#0
    ldrb r1,[r0]
    L:
        add r2,r2,#1
        add r0,r0,#1
        ldrb r1,[r0]
        cmp r1,#0
        bne L
        swi 0x011