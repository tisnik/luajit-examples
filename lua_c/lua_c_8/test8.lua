-- Testovaci skript pro osmy demonstracni priklad

print("i", "j", "gcd(i,j)", "#of iterations")

for i=1, 12 do
    for j=1, i do
        -- funkce gcd() vraci dvojici hodnot
        result, iter = gcd(i, j)
        print(i, j, result, iter)
    end
end

-- finito

