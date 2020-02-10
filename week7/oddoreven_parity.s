.data
    A:.word 15
    B:.asciz "Even"
    C:.asciz "Odd"

.text
    ldr r0,=A
    mov r2,#32
    mov r3,#0
    ldr r1,[r0]
    L:
    tst r1,#1 
    addne   r3,r3,#1
    movs r1,r1,lsr #1
    @ beq End
    bne L
    tst r3,#1
    beq even
    bne odd

    even:
    ldr r0,=B
    swi 0x02
    swi 0x011

    odd: 
    ldr r0,=C
    swi 0x02
    swi 0x011

    End:
    swi 0x011