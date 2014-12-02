; Překlad demonstračního příkladu test28.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test28.lua:0-55

; vytvoření prázdné tabulky
; local tbl = {}
0001    TNEW     0   0

; inicializace proměnných použitých jako klíče
; local key1 = "first"
0002    KSTR     1   0        ; řetězec "first"

; local key2 = 2
0003    KSHORT   2   2        ; ukládaná konstanta

; local key3 = "tenth"
0004    KSTR     3   1        ; řetězec "tenth"

; nastavit hodnotu prvku tabulky
; s využitím indexu ci klíče uloženého v proměnné
; tbl[key1] = 777
0005    KSHORT   4 777        ; ukládaná konstanta
0006    TSETV    4   0   1    ; uložení hodnoty do tabulky

; nastavit hodnotu prvku tabulky
; s využitím indexu ci klíče uloženého v proměnné
; tbl[key2] = 999
0007    KSHORT   4 999        ; ukládaná konstanta
0008    TSETV    4   0   2    ; uložení hodnoty do tabulky

; nastavit hodnotu prvku tabulky
; s využitím indexu ci klíče uloženého v proměnné
; tbl[key3] = 1000
0009    KSHORT   4 1000       ; ukládaná konstanta
0010    TSETV    4   0   3    ; uložení hodnoty do tabulky

; tisk informace o tabulce (reference...)
; print(tbl)
0011    GGET     4   2        ; získání reference na funkci se jménem "print"
0012    MOV      5   0        ; bude se tisknout reference na tabulku
0013    CALL     4   1   2    ; volání funkce print()

; tisk poctu prvku v tabulce
; print(#tbl)
0014    GGET     4   2        ; získání reference na funkci se jménem "print"
0015    LEN      5   0        ; získání počtu prvků tabulky (resp. pole, které je součástí tabulky)
0016    CALL     4   1   2    ; volání funkce print()

; tisk hodnoty prvku v tabulce
; s využitím indexu ci klíče uloženého v proměnné
; print(tbl[key1])
0017    GGET     4   2        ; získání reference na funkci se jménem "print"
0018    TGETV    5   0   1    ; přečtení prvku z tabulky
0019    CALL     4   1   2    ; volání funkce print()

; tisk hodnoty prvku v tabulce
; s využitím indexu ci klíče uloženého v proměnné
; print(tbl[key2])
0020    GGET     4   2        ; získání reference na funkci se jménem "print"
0021    TGETV    5   0   2    ; přečtení prvku z tabulky
0022    CALL     4   1   2    ; volání funkce print()

; tisk hodnoty prvku v tabulce
; s využitím indexu ci klíče uloženého v proměnné
; print(tbl[key3])
0023    GGET     4   2        ; získání reference na funkci se jménem "print"
0024    TGETV    5   0   3    ; přečtení prvku z tabulky
0025    CALL     4   1   2    ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
0026    RET0     0   1

; konec

