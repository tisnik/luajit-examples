-- BYTECODE -- test18.lua:0-54
0001    KPRI     0   2
0002    KPRI     1   1
0003    KPRI     2   0
0004    KSHORT   3  42
0005    ISF          0
0006    JMP      4 => 0010
0007    GGET     4   0      ; "print"
0008    KSTR     5   1      ; "a"
0009    CALL     4   1   2
0010 => IST          0
0011    JMP      4 => 0015
0012    GGET     4   0      ; "print"
0013    KSTR     5   2      ; "!a"
0014    CALL     4   1   2
0015 => ISF          1
0016    JMP      4 => 0020
0017    GGET     4   0      ; "print"
0018    KSTR     5   3      ; "b"
0019    CALL     4   1   2
0020 => IST          1
0021    JMP      4 => 0025
0022    GGET     4   0      ; "print"
0023    KSTR     5   4      ; "!b"
0024    CALL     4   1   2
0025 => ISF          2
0026    JMP      4 => 0030
0027    GGET     4   0      ; "print"
0028    KSTR     5   5      ; "c"
0029    CALL     4   1   2
0030 => IST          2
0031    JMP      4 => 0035
0032    GGET     4   0      ; "print"
0033    KSTR     5   6      ; "!c"
0034    CALL     4   1   2
0035 => ISF          3
0036    JMP      4 => 0040
0037    GGET     4   0      ; "print"
0038    KSTR     5   7      ; "d"
0039    CALL     4   1   2
0040 => GGET     4   8      ; "e"
0041    IST          4
0042    JMP      4 => 0046
0043    GGET     4   0      ; "print"
0044    KSTR     5   9      ; "!e"
0045    CALL     4   1   2
0046 => RET0     0   1

