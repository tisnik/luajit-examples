-- BYTECODE -- test35.lua:0-40
0001    TDUP     0   0
0002    GGET     1   1      ; "ipairs"
0003    MOV      2   0
0004    CALL     1   4   2
0005    JMP      4 => 0009
0006 => GGET     6   2      ; "print"
0007    MOV      7   4
0008    CALL     6   1   2
0009 => ITERC    4   3   3
0010    ITERL    4 => 0006
0011    GGET     1   2      ; "print"
0012    CALL     1   1   1
0013    GGET     1   1      ; "ipairs"
0014    MOV      2   0
0015    CALL     1   4   2
0016    JMP      4 => 0020
0017 => GGET     6   2      ; "print"
0018    MOV      7   5
0019    CALL     6   1   2
0020 => ITERC    4   3   3
0021    ITERL    4 => 0017
0022    GGET     1   2      ; "print"
0023    CALL     1   1   1
0024    GGET     1   1      ; "ipairs"
0025    MOV      2   0
0026    CALL     1   4   2
0027    JMP      4 => 0032
0028 => GGET     6   2      ; "print"
0029    MOV      7   4
0030    MOV      8   5
0031    CALL     6   1   3
0032 => ITERC    4   3   3
0033    ITERL    4 => 0028
0034    RET0     0   1

