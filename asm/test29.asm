-- BYTECODE -- test29.lua:0-42
0001    TNEW     0   4
0002    TDUP     1   0
0003    TSETB    1   0   1
0004    TDUP     1   1
0005    TSETB    1   0   2
0006    TDUP     1   2
0007    TSETB    1   0   3
0008    GGET     1   3      ; "print"
0009    MOV      2   0
0010    CALL     1   1   2
0011    GGET     1   3      ; "print"
0012    LEN      2   0
0013    CALL     1   1   2
0014    GGET     1   3      ; "print"
0015    TGETB    2   0   1
0016    LEN      2   2
0017    CALL     1   1   2
0018    GGET     1   3      ; "print"
0019    TGETB    2   0   2
0020    LEN      2   2
0021    CALL     1   1   2
0022    GGET     1   3      ; "print"
0023    TGETB    2   0   3
0024    LEN      2   2
0025    CALL     1   1   2
0026    GGET     1   3      ; "print"
0027    TGETB    2   0   1
0028    TGETB    2   2   1
0029    CALL     1   1   2
0030    GGET     1   3      ; "print"
0031    TGETB    2   0   3
0032    TGETB    2   2   4
0033    CALL     1   1   2
0034    RET0     0   1

