; Překlad demonstračního příkladu test37.lua
; do IR využívaného virtuálním strojem a JIT



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test37.lua:18-23



; implementace uzávěru
; counter = counter + 1
0001    UGET     0   0        ; přečtení hodnoty externí vázané proměnné counter
0002    ADDVN    0   0   0    ; přičtení jedničky
0003    USETV    0   0        ; zápis hodnoty externí vázané proměnné counter
0004    UGET     0   0        ; přečtení hodnoty externí vázané proměnné counter
; return counter
0005    RET1     0   2        ; vrácení nové hodnoty



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test37.lua:11-24



; implementace funkce createCounter()
; local counter = 0
0001    KSHORT   0   0        ; nastavení hodnoty lokální proměnné counter
; return function()
0002    FNEW     1   0        ; vytvoření uzávěru
0003    UCLO     0 => 0004
0004 => RET1     1   2        ; vrácení uzávěru



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test37.lua:31-39
; implementace funkce main()



; local mycounter = createCounter()
0001    GGET     0   0        ; získat referenci na funkci "createCounter"
0002    CALL     0   2   1    ; volání funkce "createCounter"

; print(mycounter())
0003    GGET     1   1        ; získat referenci na funkci "print"
0004    MOV      2   0
0005    CALL     2   0   1    ; volání funkce "mycounter"
0006    CALLM    1   1   0    ; volání funkce "print"

; print(mycounter())
0007    GGET     1   1        ; získat referenci na funkci "print"
0008    MOV      2   0
0009    CALL     2   0   1    ; volání funkce "mycounter"
0010    CALLM    1   1   0    ; volání funkce "print"

; print(mycounter())
0011    GGET     1   1        ; získat referenci na funkci "print"
0012    MOV      2   0
0013    CALL     2   0   1    ; volání funkce "mycounter"
0014    CALLM    1   1   0    ; volání funkce "print"

0015    RET0     0   1        ; návrat z funkce "main"



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test37.lua:0-51



; inicializace a volání funkce main
0001    FNEW     0   0        ; test37.lua:11
0002    GSET     0   1        ; "createCounter"
0003    FNEW     0   2        ; test37.lua:31
0004    GSET     0   3        ; "main"
0005    GGET     0   3        ; "main"
0006    CALL     0   1   1    ; volání funkce "main"

; každý program je automaticky ukončen následující instrukcí
0007    RET0     0   1

; konec

