print("Digite um número inteiro positivo:")
numero = tonumber(io.read())
fatorial = 1

if numero < 0 then
    print("Número negativo! Fatorial não definido.")
elseif numero == 0 then
    print("O fatorial de 0 é 1.")
else
    for i = 1, numero do
        fatorial = fatorial * i
    end
    print("O fatorial de " .. numero .. " é " .. fatorial)
end