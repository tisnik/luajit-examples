; Překlad demonstračního příkladu test14.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test14.lua:0-38



; local a = 1
0001    KSHORT   0   1        ; do slotu číslo 0 uložit hodnotu 1

; local x1 = a == 10
0002    ISEQN    0   0        ; porovnání obsahu slotu/proměnné 0 s konstantou 10
0003    JMP      1 => 0006    ; skok provedený při splnění podmínky
0004    KPRI     1   1        ; speciální hodnota false
0005    JMP      2 => 0007    ; nepodmíněný skok
0006 => KPRI     1   2        ; speciální hodnota true

; local x2 = a ~= 10
0007 => ISNEN    0   0        ; porovnání obsahu slotu/proměnné 0 s konstantou 10
0008    JMP      2 => 0011    ; skok provedený při splnění podmínky
0009    KPRI     2   1        ; speciální hodnota false
0010    JMP      3 => 0012    ; nepodmíněný skok
0011 => KPRI     2   2        ; speciální hodnota true

; local x3 = a <  10
0012 => KSHORT   3  10        ; konstanta 10 použitá pro porovnávání
0013    ISLT     0   3        ; porovnání obsahu slotu/proměnné 0 s hodnotou 10 uloženou do dalšího slotu
0014    JMP      3 => 0017    ; skok provedený při splnění podmínky
0015    KPRI     3   1        ; speciální hodnota false
0016    JMP      4 => 0018    ; nepodmíněný skok
0017 => KPRI     3   2        ; speciální hodnota true

; local x4 = a <= 10
0018 => KSHORT   4  10        ; konstanta 10 použitá pro porovnávání
0019    ISLE     0   4        ; porovnání obsahu slotu/proměnné 0 s hodnotou 10 uloženou do dalšího slotu
0020    JMP      4 => 0023    ; skok provedený při splnění podmínky
0021    KPRI     4   1        ; speciální hodnota false
0022    JMP      5 => 0024    ; nepodmíněný skok
0023 => KPRI     4   2        ; speciální hodnota true

; local x5 = a >  10
0024 => KSHORT   5  10        ; konstanta 10 použitá pro porovnávání
0025    ISLT     5   0        ; porovnání obsahu slotu/proměnné 0 s hodnotou 10 uloženou do dalšího slotu
0026    JMP      5 => 0029    ; skok provedený při splnění podmínky
0027    KPRI     5   1        ; speciální hodnota false
0028    JMP      6 => 0030    ; nepodmíněný skok
0029 => KPRI     5   2        ; speciální hodnota true

; local x6 = a >= 10
0030 => KSHORT   6  10        ; konstanta 10 použitá pro porovnávání
0031    ISLE     6   0        ; porovnání obsahu slotu/proměnné 0 s hodnotou 10 uloženou do dalšího slotu
0032    JMP      6 => 0035    ; skok provedený při splnění podmínky
0033    KPRI     6   1        ; speciální hodnota false
0034    JMP      7 => 0036    ; nepodmíněný skok
0035 => KPRI     6   2        ; speciální hodnota true

; print(a)
0036 => GGET     7   0        ; získání reference na funkci se jménem "print"
0037    MOV      8   0        ; parametr použitý při volání funkce print()
0038    CALL     7   1   2    ; volání funkce print()

; print()
0039    GGET     7   0        ; získání reference na funkci se jménem "print"
0040    CALL     7   1   1    ; volání funkce print()

; print(x1)
0041    GGET     7   0        ; získání reference na funkci se jménem "print"
0042    MOV      8   1        ; parametr použitý při volání funkce print()
0043    CALL     7   1   2    ; volání funkce print()

; print(x2)
0044    GGET     7   0        ; získání reference na funkci se jménem "print"
0045    MOV      8   2        ; parametr použitý při volání funkce print()
0046    CALL     7   1   2    ; volání funkce print()

; print(x3)
0047    GGET     7   0        ; získání reference na funkci se jménem "print"
0048    MOV      8   3        ; parametr použitý při volání funkce print()
0049    CALL     7   1   2    ; volání funkce print()

; print(x4)
0050    GGET     7   0        ; získání reference na funkci se jménem "print"
0051    MOV      8   4        ; parametr použitý při volání funkce print()
0052    CALL     7   1   2    ; volání funkce print()

; print(x5)
0053    GGET     7   0        ; získání reference na funkci se jménem "print"
0054    MOV      8   5        ; parametr použitý při volání funkce print()
0055    CALL     7   1   2    ; volání funkce print()

; print(x6)
0056    GGET     7   0        ; získání reference na funkci se jménem "print"
0057    MOV      8   6        ; parametr použitý při volání funkce print()
0058    CALL     7   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0059    RET0     0   1        ; návrat z programu

; konec

