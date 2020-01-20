.data
    A:.byte 10,20,30,40,50,60,70,80,90,100
    B:.byte 0 
.text
    ldr r0,=A
    ldr r1,=B
    ldrb r2,[r1]
    mov r3,#10
    l:
    ldrb r1,[r0],#1
    add r2,r1,r2
    subs r3,r3,#1
    bne l
    strb r4,[r1]
    swi 0x011
