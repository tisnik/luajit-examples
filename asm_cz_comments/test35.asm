; Překlad demonstračního příkladu test35.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.


; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test35.lua:0-40



; vytvoření a inicializace tabulky
; local tbl = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}
0001    TDUP     0   0        ; vytvoření a inicializace tabulky

; programová smyčka typu for-each
; for i,val in ipairs(tbl) do
0002    GGET     1   1        ; získání reference na funkci se jménem "ipairs"
0003    MOV      2   0        ; předání iterátoru
0004    CALL     1   4   2    ; volání funkce ipairs()
0005    JMP      4 => 0009    ; přímý skok na instrukci ITERC

; print(i)
0006 => GGET     6   2        ; získání reference na funkci se jménem "print"
0007    MOV      7   4        ; bude se tisknout index
0008    CALL     6   1   2    ; volání funkce print()
0009 => ITERC    4   3   3    ; volání iterátoru a zjištění. zda existuje další prvek v tabulce

; end loop
0010    ITERL    4 => 0006    ; další iterace (pokud k ní dojde) začne na instrukci 0006

; print()
0011    GGET     1   2        ; získání reference na funkci se jménem "print"
0012    CALL     1   1   1    ; volání funkce print()

; programová smyčka typu for-each
; for i,val in ipairs(tbl) do
0013    GGET     1   1        ; získání reference na funkci se jménem "ipairs"
0014    MOV      2   0        ; předání iterátoru
0015    CALL     1   4   2    ; volání funkce ipairs()
0016    JMP      4 => 0020    ; přímý skok na instrukci ITERC

; print(val)
0017 => GGET     6   2        ; získání reference na funkci se jménem "print"
0018    MOV      7   5        ; bude se tisknout hodnota
0019    CALL     6   1   2    ; volání funkce print()
0020 => ITERC    4   3   3    ; volání iterátoru a zjištění. zda existuje další prvek v tabulce

; end loop
0021    ITERL    4 => 0017    ; další iterace (pokud k ní dojde) začne na instrukci 0017

; print()
0022    GGET     1   2        ; získání reference na funkci se jménem "print"
0023    CALL     1   1   1    ; volání funkce print()

; programová smyčka typu for-each
; for i,val in ipairs(tbl) do
0024    GGET     1   1        ; získání reference na funkci se jménem "ipairs"
0025    MOV      2   0        ; předání iterátoru
0026    CALL     1   4   2    ; volání funkce ipairs()
0027    JMP      4 => 0032    ; přímý skok na instrukci ITERC

; print(i, val)
0028 => GGET     6   2        ; získání reference na funkci se jménem "print"
0029    MOV      7   4        ; bude se tisknout index
0030    MOV      8   5        ; a současně i hodnota
0031    CALL     6   1   3    ; volání funkce print()
0032 => ITERC    4   3   3    ; volání iterátoru a zjištění. zda existuje další prvek v tabulce

; end loop
0033    ITERL    4 => 0028    ; další iterace (pokud k ní dojde) začne na instrukci 0028

; každý program je automaticky ukončen následující instrukcí
0034    RET0     0   1

; konec

