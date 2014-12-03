; Překlad demonstračního příkladu test30.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test30.lua:0-22



; počitadlo smyčky
; local i = 10
0001    KSHORT   0  10        ; inicializace počitadla hodnotou 10

; programová smyčka typu while
; while i>=0 do
0002 => KSHORT   1   0        ; uložit konstantu 0 do proměnné #1
0003    ISGT     1   0        ; porovnání počitadla s konstantou 0
0004    JMP      1 => 0011    ; podmíněný skok ZA konec programové smyčky
0005    LOOP     1 => 0011    ; označení generické programové smyčky (pro detekci hot spotů)

; print(i)
0006    GGET     1   0        ; získání reference na funkci se jménem "print"
0007    MOV      2   0        ; bude se tisknout hodnota proměnné i (proměnná #0)
0008    CALL     1   1   2    ; volání funkce print()

; i = i - 1
0009    SUBVN    0   0   0    ; odečtení jedničky (konstanta #0) od proměnné i (proměnná #0)

; end loop
0010    JMP      1 => 0002    ; nepodmíněný skok na začátek programové smyčky

; každý program je automaticky ukončen následující instrukcí
0011 => RET0     0   1

; konec

