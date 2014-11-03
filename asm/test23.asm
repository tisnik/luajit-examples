-- BYTECODE -- test23.lua:13-14
0001    RET0     0   1

-- BYTECODE -- test23.lua:21-23
0001    KSHORT   0  42
0002    RET1     0   2

-- BYTECODE -- test23.lua:30-32
0001    KSHORT   0   1
0002    KSHORT   1   2
0003    RET      0   3

-- BYTECODE -- test23.lua:39-41
0001    KSHORT   0   1
0002    KPRI     1   0
0003    RET      0   3

-- BYTECODE -- test23.lua:48-53
0001    GGET     0   0      ; "print"
0002    GGET     1   1      ; "function1"
0003    CALL     1   0   1
0004    CALLM    0   1   0
0005    GGET     0   0      ; "print"
0006    GGET     1   2      ; "function2"
0007    CALL     1   0   1
0008    CALLM    0   1   0
0009    GGET     0   0      ; "print"
0010    GGET     1   3      ; "function3"
0011    CALL     1   0   1
0012    CALLM    0   1   0
0013    GGET     0   0      ; "print"
0014    GGET     1   4      ; "function4"
0015    CALL     1   0   1
0016    CALLM    0   1   0
0017    RET0     0   1

-- BYTECODE -- test23.lua:0-62
0001    FNEW     0   0      ; test23.lua:13
0002    GSET     0   1      ; "function1"
0003    FNEW     0   2      ; test23.lua:21
0004    GSET     0   3      ; "function2"
0005    FNEW     0   4      ; test23.lua:30
0006    GSET     0   5      ; "function3"
0007    FNEW     0   6      ; test23.lua:39
0008    GSET     0   7      ; "function4"
0009    FNEW     0   8      ; test23.lua:48
0010    GSET     0   9      ; "main"
0011    GGET     0   9      ; "main"
0012    CALL     0   1   1
0013    RET0     0   1

