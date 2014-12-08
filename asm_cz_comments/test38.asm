; Překlad demonstračního příkladu test38.lua
; do IR využívaného virtuálním strojem a JIT



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test38.lua:17-22



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
-- BYTECODE -- test38.lua:10-23



; implementace funkce createCounter()
; local counter = 0
0001    KSHORT   0   0        ; nastavení hodnoty lokální proměnné counter
; return function()
0002    FNEW     1   0        ; vytvoření uzávěru
0003    UCLO     0 => 0004
0004 => RET1     1   2        ; vrácení uzávěru



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test38.lua:30-43
; implementace funkce main()



; local mycounter1 = createCounter()
0001    GGET     0   0        ; získat referenci na funkci "createCounter"
0002    CALL     0   2   1    ; volání funkce "createCounter"

; local mycounter2 = createCounter()
0003    GGET     1   0        ; získat referenci na funkci "createCounter"
0004    CALL     1   2   1    ; volání funkce "createCounter"

; příprava počítané programové smyčky for
0005    KSHORT   2   1
0006    KSHORT   3  10
0007    KSHORT   4   1
0008    FORI     2 => 0035

; tělo počítané programové smyčky for

; print("iteration #" .. i)
0009 => GGET     6   1        ; "print"
0010    KSTR     7   2        ; "iteration #"
0011    MOV      8   5
0012    CAT      7   7   8    ; spojení řetězců
0013    CALL     6   1   2    ; volání funkce "print"

; print("    counter1: " .. counter1())
0014    GGET     6   1        ; "print"
0015    KSTR     7   3        ; "    counter1: "
0016    MOV      8   0
0017    CALL     8   2   1    ; volání uzávěru
0018    CAT      7   7   8    ; spojení řetězců
0019    CALL     6   1   2    ; volání funkce "print"

; print("    counter2: " .. counter2())
0020    GGET     6   1        ; "print"
0021    KSTR     7   4        ; "    counter2: "
0022    MOV      8   1
0023    CALL     8   2   1    ; volání uzávěru
0024    CAT      7   7   8    ; spojení řetězců
0025    CALL     6   1   2    ; volání funkce "print"

; print("    counter1: " .. counter1())
0026    GGET     6   1        ; "print"
0027    KSTR     7   3        ; "    counter1: "
0028    MOV      8   0
0029    CALL     8   2   1    ; volání uzávěru
0030    CAT      7   7   8    ; spojení řetězců
0031    CALL     6   1   2    ; volání funkce "print"

; print()
0032    GGET     6   1       ; "print"
0033    CALL     6   1   1

; konec těla programové smyčky for
0034    FORL     2 => 0009

; návrat z funkce
0035 => RET0     0   1



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test38.lua:0-55



; inicializace a volání funkce main
0001    FNEW     0   0        ; test38.lua:10
0002    GSET     0   1        ; "createCounter"
0003    FNEW     0   2        ; test38.lua:30
0004    GSET     0   3        ; "main"
0005    GGET     0   3        ; "main"
0006    CALL     0   1   1    ; volání funkce "main"

; každý program je automaticky ukončen následující instrukcí
0007    RET0     0   1

; konec

