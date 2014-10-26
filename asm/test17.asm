-- BYTECODE -- test17.lua:0-50
0001    KPRI     0   2
0002    KPRI     1   1
0003    KPRI     2   0
0004    KSHORT   3  42
0005    KSTR     4   0      ; "hello"
0006    ISEQS    0   0      ; "hello"
0007    JMP      5 => 0010
0008    KPRI     5   1
0009    JMP      6 => 0011
0010 => KPRI     5   2
0011 => ISNES    0   0      ; "hello"
0012    JMP      6 => 0015
0013    KPRI     6   1
0014    JMP      7 => 0016
0015 => KPRI     6   2
0016 => ISEQS    1   0      ; "hello"
0017    JMP      7 => 0020
0018    KPRI     7   1
0019    JMP      8 => 0021
0020 => KPRI     7   2
0021 => ISNES    1   0      ; "hello"
0022    JMP      8 => 0025
0023    KPRI     8   1
0024    JMP      9 => 0026
0025 => KPRI     8   2
0026 => ISEQS    2   0      ; "hello"
0027    JMP      9 => 0030
0028    KPRI     9   1
0029    JMP     10 => 0031
0030 => KPRI     9   2
0031 => ISNES    2   0      ; "hello"
0032    JMP     10 => 0035
0033    KPRI    10   1
0034    JMP     11 => 0036
0035 => KPRI    10   2
0036 => ISEQS    3   0      ; "hello"
0037    JMP     11 => 0040
0038    KPRI    11   1
0039    JMP     12 => 0041
0040 => KPRI    11   2
0041 => ISNES    3   0      ; "hello"
0042    JMP     12 => 0045
0043    KPRI    12   1
0044    JMP     13 => 0046
0045 => KPRI    12   2
0046 => ISEQS    4   0      ; "hello"
0047    JMP     13 => 0050
0048    KPRI    13   1
0049    JMP     14 => 0051
0050 => KPRI    13   2
0051 => ISNES    4   0      ; "hello"
0052    JMP     14 => 0055
0053    KPRI    14   1
0054    JMP     15 => 0056
0055 => KPRI    14   2
0056 => GGET    15   1      ; "print"
0057    MOV     16   0
0058    CALL    15   1   2
0059    GGET    15   1      ; "print"
0060    CALL    15   1   1
0061    GGET    15   1      ; "print"
0062    MOV     16   5
0063    CALL    15   1   2
0064    GGET    15   1      ; "print"
0065    MOV     16   6
0066    CALL    15   1   2
0067    GGET    15   1      ; "print"
0068    MOV     16   7
0069    CALL    15   1   2
0070    GGET    15   1      ; "print"
0071    MOV     16   8
0072    CALL    15   1   2
0073    GGET    15   1      ; "print"
0074    MOV     16   9
0075    CALL    15   1   2
0076    GGET    15   1      ; "print"
0077    MOV     16  10
0078    CALL    15   1   2
0079    GGET    15   1      ; "print"
0080    MOV     16  11
0081    CALL    15   1   2
0082    GGET    15   1      ; "print"
0083    MOV     16  12
0084    CALL    15   1   2
0085    GGET    15   1      ; "print"
0086    MOV     16  13
0087    CALL    15   1   2
0088    GGET    15   1      ; "print"
0089    MOV     16  14
0090    CALL    15   1   2
0091    RET0     0   1

