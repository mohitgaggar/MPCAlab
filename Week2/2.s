.text
    mov r0,#-12
    cmp r0,#0
    beq eq
    bpl positive
    bmi negative
    eq:
        mov r1,#1
        swi 0x011
    positive: 
        mov r1,#2
        swi 0x011
    negative:
        mov r1,#3
        swi 0x011
