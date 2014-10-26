-- BYTECODE -- test14.lua:0-38
0001    KSHORT   0   1
0002    ISEQN    0   0      ; 10
0003    JMP      1 => 0006
0004    KPRI     1   1
0005    JMP      2 => 0007
0006 => KPRI     1   2
0007 => ISNEN    0   0      ; 10
0008    JMP      2 => 0011
0009    KPRI     2   1
0010    JMP      3 => 0012
0011 => KPRI     2   2
0012 => KSHORT   3  10
0013    ISLT     0   3
0014    JMP      3 => 0017
0015    KPRI     3   1
0016    JMP      4 => 0018
0017 => KPRI     3   2
0018 => KSHORT   4  10
0019    ISLE     0   4
0020    JMP      4 => 0023
0021    KPRI     4   1
0022    JMP      5 => 0024
0023 => KPRI     4   2
0024 => KSHORT   5  10
0025    ISLT     5   0
0026    JMP      5 => 0029
0027    KPRI     5   1
0028    JMP      6 => 0030
0029 => KPRI     5   2
0030 => KSHORT   6  10
0031    ISLE     6   0
0032    JMP      6 => 0035
0033    KPRI     6   1
0034    JMP      7 => 0036
0035 => KPRI     6   2
0036 => GGET     7   0      ; "print"
0037    MOV      8   0
0038    CALL     7   1   2
0039    GGET     7   0      ; "print"
0040    CALL     7   1   1
0041    GGET     7   0      ; "print"
0042    MOV      8   1
0043    CALL     7   1   2
0044    GGET     7   0      ; "print"
0045    MOV      8   2
0046    CALL     7   1   2
0047    GGET     7   0      ; "print"
0048    MOV      8   3
0049    CALL     7   1   2
0050    GGET     7   0      ; "print"
0051    MOV      8   4
0052    CALL     7   1   2
0053    GGET     7   0      ; "print"
0054    MOV      8   5
0055    CALL     7   1   2
0056    GGET     7   0      ; "print"
0057    MOV      8   6
0058    CALL     7   1   2
0059    RET0     0   1

