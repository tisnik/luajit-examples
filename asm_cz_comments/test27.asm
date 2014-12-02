; Překlad demonstračního příkladu test27.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test27.lua:0-44

; vytvoření prázdné tabulky
; local tbl = {}
0001    TNEW     0   0

; nastavit hodnotu prvního prvku tabulky
; tbl["first"] = 777
0002    KSHORT   1 777        ; ukládaná konstanta
0003    TSETS    1   0   0    ; uložení hodnoty pod klíčem "first"

; nastavit hodnotu druhého prvku tabulky
; tbl["second"] = 999
0004    KSHORT   1 999        ; ukládaná konstanta
0005    TSETS    1   0   1    ; uložení hodnoty pod klíčem "second"

; nastavit hodnotu desátého prvku tabulky
; tbl["tenth"] = 1000
0006    KSHORT   1 1000       ; ukládaná konstanta
0007    TSETS    1   0   2    ; uložení hodnoty pod klíčem "tenth"

; tisk informace o tabulce (reference...)
; print(tbl)
0008    GGET     1   3        ; získání reference na funkci se jménem "print"
0009    MOV      2   0        ; bude se tisknout reference na tabulku
0010    CALL     1   1   2    ; volání funkce print()

; tisk počtu prvků v tabulce
; print(#tbl)
0011    GGET     1   3        ; získání reference na funkci se jménem "print"
0012    LEN      2   0        ; získání počtu prvků tabulky (resp. pole, které je součástí tabulky)
0013    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty prvního prvku v tabulce
; print(tbl["first"])
0014    GGET     1   3        ; získání reference na funkci se jménem "print"
0015    TGETS    2   0   0    ; přečtení prvku uloženého pod klíčem "first"
0016    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty druhého prvku v tabulce
; print(tbl["second"])
0017    GGET     1   3        ; získání reference na funkci se jménem "print"
0018    TGETS    2   0   1    ; přečtení prvku uloženého pod klíčem "second"
0019    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty desátého prvku v tabulce
; print(tbl["tenth"])
0020    GGET     1   3        ; získání reference na funkci se jménem "print"
0021    TGETS    2   0   2    ; přečtení prvku uloženého pod klíčem "tenth"
0022    CALL     1   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0023    RET0     0   1

; konec

