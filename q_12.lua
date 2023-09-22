print("Digite o seu peso (em kg):")
peso = tonumber(io.read())
print("Digite a sua altura (em metros):")
altura = tonumber(io.read())

imc = peso / (altura * altura)
print("Seu IMC é:", imc)

if imc < 18.5 then
    print("Você está abaixo do peso.")
elseif imc >= 18.5 and imc < 24.9 then
    print("Seu peso está saudável.")
elseif imc >= 25 and imc < 29.9 then
    print("Você está com sobrepeso.")
else
    print("Você está obeso.")
end