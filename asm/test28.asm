-- BYTECODE -- test28.lua:0-55
0001    TNEW     0   0
0002    KSTR     1   0      ; "first"
0003    KSHORT   2   2
0004    KSTR     3   1      ; "tenth"
0005    KSHORT   4 777
0006    TSETV    4   0   1
0007    KSHORT   4 999
0008    TSETV    4   0   2
0009    KSHORT   4 1000
0010    TSETV    4   0   3
0011    GGET     4   2      ; "print"
0012    MOV      5   0
0013    CALL     4   1   2
0014    GGET     4   2      ; "print"
0015    LEN      5   0
0016    CALL     4   1   2
0017    GGET     4   2      ; "print"
0018    TGETV    5   0   1
0019    CALL     4   1   2
0020    GGET     4   2      ; "print"
0021    TGETV    5   0   2
0022    CALL     4   1   2
0023    GGET     4   2      ; "print"
0024    TGETV    5   0   3
0025    CALL     4   1   2
0026    RET0     0   1

