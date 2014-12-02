; Překlad demonstračního příkladu test26.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test26.lua:0-44

; vytvoření prázdné tabulky
; local tbl = {}
0001    TNEW     0   0

; nastavit hodnotu prvního prvku tabulky
; tbl[1] = 777
0002    KSHORT   1 777        ; ukládaná konstanta
0003    TSETB    1   0   1    ; nastavení prvního prvku tabulky

; nastavit hodnotu druhého prvku tabulky
; tbl[2] = 999
0004    KSHORT   1 999        ; ukládaná konstanta
0005    TSETB    1   0   2    ; nastavení druhého prvku tabulky

; nastavit hodnotu desátého prvku tabulky
; tbl[10] = 1000
0006    KSHORT   1 1000       ; ukládaná konstanta
0007    TSETB    1   0  10    ; nastavení desátého prvku tabulky

; tisk informace o tabulce (reference...)
; print(tbl)
0008    GGET     1   0        ; získání reference na funkci se jménem "print"
0009    MOV      2   0        ; bude se tisknout reference na tabulku
0010    CALL     1   1   2    ; volání funkce print()

; tisk počtu prvků v tabulce
; print(#tbl)
0011    GGET     1   0        ; získání reference na funkci se jménem "print"
0012    LEN      2   0        ; získání počtu prvků tabulky (resp. pole, které je součástí tabulky)
0013    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty prvního prvku v tabulce
; print(tbl[1])
0014    GGET     1   0        ; získání reference na funkci se jménem "print"
0015    TGETB    2   0   1    ; přečtení hodnoty prvního prvku tabulky
0016    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty druhého prvku v tabulce
; print(tbl[2])
0017    GGET     1   0        ; získání reference na funkci se jménem "print"
0018    TGETB    2   0   2    ; přečtení hodnoty druhého prvku tabulky
0019    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty desátého prvku v tabulce
; print(tbl[10])
0020    GGET     1   0        ; získání reference na funkci se jménem "print"
0021    TGETB    2   0  10    ; přečtení hodnoty desátého prvku tabulky
0022    CALL     1   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0023    RET0     0   1

; konec

