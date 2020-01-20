.text
    ldr r0,=A
    ldr r1,=B
    mov r2,#4
    l:
        ldr r3,[r0]
        ldr r4,[r1]
        add r0,r0,#4
        add r4,r4,r3
        str r4,[r1]
        subs r2,r2,#1
        bne l
.data
    A:.word 10,20,30,40
    B:.word 0 
