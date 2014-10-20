-- BYTECODE -- test09.lua:0-24
0001    KSHORT   0   1
0002    KSHORT   1   2
0003    ISGE     1   0
0004    JMP      2 => 0009
0005    GGET     2   0      ; "print"
0006    KSTR     3   1      ; "a > b"
0007    CALL     2   1   2
0008    JMP      2 => 0012
0009 => GGET     2   0      ; "print"
0010    KSTR     3   2      ; "a <= b"
0011    CALL     2   1   2
0012 => RET0     0   1

