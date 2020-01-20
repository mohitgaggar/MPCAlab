.text
    ldr r0,=A
    ldr r1,=B
    mov r2,#4
    l:
        ldr r3,[r0]
        add r0,r0,#4
        str r3,[r1]
        add r1,r1,#4
        subs r2,r2,#1
        bne l
.data
    A:.word 10,20,30,40
    B:.word 0