--
-- LuaJIT: demonstracni priklad cislo 26
--
-- Prace s tabulkami:
--    * vytvoreni a inicializace prazdne tabulky
--    * pridani prvku do tabulky s pouzitim indexu
--    * tisk poctu prvku tabulky
--    * pristup k prvkum tabulky
--



-- vytvoreni prazdne tabulky
local tbl = {}

-- nastavit hodnotu prvniho prvku tabulky
tbl[1] = 777

-- nastavit hodnotu druheho prvku tabulky
tbl[2] = 999

-- nastavit hodnotu desateho prvku tabulky
tbl[10] = 1000

-- tisk informace o tabulce (reference...)
print(tbl)

-- tisk poctu prvku v tabulce
print(#tbl)

-- tisk hodnoty prvniho prvku v tabulce
print(tbl[1])

-- tisk hodnoty druheho prvku v tabulce
print(tbl[2])

-- tisk hodnoty desateho prvku v tabulce
print(tbl[10])



-- finito

