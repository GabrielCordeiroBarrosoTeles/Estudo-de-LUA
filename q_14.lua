lista = {}

while true do
    print("Digite um número (ou 'sair' para sair):")
    entrada = io.read()
    if entrada == "sair" then
        break
    else
        numero = tonumber(entrada)
        if numero then
            table.insert(lista, numero)
        else
            print("Entrada inválida. Tente novamente.")
        end
    end
end

table.sort(lista)

print("Lista ordenada:")
for i = 1, #lista do
    print(lista[i])
end