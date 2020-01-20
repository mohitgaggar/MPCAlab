.text
    mov r0,#5
    mov r1,#1
    branch:
        mul r1,r0,r1
        subs r0,r0,#1
        bne branch
        swi 0x011
.end