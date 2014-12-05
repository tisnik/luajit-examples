; Překlad demonstračního příkladu test34.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.


; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test34.lua:0-28



; local tbl = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}
0001    TDUP     0   0        ; vytvoření a inicializace tabulky (pole)

; local index,val = next(tbl, nil)
0002    GGET     1   1        ; získání reference na funkci se jménem "next"
0003    MOV      2   0        ; prvním argumentem funkce "next" je tabulka
0004    KPRI     3   0        ; druhým argumentem funkce "next" je konstanta nil
0005    CALL     1   3   3    ; zavolání funkce next

; while index do
0006 => ISF          1        ; podmínka pro ukončení programové smyčky
0007    JMP      3 => 0020    ; podmíněný skok ZA konec programové smyčky
0008    LOOP     3 => 0020    ; označení generické programové smyčky (pro detekci hot spotů)

; print(index,val)
0009    GGET     3   2        ; získání reference na funkci se jménem "print"
0010    MOV      4   1        ; bude se tisknout index
0011    MOV      5   2        ; a současně i hodnota prvku
0012    CALL     3   1   3    ; volání funkce print()

; index,val = next(tbl, index)
0013    GGET     3   1        ; získání reference na funkci se jménem "next"
0014    MOV      4   0        ; prvním argumentem funkce "next" je tabulka
0015    MOV      5   1        ; druhým argumentem funkce "next" je index
0016    CALL     3   3   3    ; zavolání funkce next
0017    MOV      2   4        ; uložení návratových hodnot do správných slotů
0018    MOV      1   3        ; uložení návratových hodnot do správných slotů

; end loop
0019    JMP      3 => 0006    ; nepodmíněný skok na začátek programové smyčky

; každý program je automaticky ukončen následující instrukcí
0020 => RET0     0   1

; konec

