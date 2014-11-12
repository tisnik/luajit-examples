; Překlad demonstračního příkladu test06.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
 -- BYTECODE -- test06.lua:0-24



; local a = 1
 0001    KSHORT   0   1       ; do slotu číslo 0 uložit hodnotu 1

; local b = 2
 0002    KSHORT   1   2       ; do slotu číslo 1 uložit hodnotu 2

; local c = a + b
 0003    ADDVV    2   0   1   ; součet hodnot ve slotech 0 a 1, výsledek se ukládá do slotu 2

; local d = a - b
 0004    SUBVV    3   0   1   ; rozdíl hodnot ve slotech 0 a 1, výsledek se ukládá do slotu 3

; local e = a * b
 0005    MULVV    4   0   1   ; součin hodnot ve slotech 0 a 1, výsledek se ukládá do slotu 4

; local f = a / b
 0006    DIVVV    5   0   1   ; podíl hodnot ve slotech 0 a 1, výsledek se ukládá do slotu 5

; local g = a % b
 0007    MODVV    6   0   1   ; podíl modulo hodnot ve slotech 0 a 1, výsledek se ukládá do slotu 6

; print(a)
 0008    GGET     7   0       ; získání reference na funkci se jménem "print"
 0009    MOV      8   0       ; parametr pro funkci print se uloží do slotu číslo 8
 0010    CALL     7   1   2   ; volání funkce print()

; print(b)
 0011    GGET     7   0       ; získání reference na funkci se jménem "print"
 0012    MOV      8   1       ; parametr pro funkci print se uloží do slotu číslo 8
 0013    CALL     7   1   2   ; volání funkce print()

; print(c)
 0014    GGET     7   0       ; získání reference na funkci se jménem "print"
 0015    MOV      8   2       ; parametr pro funkci print se uloží do slotu číslo 8
 0016    CALL     7   1   2   ; volání funkce print()

; print(d)
 0017    GGET     7   0       ; získání reference na funkci se jménem "print"
 0018    MOV      8   3       ; parametr pro funkci print se uloží do slotu číslo 8
 0019    CALL     7   1   2   ; volání funkce print()

; print(e)
 0020    GGET     7   0       ; získání reference na funkci se jménem "print"
 0021    MOV      8   4       ; parametr pro funkci print se uloží do slotu číslo 8
 0022    CALL     7   1   2   ; volání funkce print()

; print(f)
 0023    GGET     7   0       ; získání reference na funkci se jménem "print"
 0024    MOV      8   5       ; parametr pro funkci print se uloží do slotu číslo 8
 0025    CALL     7   1   2   ; volání funkce print()

; print(g)
 0026    GGET     7   0       ; získání reference na funkci se jménem "print"
 0027    MOV      8   6       ; parametr pro funkci print se uloží do slotu číslo 8
 0028    CALL     7   1   2   ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
 0029    RET0     0   1       ; návrat z programu

; konec

