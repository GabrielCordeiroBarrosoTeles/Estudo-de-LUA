print("Digite o comprimento da senha desejada:")
comprimento = tonumber(io.read())

function gerar_senha(comprimento)
    local caracteres = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local senha = ""
    for i = 1, comprimento do
        local rand_index = math.random(1, #caracteres)
        senha = senha .. caracteres:sub(rand_index, rand_index)
    end
    return senha
end

math.randomseed(os.time()) -- Inicializa a semente do gerador de números aleatórios
senha_gerada = gerar_senha(comprimento)
print("Senha gerada:", senha_gerada)