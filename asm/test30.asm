-- BYTECODE -- test30.lua:0-22
0001    KSHORT   0  10
0002 => KSHORT   1   0
0003    ISGT     1   0
0004    JMP      1 => 0011
0005    LOOP     1 => 0011
0006    GGET     1   0      ; "print"
0007    MOV      2   0
0008    CALL     1   1   2
0009    SUBVN    0   0   0  ; 1
0010    JMP      1 => 0002
0011 => RET0     0   1

