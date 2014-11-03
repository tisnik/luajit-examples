-- BYTECODE -- test19.lua:12-18
0001    GGET     0   0      ; "print"
0002    CALL     0   1   1
0003    GGET     0   0      ; "print"
0004    KPRI     1   0
0005    CALL     0   1   2
0006    GGET     0   0      ; "print"
0007    KSHORT   1  42
0008    CALL     0   1   2
0009    GGET     0   0      ; "print"
0010    KSHORT   1   1
0011    KSHORT   2   2
0012    CALL     0   1   3
0013    GGET     0   0      ; "print"
0014    KSTR     1   1      ; "xyzzy"
0015    CALL     0   1   2
0016    RET0     0   1

-- BYTECODE -- test19.lua:0-27
0001    FNEW     0   0      ; test19.lua:12
0002    GSET     0   1      ; "main"
0003    GGET     0   1      ; "main"
0004    CALL     0   1   1
0005    RET0     0   1

