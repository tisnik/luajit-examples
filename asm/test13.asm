-- BYTECODE -- test13.lua:0-40
0001    KSHORT   0   1
0002    KSHORT   1   2
0003    ISEQV    0   1
0004    JMP      2 => 0007
0005    KPRI     2   1
0006    JMP      3 => 0008
0007 => KPRI     2   2
0008 => ISNEV    0   1
0009    JMP      3 => 0012
0010    KPRI     3   1
0011    JMP      4 => 0013
0012 => KPRI     3   2
0013 => ISLT     0   1
0014    JMP      4 => 0017
0015    KPRI     4   1
0016    JMP      5 => 0018
0017 => KPRI     4   2
0018 => ISLE     0   1
0019    JMP      5 => 0022
0020    KPRI     5   1
0021    JMP      6 => 0023
0022 => KPRI     5   2
0023 => ISLT     1   0
0024    JMP      6 => 0027
0025    KPRI     6   1
0026    JMP      7 => 0028
0027 => KPRI     6   2
0028 => ISLE     1   0
0029    JMP      7 => 0032
0030    KPRI     7   1
0031    JMP      8 => 0033
0032 => KPRI     7   2
0033 => GGET     8   0      ; "print"
0034    MOV      9   0
0035    CALL     8   1   2
0036    GGET     8   0      ; "print"
0037    MOV      9   1
0038    CALL     8   1   2
0039    GGET     8   0      ; "print"
0040    CALL     8   1   1
0041    GGET     8   0      ; "print"
0042    MOV      9   2
0043    CALL     8   1   2
0044    GGET     8   0      ; "print"
0045    MOV      9   3
0046    CALL     8   1   2
0047    GGET     8   0      ; "print"
0048    MOV      9   4
0049    CALL     8   1   2
0050    GGET     8   0      ; "print"
0051    MOV      9   5
0052    CALL     8   1   2
0053    GGET     8   0      ; "print"
0054    MOV      9   6
0055    CALL     8   1   2
0056    GGET     8   0      ; "print"
0057    MOV      9   7
0058    CALL     8   1   2
0059    RET0     0   1

