print("Digite uma string:")
string = io.read()

function contar_vogais(str)
    str = str:lower() -- Converter para minúsculas
    local vogais = 0
    for i = 1, #str do
        local char = str:sub(i, i)
        if char == "a" or char == "e" or char == "i" or char == "o" or char == "u" then
            vogais = vogais + 1
        end
    end
    return vogais
end

vogais_contadas = contar_vogais(string)
print("Número de vogais na string:", vogais_contadas)