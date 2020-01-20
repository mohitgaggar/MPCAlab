.text
    MOV r1,#11
    ands r1,r1,#0x001
    BEQ L1
    MOV r0,#255
    SWI 0X011
    L1:MOV r0,#0
.end