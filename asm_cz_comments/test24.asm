; Překlad demonstračního příkladu test24.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.

-- BYTECODE -- test24.lua:0-31

; vytvoření prázdné tabulky
; local tbl = {}
0001    TNEW     0   0        ; vytvoření nové prázdné tabulky

; tisk informace o tabulce (reference...)
; print(tbl)
0002    GGET     1   0        ; získání reference na funkci se jménem "print"
0003    MOV      2   0        ; bude se tisknout reference na tabulku
0004    CALL     1   1   2    ; volání funkce print()

; tisk počtu prvků v tabulce
; print(#tbl)
0005    GGET     1   0        ; získání reference na funkci se jménem "print"
0006    LEN      2   0        ; získání počtu prvků tabulky (resp. pole, které je součástí tabulky)
0007    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty prvního prvku v tabulce
; print(tbl[1])
0008    GGET     1   0        ; získání reference na funkci se jménem "print"
0009    TGETB    2   0   1    ; přečtení hodnoty prvního prvku tabulky
0010    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty desátého prvku v tabulce
; print(tbl[10])
0011    GGET     1   0        ; získání reference na funkci se jménem "print"
0012    TGETB    2   0  10    ; přečtení hodnoty desátého prvku tabulky
0013    CALL     1   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0014    RET0     0   1

; konec

