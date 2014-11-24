--
-- LuaJIT: demonstracni priklad cislo 35
--
-- Prace s tabulkami:
--    * vytvoreni a inicializace neprazdne tabulky
--    * programova smycka typu for-each vyuzivajici
--      funkci ipairs.
--



-- vytvoreni desetiprvkove tabulky
local tbl = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}

-- programova smycka typu for-each vyuzivajici funkci ipairs
for i,val in ipairs(tbl) do
    print(i)
end

-- odradkovani
print()

-- programova smycka typu for-each vyuzivajici funkci ipairs
for i,val in ipairs(tbl) do
    print(val)
end

-- odradkovani
print()

-- programova smycka typu for-each vyuzivajici funkci ipairs
for i,val in ipairs(tbl) do
    print(i, val)
end



-- finito

