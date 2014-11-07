; Překlad demonstračního příkladu test13.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.

-- BYTECODE -- test13.lua:0-40

; local a = 1
0001    KSHORT   0   1        ; do slotu číslo 0 uložit hodnotu 1

; local b = 2
0002    KSHORT   1   2        ; do slotu číslo 1 uložit hodnotu 2

; local x1 = a == b
0003    ISEQV    0   1        ; porovnání dvou proměnných na rovnost
0004    JMP      2 => 0007    ; skok provedený při splnění podmínky
0005    KPRI     2   1        ; speciální hodnota false
0006    JMP      3 => 0008    ; nepodmíněný skok
0007 => KPRI     2   2        ; speciální hodnota true

; local x2 = a ~= b
0008 => ISNEV    0   1        ; porovnání dvou proměnných na nerovnost
0009    JMP      3 => 0012    ; skok provedený při splnění podmínky
0010    KPRI     3   1        ; speciální hodnota false
0011    JMP      4 => 0013    ; nepodmíněný skok
0012 => KPRI     3   2        ; speciální hodnota true

; local x3 = a <  b
0013 => ISLT     0   1        ; porovnání dvou proměnných na relaci "menší než"
0014    JMP      4 => 0017    ; skok provedený při splnění podmínky
0015    KPRI     4   1        ; speciální hodnota false
0016    JMP      5 => 0018    ; nepodmíněný skok
0017 => KPRI     4   2        ; speciální hodnota true

; local x4 = a <= b
0018 => ISLE     0   1        ; porovnání dvou proměnných na relaci "menší nebo rovno"
0019    JMP      5 => 0022    ; skok provedený při splnění podmínky
0020    KPRI     5   1        ; speciální hodnota false
0021    JMP      6 => 0023    ; nepodmíněný skok
0022 => KPRI     5   2        ; speciální hodnota true

; local x5 = a >  b
0023 => ISLT     1   0        ; porovnání dvou proměnných na relaci "menší než"
0024    JMP      6 => 0027    ; skok provedený při splnění podmínky
0025    KPRI     6   1        ; speciální hodnota false
0026    JMP      7 => 0028    ; nepodmíněný skok
0027 => KPRI     6   2        ; speciální hodnota true

; local x6 = a >= b
0028 => ISLE     1   0        ; porovnání dvou proměnných na relaci "menší nebo rovno"
0029    JMP      7 => 0032    ; skok provedený při splnění podmínky
0030    KPRI     7   1        ; speciální hodnota false
0031    JMP      8 => 0033    ; nepodmíněný skok
0032 => KPRI     7   2        ; speciální hodnota true

; print(a)
0033 => GGET     8   0        ; získání reference na funkci se jménem "print"
0034    MOV      9   0        ; parametr použitý při volání funkce print()
0035    CALL     8   1   2    ; volání funkce print()

; print(b)
0036    GGET     8   0        ; získání reference na funkci se jménem "print"
0037    MOV      9   1        ; parametr použitý při volání funkce print()
0038    CALL     8   1   2    ; volání funkce print()

; print()
0039    GGET     8   0        ; získání reference na funkci se jménem "print"
0040    CALL     8   1   1    ; volání funkce print() - odřádkování

; print(x1)
0041    GGET     8   0        ; získání reference na funkci se jménem "print"
0042    MOV      9   2        ; parametr použitý při volání funkce print()
0043    CALL     8   1   2    ; volání funkce print()

; print(x2)
0044    GGET     8   0        ; získání reference na funkci se jménem "print"
0045    MOV      9   3        ; parametr použitý při volání funkce print()
0046    CALL     8   1   2    ; volání funkce print()

; print(x3)
0047    GGET     8   0        ; získání reference na funkci se jménem "print"
0048    MOV      9   4        ; parametr použitý při volání funkce print()
0049    CALL     8   1   2    ; volání funkce print()

; print(x4)
0050    GGET     8   0        ; získání reference na funkci se jménem "print"
0051    MOV      9   5        ; parametr použitý při volání funkce print()
0052    CALL     8   1   2    ; volání funkce print()

; print(x5)
0053    GGET     8   0        ; získání reference na funkci se jménem "print"
0054    MOV      9   6        ; parametr použitý při volání funkce print()
0055    CALL     8   1   2    ; volání funkce print()

; print(x6)
0056    GGET     8   0        ; získání reference na funkci se jménem "print"
0057    MOV      9   7        ; parametr použitý při volání funkce print()
0058    CALL     8   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0059    RET0     0   1        ; návrat z programu

; konec

