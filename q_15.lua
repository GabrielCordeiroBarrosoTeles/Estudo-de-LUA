print("Digite o principal (valor inicial do investimento):")
principal = tonumber(io.read())
print("Digite a taxa de juros (em decimal):")
taxa_de_juros = tonumber(io.read())
print("Digite o número de anos:")
anos = tonumber(io.read())

montante = principal * math.pow(1 + taxa_de_juros, anos)
print("O montante após", anos, "anos é:", montante)