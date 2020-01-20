mov r0,#10
mov r1,#20
cmp r0,r1
beq e
sub r2,r0,r1
SWI 0X011
e:
add r2,r0,r1
SWI 0X011
