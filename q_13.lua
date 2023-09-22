function eh_primo(numero)
    if numero <= 1 then
        return false
    elseif numero <= 3 then
        return true
    elseif numero % 2 == 0 or numero % 3 == 0 then
        return false
    end

    local i = 5
    while i * i <= numero do
        if numero % i == 0 or numero % (i + 2) == 0 then
            return false
        end
        i = i + 6
    end

    return true
end

print("Quantos números primos você deseja gerar?")
n = tonumber(io.read())

numeros_primos = {}
numero = 2
while #numeros_primos < n do
    if eh_primo(numero) then
        table.insert(numeros_primos, numero)
    end
    numero = numero + 1
end

print("Números Primos:")
for i = 1, n do
    print(numeros_primos[i])
end