; Překlad demonstračního příkladu test03.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.

 -- BYTECODE -- test03.lua:0-16
; local a = nil
 0001    KPRI     0   0   ; do slotu číslo 0 uložit hodnotu nil

; local b = 0
 0002    KSHORT   1   0   ; do slotu číslo 1 uložit hodnotu 0

; local c = 42
 0003    KSHORT   2  42   ; do slotu číslo 2 uložit hodnotu 0

; local d = 42*42
 0004    KSHORT   3 1764  ; do slotu číslo 3 uložit hodnotu 42×42=1764

; local e = 42*42*42
 0005    KNUM     4   0   ; do slotu číslo 4 uložit hodnotu 42×42×42=74088 z tabulky konstant

; local f = 42*42*42*42
 0006    KNUM     5   1   ; do slotu číslo 4 uložit hodnotu 42×42×42×42=3111696 z tabulky konstant

; každý program je automaticky ukončen následující instrukcí
 0007    RET0     0   1   ; návrat z programu

; konec

