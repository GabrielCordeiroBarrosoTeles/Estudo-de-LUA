lista_de_compras = {}

while true do
    print("Digite um item para adicionar à lista de compras (ou 'sair' para sair):")
    item = io.read()
    if item == "sair" then
        break
    else
        table.insert(lista_de_compras, item)
    end
end

print("Lista de Compras:")
for i = 1, #lista_de_compras do
    print(i .. ". " .. lista_de_compras[i])
end