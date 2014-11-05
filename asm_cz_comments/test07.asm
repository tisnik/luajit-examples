; Překlad demonstračního příkladu test07.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.

 -- BYTECODE -- test07.lua:0-37

; local a = 1
 0001    KSHORT   0   1       ; do slotu číslo 0 uložit hodnotu 1

; local b = 2
 0002    KSHORT   1   2       ; do slotu číslo 1 uložit hodnotu 2

; local c = 3
 0003    KSHORT   2   3       ; do slotu číslo 2 uložit hodnotu 3

; local x = a + b + c
 0004    ADDVV    3   0   1
 0005    ADDVV    3   3   2   ; x = a + b + c

; local y = a - b * c
 0006    MULVV    4   1   2
 0007    SUBVV    4   0   4   ; y = a - b * c

; local z = a * (b + c)
 0008    ADDVV    5   1   2
 0009    MULVV    5   0   5   ; z = a * (b + c)

; local w = (a + b) * (b + c)
 0010    ADDVV    6   0   1
 0011    ADDVV    7   1   2
 0012    MULVV    6   6   7   ; w = (a + b) * (b + c)

; local q = (a % b) / (b % c)
 0013    MODVV    7   0   1
 0014    MODVV    8   1   2
 0015    DIVVV    7   7   8   ; q = (a % b) / (b % c)

; print(a)
 0016    GGET     8   0       ; získání reference na funkci se jménem "print"
 0017    MOV      9   0       ; parametr pro funkci print se uloží do slotu číslo 9
 0018    CALL     8   1   2   ; volání funkce print()

; print(b)
 0019    GGET     8   0       ; získání reference na funkci se jménem "print"
 0020    MOV      9   1       ; parametr pro funkci print se uloží do slotu číslo 9
 0021    CALL     8   1   2   ; volání funkce print()

; print(c)
 0022    GGET     8   0       ; získání reference na funkci se jménem "print"
 0023    MOV      9   2       ; parametr pro funkci print se uloží do slotu číslo 9
 0024    CALL     8   1   2   ; volání funkce print()

; print(x)
 0025    GGET     8   0       ; získání reference na funkci se jménem "print"
 0026    MOV      9   3       ; parametr pro funkci print se uloží do slotu číslo 9
 0027    CALL     8   1   2   ; volání funkce print()

; print(y)
 0028    GGET     8   0       ; získání reference na funkci se jménem "print"
 0029    MOV      9   4       ; parametr pro funkci print se uloží do slotu číslo 9
 0030    CALL     8   1   2   ; volání funkce print()

; print(z)
 0031    GGET     8   0       ; získání reference na funkci se jménem "print"
 0032    MOV      9   5       ; parametr pro funkci print se uloží do slotu číslo 9
 0033    CALL     8   1   2   ; volání funkce print()

; print(w)
 0034    GGET     8   0       ; získání reference na funkci se jménem "print"
 0035    MOV      9   6       ; parametr pro funkci print se uloží do slotu číslo 9
 0036    CALL     8   1   2   ; volání funkce print()

; print(q)
 0037    GGET     8   0       ; získání reference na funkci se jménem "print"
 0038    MOV      9   7       ; parametr pro funkci print se uloží do slotu číslo 9
 0039    CALL     8   1   2   ; volání funkce print()

; každý program je automaticky ukončen následující instrukcí
 0040    RET0     0   1       ; návrat z programu

; konec

