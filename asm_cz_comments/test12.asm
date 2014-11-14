; Překlad demonstračního příkladu test12.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
 -- BYTECODE -- test12.lua:0-18



; 10,1,-1 (start, stop, step)
 0001    KSHORT   0  10        ; do slotu číslo 0 uložit hodnotu 10 (počáteční hodnota počitadla)
 0002    KSHORT   1   1        ; do slotu číslo 1 uložit hodnotu 1 (koncová hodnota počitadla)
 0003    KSHORT   2  -1        ; do slotu číslo 2 uložit hodnotu -1 (krok)

; for i = 10,1,-1 do
 0004    FORI     0 => 0009    ; vstup do počítané programové smyčky typu for, první instrukce za smyčkou je na adrese 0009

; print(i)
 0005 => GGET     4   0        ; získání reference na funkci se jménem "print"
 0006    MOV      5   3        ; parametr použitý při volání funkce print()
 0007    CALL     4   1   2    ; volání funkce print()

; end
 0008    FORL     0 => 0005    ; další iterace, tělo smyčky začíná na adrese 0005

; každý program je automaticky ukončen následující instrukcí
 0009 => RET0     0   1        ; návrat z programu

; konec

