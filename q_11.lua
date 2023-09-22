math.randomseed(os.time()) -- Inicializa a semente do gerador de números aleatórios
numero_secreto = math.random(1, 100)
tentativas = 0

print("Bem-vindo ao Jogo de Adivinhação!")
print("Tente adivinhar o número secreto entre 1 e 100.")

while true do
    print("Digite um palpite:")
    palpite = tonumber(io.read())
    tentativas = tentativas + 1

    if palpite < numero_secreto then
        print("Tente um número maior.")
    elseif palpite > numero_secreto then
        print("Tente um número menor.")
    else
        print("Parabéns! Você acertou em " .. tentativas .. " tentativas.")
        break
    end
end