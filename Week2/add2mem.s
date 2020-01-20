.text
    ldr r0,=A
    ldr r1,=B
    ldr r2,=C
    ldr r3,[r0]
    ldr r4,[r1]
    adds r5,r3,r4
    str r5,[r2]
.data
    A:.word 10
    B:.word 20
    C:.word 0PES1201800114