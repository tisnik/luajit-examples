; Překlad demonstračního příkladu test29.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test29.lua:0-42

; vytvoření a inicializace dvourozměrné tabulky
; local tbl = {
0001    TNEW     0   4
;     { 1,  2,  3,  4},
0002    TDUP     1   0
0003    TSETB    1   0   1
;     { 5,  6,  7,  8},
0004    TDUP     1   1
0005    TSETB    1   0   2
;     { 9, 10, 11, 12}
0006    TDUP     1   2
0007    TSETB    1   0   3
; }

; tisk informace o tabulce (reference...)
; print(tbl)
0008    GGET     1   3        ; získání reference na funkci se jménem "print"
0009    MOV      2   0
0010    CALL     1   1   2    ; volání funkce print()

; tisk počtu prvků v tabulce (nejvyšší dimenze)
; print(#tbl)
0011    GGET     1   3        ; získání reference na funkci se jménem "print"
0012    LEN      2   0        ; výpočet velikosti tabulky (nejvyšší dimenze)
0013    CALL     1   1   2    ; volání funkce print()

; tisk počtu prvků v prvnim radku tabulky (nižší dimenze)
; print(#tbl[1])
0014    GGET     1   3        ; získání reference na funkci se jménem "print"
0015    TGETB    2   0   1    ; načtení celého řádku tabulky
0016    LEN      2   2        ; výpočet délky jednoho řádku tabulky
0017    CALL     1   1   2    ; volání funkce print()

; tisk počtu prvků ve druhem radku tabulky (nižší dimenze)
; print(#tbl[2])
0018    GGET     1   3        ; získání reference na funkci se jménem "print"
0019    TGETB    2   0   2    ; načtení celého řádku tabulky
0020    LEN      2   2        ; výpočet délky jednoho řádku tabulky
0021    CALL     1   1   2    ; volání funkce print()

; tisk počtu prvků ve tretim radku tabulky (nižší dimenze)
; print(#tbl[3])
0022    GGET     1   3        ; získání reference na funkci se jménem "print"
0023    TGETB    2   0   3    ; načtení celého řádku tabulky
0024    LEN      2   2        ; výpočet délky jednoho řádku tabulky
0025    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty vybraného prvku v dvourozměrné tabulce
; print(tbl[1][1])
0026    GGET     1   3        ; získání reference na funkci se jménem "print"
0027    TGETB    2   0   1    ; načtení celého řádku tabulky
0028    TGETB    2   2   1    ; načtení vybraného prvku z řádku
0029    CALL     1   1   2    ; volání funkce print()

; tisk hodnoty vybraného prvku v dvourozměrné tabulce
; print(tbl[3][4])
0030    GGET     1   3        ; získání reference na funkci se jménem "print"
0031    TGETB    2   0   3    ; načtení celého řádku tabulky
0032    TGETB    2   2   4    ; načtení vybraného prvku z řádku
0033    CALL     1   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0034    RET0     0   1

; konec

