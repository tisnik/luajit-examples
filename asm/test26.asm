-- BYTECODE -- test26.lua:0-44
0001    TNEW     0   0
0002    KSHORT   1 777
0003    TSETB    1   0   1
0004    KSHORT   1 999
0005    TSETB    1   0   2
0006    KSHORT   1 1000
0007    TSETB    1   0  10
0008    GGET     1   0      ; "print"
0009    MOV      2   0
0010    CALL     1   1   2
0011    GGET     1   0      ; "print"
0012    LEN      2   0
0013    CALL     1   1   2
0014    GGET     1   0      ; "print"
0015    TGETB    2   0   1
0016    CALL     1   1   2
0017    GGET     1   0      ; "print"
0018    TGETB    2   0   2
0019    CALL     1   1   2
0020    GGET     1   0      ; "print"
0021    TGETB    2   0  10
0022    CALL     1   1   2
0023    RET0     0   1

