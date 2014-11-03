-- BYTECODE -- test21.lua:14-15
0001    RET0     0   1

-- BYTECODE -- test21.lua:22-24
0001    RET1     0   2

-- BYTECODE -- test21.lua:31-37
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

-- BYTECODE -- test21.lua:44-50
0001    GGET     0   0      ; "testClass"
0002    TGETS    0   0   1  ; "function1"
0003    CALL     0   1   1
0004    GGET     0   0      ; "testClass"
0005    TGETS    0   0   1  ; "function1"
0006    KPRI     1   0
0007    CALL     0   1   2
0008    GGET     0   0      ; "testClass"
0009    TGETS    0   0   1  ; "function1"
0010    KSHORT   1  42
0011    CALL     0   1   2
0012    GGET     0   0      ; "testClass"
0013    TGETS    0   0   1  ; "function1"
0014    KSHORT   1   1
0015    KSHORT   2   2
0016    CALL     0   1   3
0017    GGET     0   0      ; "testClass"
0018    TGETS    0   0   1  ; "function1"
0019    KSTR     1   2      ; "xyzzy"
0020    CALL     0   1   2
0021    RET0     0   1

-- BYTECODE -- test21.lua:57-63
0001    GGET     0   0      ; "testClass"
0002    TGETS    0   0   1  ; "function2"
0003    CALL     0   1   1
0004    GGET     0   0      ; "testClass"
0005    TGETS    0   0   1  ; "function2"
0006    KPRI     1   0
0007    CALL     0   1   2
0008    GGET     0   0      ; "testClass"
0009    TGETS    0   0   1  ; "function2"
0010    KSHORT   1  42
0011    CALL     0   1   2
0012    GGET     0   0      ; "testClass"
0013    TGETS    0   0   1  ; "function2"
0014    KSHORT   1   1
0015    KSHORT   2   2
0016    CALL     0   1   3
0017    GGET     0   0      ; "testClass"
0018    TGETS    0   0   1  ; "function2"
0019    KSTR     1   2      ; "xyzzy"
0020    CALL     0   1   2
0021    RET0     0   1

-- BYTECODE -- test21.lua:70-76
0001    GGET     0   0      ; "testClass"
0002    TGETS    0   0   1  ; "function3"
0003    CALL     0   1   1
0004    GGET     0   0      ; "testClass"
0005    TGETS    0   0   1  ; "function3"
0006    KPRI     1   0
0007    CALL     0   1   2
0008    GGET     0   0      ; "testClass"
0009    TGETS    0   0   1  ; "function3"
0010    KSHORT   1  42
0011    CALL     0   1   2
0012    GGET     0   0      ; "testClass"
0013    TGETS    0   0   1  ; "function3"
0014    KSHORT   1   1
0015    KSHORT   2   2
0016    CALL     0   1   3
0017    GGET     0   0      ; "testClass"
0018    TGETS    0   0   1  ; "function3"
0019    KSTR     1   2      ; "xyzzy"
0020    CALL     0   1   2
0021    RET0     0   1

-- BYTECODE -- test21.lua:83-87
0001    GGET     0   0      ; "callFunction1"
0002    CALL     0   1   1
0003    GGET     0   1      ; "callFunction2"
0004    CALL     0   1   1
0005    GGET     0   2      ; "callFunction3"
0006    CALL     0   1   1
0007    RET0     0   1

-- BYTECODE -- test21.lua:0-99
0001    TNEW     0   0
0002    GSET     0   0      ; "testClass"
0003    GGET     0   0      ; "testClass"
0004    FNEW     1   2      ; test21.lua:14
0005    TSETS    1   0   1  ; "function1"
0006    GGET     0   0      ; "testClass"
0007    FNEW     1   4      ; test21.lua:22
0008    TSETS    1   0   3  ; "function2"
0009    GGET     0   0      ; "testClass"
0010    FNEW     1   6      ; test21.lua:31
0011    TSETS    1   0   5  ; "function3"
0012    FNEW     0   7      ; test21.lua:44
0013    GSET     0   8      ; "callFunction1"
0014    FNEW     0   9      ; test21.lua:57
0015    GSET     0  10      ; "callFunction2"
0016    FNEW     0  11      ; test21.lua:70
0017    GSET     0  12      ; "callFunction3"
0018    FNEW     0  13      ; test21.lua:83
0019    GSET     0  14      ; "main"
0020    GGET     0  14      ; "main"
0021    CALL     0   1   1
0022    RET0     0   1

