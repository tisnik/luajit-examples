-- Sesty demonstracni priklad vyuzivajici knihovnu FFI

local ffi = require("ffi")

local lib = ffi.load("ffi_example6")

-- Definice ceckovske funkce z uzivatelske knihovny

ffi.cdef[[
void modifyArray(int *array);
]]

local array = ffi.new("int[10]", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

-- Zavolani ceckovske funkce
lib.modifyArray(array)

-- vypis prvku pole
for i = 0, 9 do
    print(i, array[i])
end

