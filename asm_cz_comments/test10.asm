; Překlad demonstračního příkladu test10.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
 -- BYTECODE -- test10.lua:0-26



; local a = 1
 0001    KSHORT   0   1        ; do slotu číslo 0 uložit hodnotu 1

; local b = 2
 0002    KSHORT   1   2        ; do slotu číslo 1 uložit hodnotu 2

; if a > b then
 0003    ISGE     1   0        ; porovnání hodnot ve slotech 0 a 1
 0004    JMP      2 => 0009    ; podmíněný skok na adresu 0009

; print("a > b")
 0005    GGET     2   0        ; získání reference na funkci se jménem "print"
 0006    KSTR     3   1        ; řetězec "a > b"
 0007    CALL     2   1   2    ; volání funkce print()
 0008    JMP      2 => 0018    ; nepodmíněný skok na adresu 0018

; elseif a < b then
 0009 => ISGE     0   1        ; opačné porovnání hodnot ve slotech 0 a 1
 0010    JMP      2 => 0015    ; podmíněný skok na adresu 0015

; print("a < b")
 0011    GGET     2   0        ; získání reference na funkci se jménem "print"
 0012    KSTR     3   2        ; řetězec "a < b"
 0013    CALL     2   1   2    ; volání funkce print()
 0014    JMP      2 => 0018    ; nepodmíněný skok na adresu 0018

; else
; print("a == b")
 0015 => GGET     2   00       ; získání reference na funkci se jménem "print"
 0016    KSTR     3   3        ; řetězec "a == b"
 0017    CALL     2   1   2    ; volání funkce print()

; end

; každý program je automaticky ukončen následující instrukcí
 0018 => RET0     0   1        ; návrat z programu

; konec

