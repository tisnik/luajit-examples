-- BYTECODE -- test37.lua:18-23
0001    UGET     0   0      ; counter
0002    ADDVN    0   0   0  ; 1
0003    USETV    0   0      ; counter
0004    UGET     0   0      ; counter
0005    RET1     0   2

-- BYTECODE -- test37.lua:11-24
0001    KSHORT   0   0
0002    FNEW     1   0      ; test37.lua:18
0003    UCLO     0 => 0004
0004 => RET1     1   2

-- BYTECODE -- test37.lua:31-39
0001    GGET     0   0      ; "createCounter"
0002    CALL     0   2   1
0003    GGET     1   1      ; "print"
0004    MOV      2   0
0005    CALL     2   0   1
0006    CALLM    1   1   0
0007    GGET     1   1      ; "print"
0008    MOV      2   0
0009    CALL     2   0   1
0010    CALLM    1   1   0
0011    GGET     1   1      ; "print"
0012    MOV      2   0
0013    CALL     2   0   1
0014    CALLM    1   1   0
0015    RET0     0   1

-- BYTECODE -- test37.lua:0-51
0001    FNEW     0   0      ; test37.lua:11
0002    GSET     0   1      ; "createCounter"
0003    FNEW     0   2      ; test37.lua:31
0004    GSET     0   3      ; "main"
0005    GGET     0   3      ; "main"
0006    CALL     0   1   1
0007    RET0     0   1

