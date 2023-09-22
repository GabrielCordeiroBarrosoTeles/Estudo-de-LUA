print("Digite uma palavra:")
palavra = io.read()

function eh_palindromo(str)
    str = str:lower() -- Converter para minúsculas
    str = str:gsub("%s", "") -- Remover espaços em branco
    local reverse = string.reverse(str)
    return str == reverse
end

if eh_palindromo(palavra) then
    print(palavra .. " é um palíndromo.")
else
    print(palavra .. " não é um palíndromo.")
end