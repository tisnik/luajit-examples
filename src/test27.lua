--
-- LuaJIT: demonstracni priklad cislo 27
--
-- Prace s tabulkami:
--    * vytvoreni a inicializace prazdne tabulky
--    * pridani prvku do tabulky s pouzitim klicu
--    * tisk poctu prvku tabulky
--    * pristup k prvkum tabulky
--



-- vytvoreni prazdne tabulky
local tbl = {}

-- nastavit hodnotu prvku tabulky
tbl["first"] = 777

-- nastavit hodnotu prvku tabulky
tbl["second"] = 999

-- nastavit hodnotu prvku tabulky
tbl["tenth"] = 1000

-- tisk informace o tabulce (reference...)
print(tbl)

-- tisk poctu prvku v tabulce
print(#tbl)

-- tisk hodnoty prvniho prvku v tabulce
print(tbl["first"])

-- tisk hodnoty druheho prvku v tabulce
print(tbl["second"])

-- tisk hodnoty desateho prvku v tabulce
print(tbl["tenth"])



-- finito

