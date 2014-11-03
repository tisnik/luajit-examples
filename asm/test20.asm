-- BYTECODE -- test20.lua:12-13
0001    RET0     0   1

-- BYTECODE -- test20.lua:20-22
0001    RET1     0   2

-- BYTECODE -- test20.lua:29-35
0001    ISF          0
0002    JMP      2 => 0008
0003    ISF          1
0004    JMP      2 => 0008
0005    ADDVV    2   0   1
0006    RET1     2   2
0007    JMP      2 => 0010
0008 => KPRI     2   0
0009    RET1     2   2
0010 => RET0     0   1

-- BYTECODE -- test20.lua:42-48
0001    GGET     0   0      ; "function1"
0002    CALL     0   1   1
0003    GGET     0   0      ; "function1"
0004    KPRI     1   0
0005    CALL     0   1   2
0006    GGET     0   0      ; "function1"
0007    KSHORT   1  42
0008    CALL     0   1   2
0009    GGET     0   0      ; "function1"
0010    KSHORT   1   1
0011    KSHORT   2   2
0012    CALL     0   1   3
0013    GGET     0   0      ; "function1"
0014    KSTR     1   1      ; "xyzzy"
0015    CALL     0   1   2
0016    RET0     0   1

-- BYTECODE -- test20.lua:55-61
0001    GGET     0   0      ; "function2"
0002    CALL     0   1   1
0003    GGET     0   0      ; "function2"
0004    KPRI     1   0
0005    CALL     0   1   2
0006    GGET     0   0      ; "function2"
0007    KSHORT   1  42
0008    CALL     0   1   2
0009    GGET     0   0      ; "function2"
0010    KSHORT   1   1
0011    KSHORT   2   2
0012    CALL     0   1   3
0013    GGET     0   0      ; "function2"
0014    KSTR     1   1      ; "xyzzy"
0015    CALL     0   1   2
0016    RET0     0   1

-- BYTECODE -- test20.lua:68-74
0001    GGET     0   0      ; "function3"
0002    CALL     0   1   1
0003    GGET     0   0      ; "function3"
0004    KPRI     1   0
0005    CALL     0   1   2
0006    GGET     0   0      ; "function3"
0007    KSHORT   1  42
0008    CALL     0   1   2
0009    GGET     0   0      ; "function3"
0010    KSHORT   1   1
0011    KSHORT   2   2
0012    CALL     0   1   3
0013    GGET     0   0      ; "function3"
0014    KSTR     1   1      ; "xyzzy"
0015    CALL     0   1   2
0016    RET0     0   1

-- BYTECODE -- test20.lua:81-85
0001    GGET     0   0      ; "callFunction1"
0002    CALL     0   1   1
0003    GGET     0   1      ; "callFunction2"
0004    CALL     0   1   1
0005    GGET     0   2      ; "callFunction3"
0006    CALL     0   1   1
0007    RET0     0   1

-- BYTECODE -- test20.lua:0-94
0001    FNEW     0   0      ; test20.lua:12
0002    GSET     0   1      ; "function1"
0003    FNEW     0   2      ; test20.lua:20
0004    GSET     0   3      ; "function2"
0005    FNEW     0   4      ; test20.lua:29
0006    GSET     0   5      ; "function3"
0007    FNEW     0   6      ; test20.lua:42
0008    GSET     0   7      ; "callFunction1"
0009    FNEW     0   8      ; test20.lua:55
0010    GSET     0   9      ; "callFunction2"
0011    FNEW     0  10      ; test20.lua:68
0012    GSET     0  11      ; "callFunction3"
0013    FNEW     0  12      ; test20.lua:81
0014    GSET     0  13      ; "main"
0015    GGET     0  13      ; "main"
0016    CALL     0   1   1
0017    RET0     0   1

