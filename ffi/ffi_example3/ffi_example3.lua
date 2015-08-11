-- Treti demonstracni priklad vyuzivajici knihovnu FFI

local ffi = require("ffi")

local lib = ffi.load("ffi_example3")

-- Definice ceckovske funkce ze standardni knihovny

ffi.cdef[[
void function1(void);
]]

-- Zavolani ceckovske funkce
lib.function1()

