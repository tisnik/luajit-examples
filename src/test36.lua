--
-- LuaJIT: demonstracni priklad cislo 36
--
-- Prace s tabulkami:
--    * vytvoreni a inicializace prazdne tabulky
--    * pridani prvku do tabulky s pouzitim klicu
--    * programova smycka typu for-each vyuzivajici
--      funkci ipairs.
--



-- vytvoreni prazdne tabulky
local tbl = {}

-- nastavit hodnotu prvku tabulky
tbl["first"] = 777

-- nastavit hodnotu prvku tabulky
tbl["second"] = 999

-- nastavit hodnotu prvku tabulky
tbl["tenth"] = 1000

-- programova smycka typu for-each vyuzivajici funkci ipairs
for key,val in pairs(tbl) do
    print(key)
end

-- odradkovani
print()

-- programova smycka typu for-each vyuzivajici funkci ipairs
for key,val in pairs(tbl) do
    print(val)
end

-- odradkovani
print()

-- programova smycka typu for-each vyuzivajici funkci ipairs
for key,val in pairs(tbl) do
    print(key, val)
end



-- finito

