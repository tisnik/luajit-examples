; Překlad demonstračního příkladu test20.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test20.lua:12-13



; function function1()

; end
0001    RET0     0   1        ; návrat z funkce



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test20.lua:20-22



; function function2(x)

; return x
0001    RET1     0   2        ; návrat z funkce + předání návratové hodnoty



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test20.lua:29-35



; function function3(x, y)

; if x and y then
0001    ISF          0        ; test, zda není první parametr funkce false či nil
0002    JMP      2 => 0008    ; + podmíněný skok
0003    ISF          1        ; test, zda není druhý parametr funkce false či nil
0004    JMP      2 => 0008    ; + podmíněný skok

; return x+y
0005    ADDVV    2   0   1    ; výpočet návratové hodnoty
0006    RET1     2   2        ; návrat z funkce + předání návratové hodnoty

; else
0007    JMP      2 => 0010    ; nepodmíněný skok

; return nil
0008 => KPRI     2   0        ; návratová hodnota
0009    RET1     2   2        ; návrat z funkce + předání návratové hodnoty
0010 => RET0     0   1        ; návrat z funkce



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test20.lua:42-48



; function callFunction1()

; function1()
0001    GGET     0   0        ; získání reference na funkci se jménem "function1"
0002    CALL     0   1   1    ; volání funkce

; function1(nil)
0003    GGET     0   0        ; získání reference na funkci se jménem "function1"
0004    KPRI     1   0
0005    CALL     0   1   2    ; volání funkce

; function1(42)
0006    GGET     0   0        ; získání reference na funkci se jménem "function1"
0007    KSHORT   1  42
0008    CALL     0   1   2    ; volání funkce

; function1(1, 2)
0009    GGET     0   1        ; získání reference na funkci se jménem "function1"
0010    KSHORT   1   1
0011    KSHORT   2   2
0012    CALL     0   1   3    ; volání funkce

; function1("xyzzy")
0013    GGET     0   0        ; "function1"
0014    KSTR     1   2        ; "xyzzy"
0015    CALL     0   1   2    ; volání funkce

; end
0016    RET0     0   1        ; návrat z funkce



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test20.lua:55-61



; function callFunction2()

; function2()
0001    GGET     0   0        ; získání reference na funkci se jménem "function2"
0002    CALL     0   1   1    ; volání funkce

; function2(nil)
0003    GGET     0   0        ; získání reference na funkci se jménem "function2"
0004    KPRI     1   0
0005    CALL     0   1   2    ; volání funkce

; function2(42)
0006    GGET     0   0        ; získání reference na funkci se jménem "function2"
0007    KSHORT   1  42
0008    CALL     0   1   2    ; volání funkce

; function2(1, 2)
0009    GGET     0   1        ; získání reference na funkci se jménem "function2"
0010    KSHORT   1   1
0011    KSHORT   2   2
0012    CALL     0   1   3    ; volání funkce

; function2("xyzzy")
0013    GGET     0   0        ; získání reference na funkci se jménem "function2"
0014    KSTR     1   2        ; "xyzzy"
0015    CALL     0   1   2    ; volání funkce
0016    RET0     0   1        ; návrat z funkce



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test20.lua:68-74



; function callFunction3()

; function3()
0001    GGET     0   0        ; získání reference na funkci se jménem "function3"
0002    CALL     0   1   1    ; volání funkce

; function3(nil)
0003    GGET     0   0        ; získání reference na funkci se jménem "function3"
0004    KPRI     1   0
0005    CALL     0   1   2    ; volání funkce

; function3(42)
0006    GGET     0   0        ; získání reference na funkci se jménem "function3"
0007    KSHORT   1  42
0008    CALL     0   1   2    ; volání funkce

; function3(1, 2)
0009    GGET     0   0        ; získání reference na funkci se jménem "function3"
0010    KSHORT   1   1
0011    KSHORT   2   2
0012    CALL     0   1   3    ; volání funkce

; function3("xyzzy")
0013    GGET     0   0        ; získání reference na funkci se jménem "function3"
0014    KSTR     1   1        ; "xyzzy"
0015    CALL     0   1   2    ; volání funkce
0016    RET0     0   1        ; návrat z funkce



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test20.lua:81-85



; function main()

; callFunction1()
0001    GGET     0   0        ; získání reference na funkci se jménem "callFunction1"
0002    CALL     0   1   1    ; volání funkce

; callFunction2()
0003    GGET     0   1        ; získání reference na funkci se jménem "callFunction2"
0004    CALL     0   1   1    ; volání funkce

; callFunction3()
0005    GGET     0   2        ; získání reference na funkci se jménem "callFunction3"
0006    CALL     0   1   1    ; volání funkce

; end
0007    RET0     0   1        ; návrat z funkce



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test20.lua:0-94



; main()
; vytvoření, "registrace" a následné volání funkce main()
0001    FNEW     0   0        ; vytvoření uzávěru z prototypu začínajícího na řádku test20.lua:12
0002    GSET     0   1        ; uložení uzávěru do globální tabulky _G pod jménem "function1"

0003    FNEW     0   2        ; vytvoření uzávěru z prototypu začínajícího na řádku test20.lua:20
0004    GSET     0   3        ; uložení uzávěru do globální tabulky _G pod jménem "function2"

0005    FNEW     0   4        ; vytvoření uzávěru z prototypu začínajícího na řádku test20.lua:29
0006    GSET     0   5        ; uložení uzávěru do globální tabulky _G pod jménem "function3"

0007    FNEW     0   6        ; vytvoření uzávěru z prototypu začínajícího na řádku test20.lua:42
0008    GSET     0   7        ; uložení uzávěru do globální tabulky _G pod jménem "callFunction1"

0009    FNEW     0   8        ; vytvoření uzávěru z prototypu začínajícího na řádku test20.lua:55
0010    GSET     0   9        ; uložení uzávěru do globální tabulky _G pod jménem "callFunction2"

0011    FNEW     0  10        ; vytvoření uzávěru z prototypu začínajícího na řádku test20.lua:68
0012    GSET     0  11        ; uložení uzávěru do globální tabulky _G pod jménem "callFunction3"

0013    FNEW     0  12        ; vytvoření uzávěru z prototypu začínajícího na řádku test20.lua:81
0014    GSET     0  13        ; uložení uzávěru do globální tabulky _G pod jménem "main"

0015    GGET     0  13        ; získání reference na funkci se jménem "main"
0016    CALL     0   1   1    ; zavolání funkce main()

; každý program je automaticky ukončen následující instrukcí
0017    RET0     0   1        ; návrat z programu

; konec

