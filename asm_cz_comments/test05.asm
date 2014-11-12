; Překlad demonstračního příkladu test05.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
 -- BYTECODE -- test05.lua:0-23



; local a = nil
 0001    KPRI     0   0      ; do slotu číslo 0 uložit hodnotu nil

; local b = 0
 0002    KSHORT   1   0      ; do slotu číslo 1 uložit hodnotu 0

; local c = 42
 0003    KSHORT   2  42      ; do slotu číslo 2 uložit hodnotu 0

; local d = 42*42
 0004    KSHORT   3 1764     ; do slotu číslo 3 uložit hodnotu 42×42=1764

; local e = 42*42*42
 0005    KNUM     4   0      ; do slotu číslo 4 uložit hodnotu 42×42×42=74088 z tabulky konstant

; local f = 42*42*42*42
 0006    KNUM     5   1      ; do slotu číslo 4 uložit hodnotu 42×42×42×42=3111696 z tabulky konstant

; print(a)
 0007    GGET     6   0      ; získání reference na funkci se jménem  "print", uložení do slotu 6
 0008    MOV      7   0      ; jediným parametrem funkce je hodnota proměnné "a" (slot 0)
 0009    CALL     6   1   2  ; volání funkce print()

; print(b)
 0010    GGET     6   0      ; získání reference na funkci se jménem  "print", uložení do slotu 6
 0011    MOV      7   1      ; jediným parametrem funkce je hodnota proměnné "b" (slot 1)
 0012    CALL     6   1   2  ; volání funkce print()

; print(c)
 0013    GGET     6   0      ; získání reference na funkci se jménem  "print", uložení do slotu 6
 0014    MOV      7   2      ; jediným parametrem funkce je hodnota proměnné "c" (slot 2)
 0015    CALL     6   1   2  ; volání funkce print()

; print(d)
 0016    GGET     6   0      ; získání reference na funkci se jménem  "print", uložení do slotu 6
 0017    MOV      7   3      ; jediným parametrem funkce je hodnota proměnné "d" (slot 3)
 0018    CALL     6   1   2  ; volání funkce print()

; print(e)
 0019    GGET     6   0      ; získání reference na funkci se jménem  "print", uložení do slotu 6
 0020    MOV      7   4      ; jediným parametrem funkce je hodnota proměnné "e" (slot 4)
 0021    CALL     6   1   2  ; volání funkce print()

; print(f,a)
 0022    GGET     6   0      ; získání reference na funkci se jménem  "print", uložení do slotu 6
 0023    MOV      7   5      ; prvním parametrem funkce je hodnota proměnné "f" (slot 5)
 0024    MOV      8   0      ; druhým parametrem funkce je hodnota proměnné "a" (slot 0)
 0025    CALL     6   1   3  ; volání funkce print()
  
; každý program je automaticky ukončen následující instrukcí
 0026    RET0     0   1      ; návrat z programu

; konec

