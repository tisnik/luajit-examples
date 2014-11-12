; Překlad demonstračního příkladu test08.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
 -- BYTECODE -- test08.lua:0-22



; local a = 1
 0001    KSHORT   0   1        ; do slotu číslo 0 uložit hodnotu 1

; local b = 2
 0002    KSHORT   1   2        ; do slotu číslo 1 uložit hodnotu 2

; if a > b then

 0003    ISGE     1   0        ; porovnání hodnot ve slotech 1 a 0
 0004    JMP      2 => 0008    ; podmíněný skok na adresu 0008

; print("a > b")
 0005    GGET     2   0        ; získání reference na funkci se jménem "print"
 0006    KSTR     3   1        ; řetězec "a >b", který se bude tisknout na obrazovku
 0007    CALL     2   1   2    ; volání funkce print()

; end

; každý program je automaticky ukončen následující instrukcí
 0008 => RET0     0   1        ; návrat z programu

; konec

