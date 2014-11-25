; Překlad demonstračního příkladu test23.lua
; do IR využívaného virtuálním strojem a JIT
; překladačem LuaJIT.



; metadata se základními informacemi o zdrojovém kódu,
; který byl použit pro vygenerování tohoto IR
-- BYTECODE -- test23.lua:13-14
; function function1()

; end
0001    RET0     0   1        ; návrat z funkce



-- BYTECODE -- test23.lua:21-23
; function function2()

; return 42
0001    KSHORT   0  42
0002    RET1     0   2        ; návrat z funkce + předání návratové hodnoty



-- BYTECODE -- test23.lua:30-32
; function function3()

; return 1,2
0001    KSHORT   0   1
0002    KSHORT   1   2
0003    RET      0   3        ; návrat z funkce + předání návratových hodnot



-- BYTECODE -- test23.lua:39-41
; function function4()
0001    KSHORT   0   1
0002    KPRI     1   0
0003    RET      0   3        ; návrat z funkce + předání návratových hodnot



-- BYTECODE -- test23.lua:48-53
; function main()

0001    GGET     0   0        ; přečtení reference na funkci "print"
0002    GGET     1   1        ; přečtení reference na funkci "function1"
0003    CALL     1   0   1    ; zavolání funkce function1()
0004    CALLM    0   1   0    ; zavolání funkce print() s parametry vrácenými předchozí funkcí

0005    GGET     0   0        ; přečtení reference na funkci "print"
0006    GGET     1   2        ; přečtení reference na funkci "function2"
0007    CALL     1   0   1    ; zavolání funkce function2()
0008    CALLM    0   1   0    ; zavolání funkce print() s parametry vrácenými předchozí funkcí

0009    GGET     0   0        ; přečtení reference na funkci "print"
0010    GGET     1   3        ; přečtení reference na funkci "function3"
0011    CALL     1   0   1    ; zavolání funkce function3()
0012    CALLM    0   1   0    ; zavolání funkce print() s parametry vrácenými předchozí funkcí

0013    GGET     0   0        ; přečtení reference na funkci "print"
0014    GGET     1   4        ; přečtení reference na funkci "function4"
0015    CALL     1   0   1    ; zavolání funkce function4()
0016    CALLM    0   1   0    ; zavolání funkce print() s parametry vrácenými předchozí funkcí

0017    RET0     0   1        ; návrat z funkce



-- BYTECODE -- test23.lua:0-62
; main()
; vytvoření a "registrace" všech funkcí
0001    FNEW     0   0        ; vytvoření uzávěru z prototypu začínajícího na řádku test23.lua:13
0002    GSET     0   1        ; "uložení uzávěru do globální tabulky _G pod jménem function1"

0003    FNEW     0   2        ; vytvoření uzávěru z prototypu začínajícího na řádku test23.lua:21
0004    GSET     0   3        ; uložení uzávěru do globální tabulky _G pod jménem "function2"

0005    FNEW     0   4        ; vytvoření uzávěru z prototypu začínajícího na řádku test23.lua:30
0006    GSET     0   5        ; uložení uzávěru do globální tabulky _G pod jménem "function3"

0007    FNEW     0   6        ; vytvoření uzávěru z prototypu začínajícího na řádku test23.lua:39
0008    GSET     0   7        ; uložení uzávěru do globální tabulky _G pod jménem "function4"

0009    FNEW     0   8        ; vytvoření uzávěru z prototypu začínajícího na řádku test23.lua:48
0010    GSET     0   9        ; uložení uzávěru do globální tabulky _G pod jménem "main"

0011    GGET     0   9        ; získání reference na funkci se jménem "main"
0012    CALL     0   1   1    ; zavolání funkce main()

; každý program je automaticky ukončen následující instrukcí
0013    RET0     0   1        ; návrat z programu

; konec

