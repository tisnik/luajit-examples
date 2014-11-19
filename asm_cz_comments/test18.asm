; Překlad demonstračního příkladu test18.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test18.lua:0-54



; local a = true
0001    KPRI     0   2        ; deklarace a inicializace lokální proměnné a=true

; local b = false
0002    KPRI     1   1        ; deklarace a inicializace lokální proměnné b=false

; local c = nil
0003    KPRI     2   0        ; deklarace a inicializace lokální proměnné c=nil

; local d = 42
0004    KSHORT   3  42        ; deklarace a inicializace lokální proměnné d=42



; if a then
0005    ISF          0        ; test hodnoty lokální proměnné na hodnotu false
0006    JMP      4 => 0010    ; skok provedený při splnění podmínky

; print("a")
0007    GGET     4   0        ; získání reference na funkci se jménem "print"
0008    KSTR     5   1        ; načtení řetězce "a", který se bude tisknout
0009    CALL     4   1   2    ; volání funkce print()
; end



; if not a then
0010 => IST          0        ; test hodnoty lokální proměnné na hodnotu true
0011    JMP      4 => 0015    ; skok provedený při splnění podmínky

; print("!a")
0012    GGET     4   0        ; získání reference na funkci se jménem "print"
0013    KSTR     5   2        ; načtení řetězce "!a", který se bude tisknout
0014    CALL     4   1   2    ; volání funkce print()
; end



; if b then
0015 => ISF          1        ; test hodnoty lokální proměnné na hodnotu false
0016    JMP      4 => 0020    ; skok provedený při splnění podmínky

; print("b")
0017    GGET     4   0        ; získání reference na funkci se jménem "print"
0018    KSTR     5   3        ; načtení řetězce "b", který se bude tisknout
0019    CALL     4   1   2    ; volání funkce print()
; end



; if not b then
0020 => IST          1        ; test hodnoty lokální proměnné na hodnotu true
0021    JMP      4 => 0025    ; skok provedený při splnění podmínky
; print("!b")
0022    GGET     4   0        ; získání reference na funkci se jménem "print"
0023    KSTR     5   4        ; načtení řetězce "!b", který se bude tisknout
0024    CALL     4   1   2    ; volání funkce print()
; end



; if c then
0025 => ISF          2        ; test hodnoty lokální proměnné na hodnotu false
0026    JMP      4 => 0030    ; skok provedený při splnění podmínky

; print("c")
0027    GGET     4   0        ; získání reference na funkci se jménem "print"
0028    KSTR     5   5        ; načtení řetězce "c", který se bude tisknout
0029    CALL     4   1   2    ; volání funkce print()
; end



; if not c then
0030 => IST          2        ; test hodnoty lokální proměnné na hodnotu true
0031    JMP      4 => 0035    ; skok provedený při splnění podmínky
; print("!c")
0032    GGET     4   0        ; získání reference na funkci se jménem "print"
0033    KSTR     5   6        ; načtení řetězce "!c", který se bude tisknout
0034    CALL     4   1   2    ; volání funkce print()
; end



; if d then
0035 => ISF          3        ; test hodnoty lokální proměnné na hodnotu false
0036    JMP      4 => 0040    ; skok provedený při splnění podmínky

; print("d")
0037    GGET     4   0        ; získání reference na funkci se jménem "print"
0038    KSTR     5   7        ; načtení řetězce "d", který se bude tisknout
0039    CALL     4   1   2    ; volání funkce print()
; end



0040 => GGET     4   8        ; načtení řetězce "e", který se bude tisknout

; if not e then
0041    IST          4        ; test hodnoty lokální proměnné na hodnotu true
0042    JMP      4 => 0046    ; skok provedený při splnění podmínky

; print("!e")
0043    GGET     4   0        ; získání reference na funkci se jménem "print"
0044    KSTR     5   9        ; načtení řetězce "!e", který se bude tisknout
0045    CALL     4   1   2    ; volání funkce print()
; end



; každý program je automaticky ukončen následující instrukcí
0046 => RET0     0   1        ; návrat z programu

; konec

