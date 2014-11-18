; Překlad demonstračního příkladu test15.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test15.lua:0-34



; local a = true
0001    KPRI     0   2        ; do slotu číslo 0 uložit hodnotu true

; local x1 = a == true
0002    ISEQP    0   2        ; porovnání obsahu proměnné s hodnotou true
0003    JMP      1 => 0006    ; skok provedený při splnění podmínky
0004    KPRI     1   1        ; speciální hodnota false
0005    JMP      2 => 0007    ; nepodmíněný skok
0006 => KPRI     1   2        ; speciální hodnota true

; local x2 = a ~= true
0007 => ISNEP    0   2        ; porovnání obsahu proměnné s hodnotou true
0008    JMP      2 => 0011    ; skok provedený při splnění podmínky
0009    KPRI     2   1        ; speciální hodnota false
0010    JMP      3 => 0012    ; nepodmíněný skok
0011 => KPRI     2   2        ; speciální hodnota true

; local x3 = a == false
0012 => ISEQP    0   1        ; porovnání obsahu proměnné s hodnotou false
0013    JMP      3 => 0016    ; skok provedený při splnění podmínky
0014    KPRI     3   1        ; speciální hodnota false
0015    JMP      4 => 0017    ; nepodmíněný skok
0016 => KPRI     3   2        ; speciální hodnota true

; local x4 = a ~= false
0017 => ISNEP    0   1        ; porovnání obsahu proměnné s hodnotou false
0018    JMP      4 => 0021    ; skok provedený při splnění podmínky
0019    KPRI     4   1        ; speciální hodnota false
0020    JMP      5 => 0022    ; nepodmíněný skok
0021 => KPRI     4   2        ; speciální hodnota true

; print(a)
0022 => GGET     5   0        ; získání reference na funkci se jménem "print"
0023    MOV      6   0        ; parametr použitý při volání funkce print()
0024    CALL     5   1   2    ; volání funkce print()

; print()
0025    GGET     5   0        ; získání reference na funkci se jménem "print"
0026    CALL     5   1   1    ; volání funkce print()

; print(x1)
0027    GGET     5   0        ; získání reference na funkci se jménem "print"
0028    MOV      6   1        ; parametr použitý při volání funkce print()
0029    CALL     5   1   2    ; volání funkce print()

; print(x2)
0030    GGET     5   0        ; získání reference na funkci se jménem "print"
0031    MOV      6   2        ; parametr použitý při volání funkce print()
0032    CALL     5   1   2    ; volání funkce print()

; print(x3)
0033    GGET     5   0        ; získání reference na funkci se jménem "print"
0034    MOV      6   3        ; parametr použitý při volání funkce print()
0035    CALL     5   1   2    ; volání funkce print()

; print(x4)
0036    GGET     5   0        ; získání reference na funkci se jménem "print"
0037    MOV      6   4        ; parametr použitý při volání funkce print()
0038    CALL     5   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0039    RET0     0   1        ; návrat z programu

; konec

