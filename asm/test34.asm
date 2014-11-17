-- BYTECODE -- test34.lua:0-28
0001    TDUP     0   0
0002    GGET     1   1      ; "next"
0003    MOV      2   0
0004    KPRI     3   0
0005    CALL     1   3   3
0006 => ISF          1
0007    JMP      3 => 0020
0008    LOOP     3 => 0020
0009    GGET     3   2      ; "print"
0010    MOV      4   1
0011    MOV      5   2
0012    CALL     3   1   3
0013    GGET     3   1      ; "next"
0014    MOV      4   0
0015    MOV      5   1
0016    CALL     3   3   3
0017    MOV      2   4
0018    MOV      1   3
0019    JMP      3 => 0006
0020 => RET0     0   1

