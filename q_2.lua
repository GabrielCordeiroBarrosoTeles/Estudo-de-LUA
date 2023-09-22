print("Digite o primeiro número:")
numero1 = tonumber(io.read())
print("Digite o segundo número:")
numero2 = tonumber(io.read())
print("Escolha a operação (+, -, *, /):")
operacao = io.read()

if operacao == "+" then
    resultado = numero1 + numero2
elseif operacao == "-" then
    resultado = numero1 - numero2
elseif operacao == "*" then
    resultado = numero1 * numero2
elseif operacao == "/" then
    resultado = numero1 / numero2
else
    resultado = "Operação inválida"
end

print("Resultado:", resultado)