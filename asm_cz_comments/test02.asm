; Překlad demonstračního příkladu test02.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
 -- BYTECODE -- test02.lua:0-14



; překlad čtveřice deklarací:
; local a
; local b
; local c
; local d
 0001    KNIL     0   3   ; uložit hodnotu nil do slotů 0 až 3 (včetně)

; každý program je automaticky ukončen následující instrukcí
 0002    RET0     0   1   ; návrat z programu

; konec

