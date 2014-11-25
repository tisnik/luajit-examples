; Překlad demonstračního příkladu test22.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test22.lua:14-15
; function testClass.function1()

; end
0001    RET0     0   1        ; návrat z funkce



-- BYTECODE -- test22.lua:22-24
; function testClass.function2()

; return x
0001    RET1     1   2        ; návrat z funkce + předání návratové hodnoty



-- BYTECODE -- test22.lua:31-37
; function testClass.function3(x, y)

; if x and y then
0001    ISF          1        ; test, zda není první parametr funkce false či nil
0002    JMP      3 => 0008    ; + podmíněný skok
0003    ISF          2        ; test, zda není druhý parametr funkce false či nil
0004    JMP      3 => 0008    ; + podmíněný skok

; return x+y
0005    ADDVV    3   1   2    ; výpočet návratové hodnoty
0006    RET1     3   2        ; návrat z funkce + předání návratové hodnoty

; else
0007    JMP      3 => 0010    ; nepodmíněný skok

; return nil
0008 => KPRI     3   0        ; návratová hodnota
0009    RET1     3   2        ; návrat z funkce + předání návratové hodnoty
0010 => RET0     0   1        ; návrat z funkce



-- BYTECODE -- test22.lua:44-50
; function callFunction1()

; testClass.function1()
0001    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0002    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0003    TGETS    0   0   1    ; získání reference na funkci se jménem "function1"
0004    CALL     0   1   2    ; volání funkce/metody

; testClass.function1(nil)
0005    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0006    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0007    TGETS    0   0   1    ; získání reference na funkci se jménem "function1"
0008    KPRI     2   0        ; parametr volané funkce - hodnota nil
0009    CALL     0   1   3    ; volání funkce/metody

; testClass.function1(42)
0010    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0011    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0012    TGETS    0   0   1    ; získání reference na funkci se jménem "function1"
0013    KSHORT   2  42        ; parametr volané funkce - hodnota 42
0014    CALL     0   1   3    ; volání funkce/metody

; testClass.function1(1, 2)
0015    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0016    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0017    TGETS    0   0   2    ; získání reference na funkci se jménem "function1"
0018    KSHORT   2   1        ; první parametr volané funkce - hodnota 1
0019    KSHORT   3   2        ; druhý parametr volané funkce - hodnota 2
0020    CALL     0   1   4    ; volání funkce/metody

; testClass.function1("xyzzy")
0021    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0022    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0023    TGETS    0   0   1    ; získání reference na funkci se jménem "function1"
0024    KSTR     2   3        ; první parametr volané funkce - odkaz na řetězec "xyzzy"
0025    CALL     0   1   3    ; volání funkce/metody

; end
0026    RET0     0   1



-- BYTECODE -- test22.lua:57-63
; function callfunction2()

; testClass.function2()
0001    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0002    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0003    TGETS    0   0   1    ; získání reference na funkci se jménem "function2"
0004    CALL     0   1   2    ; volání funkce/metody

; testClass.function2(nil)
0005    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0006    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0007    TGETS    0   0   1    ; získání reference na funkci se jménem "function2"
0008    KPRI     2   0        ; parametr volané funkce - hodnota nil
0009    CALL     0   1   3    ; volání funkce/metody

; testClass.function2(42)
0010    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0011    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0012    TGETS    0   0   1    ; získání reference na funkci se jménem "function2"
0013    KSHORT   2  42        ; parametr volané funkce - hodnota 42
0014    CALL     0   1   3    ; volání funkce/metody

; testClass.function2(1, 2)
0015    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0016    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0017    TGETS    0   0   2    ; získání reference na funkci se jménem "function2"
0018    KSHORT   2   1        ; první parametr volané funkce - hodnota 1
0019    KSHORT   3   2        ; druhý parametr volané funkce - hodnota 2
0020    CALL     0   1   4    ; volání funkce/metody

; testClass.function2("xyzzy")
0021    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0022    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0023    TGETS    0   0   1    ; získání reference na funkci se jménem "function2"
0024    KSTR     2   3        ; první parametr volané funkce - odkaz na řetězec "xyzzy"
0025    CALL     0   1   3    ; volání funkce/metody

