-- BYTECODE -- test15.lua:0-34
0001    KPRI     0   2
0002    ISEQP    0   2
0003    JMP      1 => 0006
0004    KPRI     1   1
0005    JMP      2 => 0007
0006 => KPRI     1   2
0007 => ISNEP    0   2
0008    JMP      2 => 0011
0009    KPRI     2   1
0010    JMP      3 => 0012
0011 => KPRI     2   2
0012 => ISEQP    0   1
0013    JMP      3 => 0016
0014    KPRI     3   1
0015    JMP      4 => 0017
0016 => KPRI     3   2
0017 => ISNEP    0   1
0018    JMP      4 => 0021
0019    KPRI     4   1
0020    JMP      5 => 0022
0021 => KPRI     4   2
0022 => GGET     5   0      ; "print"
0023    MOV      6   0
0024    CALL     5   1   2
0025    GGET     5   0      ; "print"
0026    CALL     5   1   1
0027    GGET     5   0      ; "print"
0028    MOV      6   1
0029    CALL     5   1   2
0030    GGET     5   0      ; "print"
0031    MOV      6   2
0032    CALL     5   1   2
0033    GGET     5   0      ; "print"
0034    MOV      6   3
0035    CALL     5   1   2
0036    GGET     5   0      ; "print"
0037    MOV      6   4
0038    CALL     5   1   2
0039    RET0     0   1

