.data
    A:.byte 0,1
.text
    ldr r0,=A
    mov r3,#5
    l:
    ldrb r1,[r0],#1
    ldrb r2,[r0],#1    
    add r2,r1,r2
    strb r2,[r0]
    sub r0,r0,#1
    subs r3,r3,#1
    bne l
    swi 0x011
