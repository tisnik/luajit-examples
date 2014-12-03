; Překlad demonstračního příkladu test31.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test31.lua:0-22



; počitadlo smyčky
; local i = 10
0001    KSHORT   0  10        ; inicializace počitadla hodnotou 10

; programová smyčka typu repeat-until
; repeat
0002 => LOOP     1 => 0009    ; označení generické programové smyčky (pro detekci hot spotů)

; print(i)
0003    GGET     1   0        ; získání reference na funkci se jménem "print"
0004    MOV      2   0        ; bude se tisknout hodnota proměnné i (proměnná #0)
0005    CALL     1   1   2    ; volání funkce print()

; i = i - 1
0006    SUBVN    0   0   0    ; odečtení jedničky (konstanta #0) od proměnné i (proměnná #0)
0007    ISNEN    0   1        ; porovnání počitadla s konstantou

; until i==0
0008    JMP      1 => 0002    ; podmíněný skok na začátek programové smyčky
; (end loop)

; každý program je automaticky ukončen následující instrukcí
0009 => RET0     0   1

; konec

