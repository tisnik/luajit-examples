; Překlad demonstračního příkladu test36.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test36.lua:0-50



; vytvoření prázdné tabulky
; local tbl = {}
0001    TNEW     0   0        ; vytvoření prázdné tabulky

; nastavit hodnotu prvku tabulky
; s využitím klíče reprezentovaného řetězcem
; tbl["first"] = 777
0002    KSHORT   1 777        ; ukládaná konstanta
0003    TSETS    1   0   0    ; uložení hodnoty do tabulky

; nastavit hodnotu prvku tabulky
; s využitím klíče reprezentovaného řetězcem
; tbl["second"] = 999
0004    KSHORT   1 999        ; ukládaná konstanta
0005    TSETS    1   0   1    ; uložení hodnoty do tabulky

; nastavit hodnotu prvku tabulky
; s využitím klíče reprezentovaného řetězcem
; tbl["tenth"] = 1000
0006    KSHORT   1 1000       ; ukládaná konstanta
0007    TSETS    1   0   2    ; uložení hodnoty do tabulky

; programová smyčka typu for-each
; for key,val in pairs(tbl) do
0008    GGET     1   3        ; získání reference na funkci se jménem "pairs"
0009    MOV      2   0        ; předání iterátoru
0010    CALL     1   4   2    ; volání funkce pairs()
0011    ISNEXT   4 => 0015    ; přímý skok na instrukci ITERN

; print(key)
0012 => GGET     6   4        ; získání reference na funkci se jménem "print"
0013    MOV      7   4        ; bude se tisknout klíč
0014    CALL     6   1   2    ; volání funkce print()
0015 => ITERN    4   3   3    ; volání iterátoru a zjištění. zda existuje další prvek v tabulce

; end loop
0016    ITERL    4 => 0012    ; další iterace (pokud k ní dojde) začne na instrukci 0012

; print()
0017    GGET     1   4        ; získání reference na funkci se jménem "print"
0018    CALL     1   1   1    ; volání funkce print()

; programová smyčka typu for-each
; for key,val in pairs(tbl) do
0019    GGET     1   3        ; získání reference na funkci se jménem "pairs"
0020    MOV      2   0
0021    CALL     1   4   2
0022    ISNEXT   4 => 0026    ; volání iterátoru a zjištění. zda existuje další prvek v tabulce

; print(val)
0023 => GGET     6   4        ; získání reference na funkci se jménem "print"
0024    MOV      7   5        ; bude se tisknout hodnota
0025    CALL     6   1   2    ; volání funkce print()
0026 => ITERN    4   3   3    ; volání iterátoru a zjištění. zda existuje další prvek v tabulce

; end loop
0027    ITERL    4 => 0023    ; další iterace (pokud k ní dojde) začne na instrukci 0023

; print()
0028    GGET     1   4        ; získání reference na funkci se jménem "print"
0029    CALL     1   1   1    ; volání funkce print()

; programová smyčka typu for-each
; for key,val in pairs(tbl) do
0030    GGET     1   3        ; získání reference na funkci se jménem "pairs"
0031    MOV      2   0
0032    CALL     1   4   2
0033    ISNEXT   4 => 0038    ; volání iterátoru a zjištění. zda existuje další prvek v tabulce

; print(key, val)
0034 => GGET     6   4        ; získání reference na funkci se jménem "print"
0035    MOV      7   4        ; bude se tisknout klíč
0036    MOV      8   5        ; a současně se bude tisknout i hodnota
0037    CALL     6   1   3    ; volání funkce print()
0038 => ITERN    4   3   3    ; volání iterátoru a zjištění. zda existuje další prvek v tabulce

; end loop
0039    ITERL    4 => 0034    ; další iterace (pokud k ní dojde) začne na instrukci 0034

; každý program je automaticky ukončen následující instrukcí
0040    RET0     0   1

; konec

