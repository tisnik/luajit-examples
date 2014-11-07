; Překlad demonstračního příkladu test16.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.

-- BYTECODE -- test16.lua:0-50

; local a = true
0001    KPRI     0   2        ; local a = true

; local b = false
0002    KPRI     1   1        ; local b = false

; local c = nil
0003    KPRI     2   0        ; local c = nil

; local d = 42
0004    KSHORT   3  42        ; local d = 42

; local e = {1,2}
0005    TDUP     4   0        ; local e = {1,2}

; local x1  = a == nil
0006    ISEQP    0   0        ; porovnání obsahu proměnné s hodnotou nil
0007    JMP      5 => 0010    ; skok provedený při splnění podmínky
0008    KPRI     5   1        ; speciální hodnota false
0009    JMP      6 => 0011    ; nepodmíněný skok
0010 => KPRI     5   2        ; speciální hodnota true

; local x2  = a ~= nil
0011 => ISNEP    0   0        ; porovnání obsahu proměnné s hodnotou nil (opačná podmínka)
0012    JMP      6 => 0015    ; skok provedený při splnění podmínky
0013    KPRI     6   1        ; speciální hodnota false
0014    JMP      7 => 0016    ; nepodmíněný skok
0015 => KPRI     6   2        ; speciální hodnota true

; local x3  = b == nil
0016 => ISEQP    1   0        ; porovnání obsahu proměnné s hodnotou nil
0017    JMP      7 => 0020    ; skok provedený při splnění podmínky
0018    KPRI     7   1        ; speciální hodnota false
0019    JMP      8 => 0021    ; nepodmíněný skok
0020 => KPRI     7   2        ; speciální hodnota true

; local x4  = b ~= nil
0021 => ISNEP    1   0        ; porovnání obsahu proměnné s hodnotou nil (opačná podmínka)
0022    JMP      8 => 0025    ; skok provedený při splnění podmínky
0023    KPRI     8   1        ; speciální hodnota false
0024    JMP      9 => 0026    ; nepodmíněný skok
0025 => KPRI     8   2        ; speciální hodnota true

; local x5  = c == nil
0026 => ISEQP    2   0        ; porovnání obsahu proměnné s hodnotou nil
0027    JMP      9 => 0030    ; skok provedený při splnění podmínky
0028    KPRI     9   1        ; speciální hodnota false
0029    JMP     10 => 0031    ; nepodmíněný skok
0030 => KPRI     9   2        ; speciální hodnota true

; local x6  = c ~= nil
0031 => ISNEP    2   0        ; porovnání obsahu proměnné s hodnotou nil (opačná podmínka)
0032    JMP     10 => 0035    ; skok provedený při splnění podmínky
0033    KPRI    10   1        ; speciální hodnota false
0034    JMP     11 => 0036    ; nepodmíněný skok
0035 => KPRI    10   2        ; speciální hodnota true

; local x7  = d == nil
0036 => ISEQP    3   0        ; porovnání obsahu proměnné s hodnotou nil
0037    JMP     11 => 0040    ; skok provedený při splnění podmínky
0038    KPRI    11   1        ; speciální hodnota false
0039    JMP     12 => 0041    ; nepodmíněný skok
0040 => KPRI    11   2        ; speciální hodnota true

; local x8  = d ~= nil
0041 => ISNEP    3   0        ; porovnání obsahu proměnné s hodnotou nil (opačná podmínka)
0042    JMP     12 => 0045    ; skok provedený při splnění podmínky
0043    KPRI    12   1        ; speciální hodnota false
0044    JMP     13 => 0046    ; nepodmíněný skok
0045 => KPRI    12   2        ; speciální hodnota true

; local x9  = e == nil
0046 => ISEQP    4   0        ; porovnání obsahu proměnné s hodnotou nil
0047    JMP     13 => 0050    ; skok provedený při splnění podmínky
0048    KPRI    13   1        ; speciální hodnota false
0049    JMP     14 => 0051    ; nepodmíněný skok
0050 => KPRI    13   2        ; speciální hodnota true

; local x10 = e ~= nil
0051 => ISNEP    4   0        ; porovnání obsahu proměnné s hodnotou nil (opačná podmínka)
0052    JMP     14 => 0055    ; skok provedený při splnění podmínky
0053    KPRI    14   1        ; speciální hodnota false
0054    JMP     15 => 0056    ; nepodmíněný skok
0055 => KPRI    14   2        ; speciální hodnota true

; print(a)
0056 => GGET    15   1        ; získání reference na funkci se jménem "print"
0057    MOV     16   0        ; parametr použitý při volání funkce print()
0058    CALL    15   1   2    ; volání funkce print()

; print()
0059    GGET    15   1        ; získání reference na funkci se jménem "print"
0060    CALL    15   1   1    ; volání funkce print()

; print(x1)
0061    GGET    15   1        ; získání reference na funkci se jménem "print"
0062    MOV     16   5        ; parametr použitý při volání funkce print()
0063    CALL    15   1   2    ; volání funkce print()

; print(x2)
0064    GGET    15   1        ; získání reference na funkci se jménem "print"
0065    MOV     16   6        ; parametr použitý při volání funkce print()
0066    CALL    15   1   2    ; volání funkce print()

; print(x3)
0067    GGET    15   1        ; získání reference na funkci se jménem "print"
0068    MOV     16   7        ; parametr použitý při volání funkce print()
0069    CALL    15   1   2    ; volání funkce print()

; print(x4)
0070    GGET    15   1        ; získání reference na funkci se jménem "print"
0071    MOV     16   8        ; parametr použitý při volání funkce print()
0072    CALL    15   1   2    ; volání funkce print()

; print(x5)
0073    GGET    15   1        ; získání reference na funkci se jménem "print"
0074    MOV     16   9        ; parametr použitý při volání funkce print()
0075    CALL    15   1   2    ; volání funkce print()

; print(x6)
0076    GGET    15   1        ; získání reference na funkci se jménem "print"
0077    MOV     16  10        ; parametr použitý při volání funkce print()
0078    CALL    15   1   2    ; volání funkce print()

; print(x7)
0079    GGET    15   1        ; získání reference na funkci se jménem "print"
0080    MOV     16  11        ; parametr použitý při volání funkce print()
0081    CALL    15   1   2    ; volání funkce print()

; print(x8)
0082    GGET    15   1        ; získání reference na funkci se jménem "print"
0083    MOV     16  12        ; parametr použitý při volání funkce print()
0084    CALL    15   1   2    ; volání funkce print()

; print(x9)
0085    GGET    15   1        ; získání reference na funkci se jménem "print"
0086    MOV     16  13        ; parametr použitý při volání funkce print()
0087    CALL    15   1   2    ; volání funkce print()
                                                                              
; print(x10)
0088    GGET    15   1        ; získání reference na funkci se jménem "print"
0089    MOV     16  14        ; parametr použitý při volání funkce print()
0090    CALL    15   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0091    RET0     0   1        ; návrat z programu

; konec

