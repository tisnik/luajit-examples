-- BYTECODE -- test36.lua:0-50
0001    TNEW     0   0
0002    KSHORT   1 777
0003    TSETS    1   0   0  ; "first"
0004    KSHORT   1 999
0005    TSETS    1   0   1  ; "second"
0006    KSHORT   1 1000
0007    TSETS    1   0   2  ; "tenth"
0008    GGET     1   3      ; "pairs"
0009    MOV      2   0
0010    CALL     1   4   2
0011    ISNEXT   4 => 0015
0012 => GGET     6   4      ; "print"
0013    MOV      7   4
0014    CALL     6   1   2
0015 => ITERN    4   3   3
0016    ITERL    4 => 0012
0017    GGET     1   4      ; "print"
0018    CALL     1   1   1
0019    GGET     1   3      ; "pairs"
0020    MOV      2   0
0021    CALL     1   4   2
0022    ISNEXT   4 => 0026
0023 => GGET     6   4      ; "print"
0024    MOV      7   5
0025    CALL     6   1   2
0026 => ITERN    4   3   3
0027    ITERL    4 => 0023
0028    GGET     1   4      ; "print"
0029    CALL     1   1   1
0030    GGET     1   3      ; "pairs"
0031    MOV      2   0
0032    CALL     1   4   2
0033    ISNEXT   4 => 0038
0034 => GGET     6   4      ; "print"
0035    MOV      7   4
0036    MOV      8   5
0037    CALL     6   1   3
0038 => ITERN    4   3   3
0039    ITERL    4 => 0034
0040    RET0     0   1

