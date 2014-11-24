-- BYTECODE -- test39.lua:17-22
0001    UGET     1   0      ; counter
0002    ADDVV    1   1   0
0003    USETV    0   1      ; counter
0004    UGET     1   0      ; counter
0005    RET1     1   2

-- BYTECODE -- test39.lua:10-23
0001    KSHORT   0   0
0002    FNEW     1   0      ; test39.lua:17
0003    UCLO     0 => 0004
0004 => RET1     1   2

-- BYTECODE -- test39.lua:30-44
0001    GGET     0   0      ; "createCounter"
0002    CALL     0   2   1
0003    KSHORT   1   1
0004    KSHORT   2  10
0005    KSHORT   3   1
0006    FORI     1 => 0036
0007 => GGET     5   1      ; "print"
0008    KSTR     6   2      ; "iteration #"
0009    MOV      7   4
0010    CAT      6   6   7
0011    CALL     5   1   2
0012    GGET     5   1      ; "print"
0013    KSTR     6   3      ; "    mycounter(1):  "
0014    MOV      7   0
0015    KSHORT   8   1
0016    CALL     7   2   2
0017    CAT      6   6   7
0018    CALL     5   1   2
0019    GGET     5   1      ; "print"
0020    KSTR     6   4      ; "    mycounter(10): "
0021    MOV      7   0
0022    KSHORT   8  10
0023    CALL     7   2   2
0024    CAT      6   6   7
0025    CALL     5   1   2
0026    GGET     5   1      ; "print"
0027    KSTR     6   5      ; "    mycounter(-2): "
0028    MOV      7   0
0029    KSHORT   8  -2
0030    CALL     7   2   2
0031    CAT      6   6   7
0032    CALL     5   1   2
0033    GGET     5   1      ; "print"
0034    CALL     5   1   1
0035    FORL     1 => 0007
0036 => RET0     0   1

-- BYTECODE -- test39.lua:0-56
0001    FNEW     0   0      ; test39.lua:10
0002    GSET     0   1      ; "createCounter"
0003    FNEW     0   2      ; test39.lua:30
0004    GSET     0   3      ; "main"
0005    GGET     0   3      ; "main"
0006    CALL     0   1   1
0007    RET0     0   1

