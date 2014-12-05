; Překlad demonstračního příkladu test33.lua
; do IR využívaného virtuálním strojem a JIT


; překladačem LuaJIT.
; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test33.lua:0-25



; počitadlo smyčky
; local i = 10
0001    KSHORT   0  10        ; inicializace počitadla hodnotou 10

; programová smyčka typu repeat-until
; repeat
0002 => LOOP     1 => 0012    ; označení generické programové smyčky (pro detekci hot spotů)

; print(i)
0003    GGET     1   0        ; získání reference na funkci se jménem "print"
0004    MOV      2   0        ; bude se tisknout hodnota proměnné i (proměnná #0)
0005    CALL     1   1   2    ; volání funkce print()

; i = i - 1
0006    SUBVN    0   0   0    ; odečtení jedničky (konstanta #0) od proměnné i (proměnná #0)

; if i == 0 then
0007    ISNEN    0   1        ; porovnání počitadla s konstantou 0

; "else"
0008    JMP      1 => 0010    ; podmíněný skok za if

; break
0009    JMP      1 => 0012    ; nepodmíněný skok ZA konec programové smyčky

; end
0010 => JMP      1 => 0011    ; nepodmíněný skok NA konec programové smyčky

; until false
0011 => JMP      1 => 0002    ; nepodmíněný skok na začátek programové smyčky

; každý program je automaticky ukončen následující instrukcí
0012 => RET0     0   1

; konec

