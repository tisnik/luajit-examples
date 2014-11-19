; Překlad demonstračního příkladu test19.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test19.lua:12-18



; function main()

; print()
0001    GGET     0   0        ; získání reference na funkci se jménem "print"
0002    CALL     0   1   1    ; volání funkce print()

; print(nil)
0003    GGET     0   0        ; získání reference na funkci se jménem "print"
0004    KPRI     1   0        ; uložení primitivní hodnoty nil do slotu číslo 1
0005    CALL     0   1   2    ; volání funkce print()

; print(42)
0006    GGET     0   0        ; získání reference na funkci se jménem "print"
0007    KSHORT   1  42        ; uložení numerické hodnoty 42 do slotu číslo 1
0008    CALL     0   1   2    ; volání funkce print()

; print(1,2)
0009    GGET     0   0        ; získání reference na funkci se jménem "print"
0010    KSHORT   1   1        ; uložení numerické hodnoty 1 do slotu číslo 1
0011    KSHORT   2   2        ; uložení numerické hodnoty 2 do slotu číslo 2
0012    CALL     0   1   3    ; volání funkce print()

; print("xyzzy")
0013    GGET     0   0        ; získání reference na funkci se jménem "print"
0014    KSTR     1   1        ; uložení reference na řetězec "xyzzy" do slotu číslo 1
0015    CALL     0   1   2    ; volání funkce print()

0016    RET0     0   1        ; návrat z funkce main



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test19.lua:0-27



; main()
; vytvoření, "registrace" a následné volání funkce main()
0001    FNEW     0   0        ; vytvoření uzávěru tvořeného funkcí "main" s uložením do slotu číslo 0
0002    GSET     0   1        ; uložení uzávěru do globální tabulky _G pod jménem "main"
0003    GGET     0   1        ; získání reference na funkci se jménem "main"
0004    CALL     0   1   1    ; zavolání funkce main()
; každý program je automaticky ukončen následující instrukcí
0005    RET0     0   1        ; návrat z programu

; konec

