-- BYTECODE -- test33.lua:0-25
0001    KSHORT   0  10
0002 => LOOP     1 => 0012
0003    GGET     1   0      ; "print"
0004    MOV      2   0
0005    CALL     1   1   2
0006    SUBVN    0   0   0  ; 1
0007    ISNEN    0   1      ; 0
0008    JMP      1 => 0010
0009    JMP      1 => 0012
0010 => JMP      1 => 0011
0011 => JMP      1 => 0002
0012 => RET0     0   1

