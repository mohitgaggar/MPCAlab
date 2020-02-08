.data
    A:.ASCIZ "This is a string"
    B:.ASCIZ ""
.text
    ldr r5,=A
    ldr r3,=B
    ldr r0,=B
    L:
        ldrb r1,[r5]
        add r5,r5,#1
        strb r1,[r3]
        add r3,r3,#1
        cmp r1,#0
        bne L
        
        swi 0x02
        swi 0x011