; end
0026    RET0     0   1



-- BYTECODE -- test22.lua:70-76
; function callfunction3()

; testClass.function3()
0001    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0002    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0003    TGETS    0   0   1    ; získání reference na funkci se jménem "function3"
0004    CALL     0   1   2    ; volání funkce/metody

; testClass.function3(nil)
0005    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0006    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0007    TGETS    0   0   1    ; získání reference na funkci se jménem "function3"
0008    KPRI     2   0        ; parametr volané funkce - hodnota nil
0009    CALL     0   1   3    ; volání funkce/metody

; testClass.function3(42)
0010    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0011    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0012    TGETS    0   0   1    ; získání reference na funkci se jménem "function3"
0013    KSHORT   2  42        ; parametr volané funkce - hodnota 42
0014    CALL     0   1   3    ; volání funkce/metody

; testClass.function3(1, 2)
0015    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0016    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0017    TGETS    0   0   1    ; získání reference na funkci se jménem "function3"
0018    KSHORT   2   1        ; první parametr volané funkce - hodnota 1
0019    KSHORT   3   2        ; druhý parametr volané funkce - hodnota 2
0020    CALL     0   1   4    ; volání funkce/metody

; testClass.function3("xyzzy")
0021    GGET     0   0        ; přečtení reference na tabulku "testClass" z globální tabulky _G
0022    MOV      1   0        ; při volání se použije i skrytý parametr this/self
0023    TGETS    0   0   1    ; získání reference na funkci se jménem "function3"
0024    KSTR     2   2        ; první parametr volané funkce - odkaz na řetězec "xyzzy"
0025    CALL     0   1   3    ; volání funkce/metody

; end
0026    RET0     0   1



-- BYTECODE -- test22.lua:83-87
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



-- BYTECODE -- test22.lua:0-99

; main()
; vytvoření, "registrace" a následné volání funkce main(), inicializace třídy testClass
0001    TNEW     0   0        ; vytvoření nové tabulky
0002    GSET     0   0        ; uložení tabulky do _G pod jménem "testClass"

0003    GGET     0   0        ; přečtení reference na tabulku "testClass"
0004    FNEW     1   2        ; vytvoření uzávěru z prototypu začínajícího na řádku test22.lua:14
0005    TSETS    1   0   1    ; uložení uzávěru do vybrané tabulky _G pod jménem "function1"

0006    GGET     0   0        ; přečtení reference na tabulku "testClass"
0007    FNEW     1   4        ; vytvoření uzávěru z prototypu začínajícího na řádku test22.lua:22
0008    TSETS    1   0   3    ; uložení uzávěru do vybrané tabulky _G pod jménem "function2"

0009    GGET     0   0        ; přečtení reference na tabulku "testClass"
0010    FNEW     1   6        ; vytvoření uzávěru z prototypu začínajícího na řádku test22.lua:31
0011    TSETS    1   0   5    ; uložení uzávěru do vybrané tabulky _G pod jménem "function3"

0012    FNEW     0   7        ; vytvoření uzávěru z prototypu začínajícího na řádku test22.lua:44
0013    GSET     0   8        ; uložení uzávěru do globální tabulky _G pod jménem "callFunction1"

0014    FNEW     0   9        ; vytvoření uzávěru z prototypu začínajícího na řádku test22.lua:57
0015    GSET     0  10        ; uložení uzávěru do globální tabulky _G pod jménem "callFunction2"

0016    FNEW     0  11        ; vytvoření uzávěru z prototypu začínajícího na řádku test22.lua:70
0017    GSET     0  12        ; uložení uzávěru do globální tabulky _G pod jménem "callFunction3"

0018    FNEW     0  13        ; vytvoření uzávěru z prototypu začínajícího na řádku test22.lua:83
0019    GSET     0  14        ; uložení uzávěru do globální tabulky _G pod jménem "main"

0020    GGET     0  14        ; získání reference na funkci se jménem "main"
0021    CALL     0   1   1    ; zavolání funkce main()

; každý program je automaticky ukončen následující instrukcí
0022    RET0     0   1        ; návrat z programu

; konec

