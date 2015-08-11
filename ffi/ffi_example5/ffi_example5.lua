-- Paty demonstracni priklad vyuzivajici knihovnu FFI

local ffi = require("ffi")

local lib = ffi.load("ffi_example5")

-- Definice ceckovskych funkci z uzivatelske knihovny

ffi.cdef[[
void function1(const char *);
const char* function2(void);
]]

-- Zavolani ceckovskych funkci
lib.function1("Hello world!")

local return_value = lib.function2()
print(return_value)

local str = ffi.string(return_value)
print(str)

