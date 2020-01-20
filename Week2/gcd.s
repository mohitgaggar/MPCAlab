.text
    ldr r0,=A
    ldr r1,=B
    ldr r2,[r0]
    ldr r3,[r1]
    l0:
        cmp r2,r3
        beq l1
        bpl l2
        bmi l3         
    
    l1:
        mov r5,r2
        swi 0x011

    l2:
        mov r4,r2
        mov r2,r3
        sub r3,r4,r3
        b l0
    
    l3:
        mov r4,r3
        mov r3,r2
        sub r2,r4,r2
        b l0

.data
    A:.word 19
    B:.word 15