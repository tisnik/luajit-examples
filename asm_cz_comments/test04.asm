; Překlad demonstračního příkladu test04.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.

 -- BYTECODE -- test04.lua:0-11
; print()
 0001    GGET     0   0      ; získání reference na funkci se jménem  "print"
 0002    CALL     0   1   1  ; volání funkce print()
  
; každý program je automaticky ukončen následující instrukcí
 0003    RET0     0   1      ; návrat z programu

; konec

