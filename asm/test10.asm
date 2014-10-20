-- BYTECODE -- test10.lua:0-26
0001    KSHORT   0   1
0002    KSHORT   1   2
0003    ISGE     1   0
0004    JMP      2 => 0009
0005    GGET     2   0      ; "print"
0006    KSTR     3   1      ; "a > b"
0007    CALL     2   1   2
0008    JMP      2 => 0018
0009 => ISGE     0   1
0010    JMP      2 => 0015
0011    GGET     2   0      ; "print"
0012    KSTR     3   2      ; "a < b"
0013    CALL     2   1   2
0014    JMP      2 => 0018
0015 => GGET     2   0      ; "print"
0016    KSTR     3   3      ; "a == b"
0017    CALL     2   1   2
0018 => RET0     0   1

