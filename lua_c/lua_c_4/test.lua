-- Testovaci skript pro ctvrty demonstracni priklad
-- pouziti uzaveru

-- pomocna funkce vracejici uzaver
function defPosloupnosti(n)
    -- pamatovana hodnota, ktera vsak
    -- neni z okolniho programu dostupna
    local y = 1
    -- pocitadlo volani = exponent
    local index = 0
    -- anonymni funkce vytiskne pamatovanou
    -- hodnotu a nakonec ji vynasobi zvolenou konstantou
    return function()
        print(index, y)
        y = y * n
        index = index + 1
    end
end

print("mocniny cisla 2")
-- ziskani uzaveru
generator = defPosloupnosti(2)

-- postupne se budou tisknout
-- mocniny cisla 2
for i=0, 16 do
    generator()
end

print()

print("mocniny cisla 3")
-- ziskani uzaveru
generator = defPosloupnosti(3)

-- postupne se budou tisknout
-- mocniny cisla 3
for i=0, 16 do
    generator()
end

print()

print("mocniny cisla 10")
-- ziskani uzaveru
generator = defPosloupnosti(10)

-- postupne se budou tisknout
-- mocniny cisla 3
for i=0, 16 do
    generator()
end

-- finito

