# Estudo-de-LUA

O básico da linguagem de programação Lua. Lua é uma linguagem de script de alto nível projetada para ser leve, eficiente e embutida em outros programas. Ela é frequentemente usada em jogos, aplicativos de desktop, automação e em sistemas embarcados. Vamos começar com o básico:

**1. Sintaxe:**
Lua tem uma sintaxe simples e limpa. Aqui estão alguns conceitos-chave:

- Comentários começam com "--" e são ignorados pelo interpretador.
- Variáveis são criadas sem declaração de tipo, por exemplo: `x = 10`.
- Lua é case-sensitive, ou seja, diferencia maiúsculas de minúsculas.
- Blocos de código são definidos usando "do ... end" ou com "then ... end" em estruturas condicionais.

**2. Tipos de Dados:**
Lua tem tipos de dados básicos como números, strings, tabelas, booleanos e funções. Exemplos:

```lua
numero = 42
texto = "Olá, Lua!"
tabela = {1, 2, 3}
verdadeiro = true
```

**3. Estruturas Condicionais:**
Você pode usar condicionais para controlar o fluxo do seu programa:

```lua
if verdadeiro then
    print("Isso será impresso")
else
    print("Isso não será impresso")
end
```

**4. Loops:**
Lua suporta loops "for" e "while":

```lua
for i = 1, 5 do
    print(i)
end

while verdadeiro do
    print("Este loop nunca termina, a menos que você use 'break'")
    break
end
```

**5. Funções:**
Você pode definir funções em Lua:

```lua
function saudacao(nome)
    print("Olá, " .. nome)
end

saudacao("João")
```

**6. Tabelas:**
As tabelas são estruturas de dados flexíveis em Lua:

```lua
pessoa = {
    nome = "Maria",
    idade = 30,
    cidade = "São Paulo"
}
print(pessoa.nome) -- Acessando campos da tabela
```

**7. Manipulação de Strings:**
Lua oferece suporte a operações de strings:

```lua
s1 = "Hello"
s2 = "World"
concatenado = s1 .. " " .. s2 -- Concatenação de strings
```

**8. Bibliotecas:**
Lua possui uma biblioteca padrão rica que inclui funções para manipulação de arquivos, expressões regulares, matemática e muito mais. Você pode usá-las em seus programas.

15 atividades com enunciados e explicações comentadas no código para ajudá-lo a aprender Lua:

**1. Soma de dois números:**
   - Enunciado: Crie um programa que solicite ao usuário dois números e imprima a soma deles.
   - Código:

```lua
print("Digite o primeiro número:")
numero1 = tonumber(io.read())
print("Digite o segundo número:")
numero2 = tonumber(io.read())
soma = numero1 + numero2
print("A soma é:", soma)
```

Este código solicita dois números ao usuário, converte-os para números e, em seguida, calcula a soma e a imprime.

**2. Calculadora Simples:**
   - Enunciado: Faça um programa que simule uma calculadora básica. O usuário deve inserir dois números e uma operação (adição, subtração, multiplicação ou divisão).
   - Código:

```lua
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
```

Este código permite ao usuário escolher uma operação e executa a operação selecionada nos dois números fornecidos.

**3. Verificador de Número Par ou Ímpar:**
   - Enunciado: Escreva um programa que determine se um número é par ou ímpar.
   - Código:

```lua
print("Digite um número:")
numero = tonumber(io.read())

if numero % 2 == 0 then
    print(numero .. " é par.")
else
    print(numero .. " é ímpar.")
end
```

Este código verifica se o número é divisível por 2 e, se for, o considera par; caso contrário, o considera ímpar.

**4. Fatorial de um Número:**
   - Enunciado: Crie um programa que calcule o fatorial de um número fornecido pelo usuário.
   - Código:

```lua
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
```

Este código calcula o fatorial de um número não negativo usando um loop "for".

**5. Gerador de Sequência Fibonacci:**
   - Enunciado: Crie um programa que gere os primeiros N números da sequência de Fibonacci, onde N é fornecido pelo usuário.
   - Código:

```lua
print("Quantos números da sequência Fibonacci você deseja gerar?")
n = tonumber(io.read())

a, b = 0, 1
fibonacci = {}

for i = 1, n do
    table.insert(fibonacci, a)
    a, b = b, a + b
end

print("Sequência Fibonacci:")
for i = 1, n do
    print(fibonacci[i])
end
```

Este código gera os primeiros N números da sequência de Fibonacci usando uma lista (tabela) para armazenar os resultados.

**6. Verificador de Palíndromos:**
   - Enunciado: Escreva um programa que verifique se uma palavra é um palíndromo (lê-se da mesma forma de trás para frente).
   - Código:

```lua
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
```

Este código verifica se a palavra é a mesma quando lida de trás para frente, ignorando maiúsculas e espaços em branco.

**7. Contagem de Vogais em uma String:**
   - Enunciado: Crie um programa que conte o número de vogais em uma string fornecida pelo usuário.
   - Código:

```lua
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
```

Este código conta o número de vogais na string, convertendo a string para minúsculas e verificando cada caractere.

**8. Gerador de Senhas Aleatórias:**
   - Enunciado: Faça um programa que gere uma senha aleatória com um comprimento especificado pelo usuário.
   - Código:

```lua
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
```

Este código gera uma senha aleatória com caracteres alfabéticos maiúsculos e minúsculos, juntamente com números.

**9. Conversor de Temperatura:**
   - Enunciado: Crie um programa que converta uma temperatura de graus Celsius para graus Fahrenheit.
   - Código:

```lua
print("Digite a temperatura em graus

 Celsius:")
celsius = tonumber(io.read())
fahrenheit = (celsius * 9 / 5) + 32
print("A temperatura em graus Fahrenheit é:", fahrenheit)
```

Este código faz a conversão direta de graus Celsius para graus Fahrenheit usando a fórmula apropriada.

**10. Lista de Compras:**
   - Enunciado: Crie um programa que permita ao usuário adicionar itens a uma lista de compras e, em seguida, exiba a lista completa.
   - Código:

```lua
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
```

Este código permite ao usuário adicionar itens à lista de compras e, em seguida, exibe a lista completa quando o usuário escolhe sair.

**11. Jogo de Adivinhação:**
   - Enunciado: Escreva um jogo de adivinhação em que o computador escolhe um número aleatório e o jogador tenta adivinhar qual é.
   - Código:

```lua
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
```

Este código implementa um jogo de adivinhação em que o jogador tenta adivinhar um número secreto gerado aleatoriamente.

**12. Calculadora de IMC (Índice de Massa Corporal):**
   - Enunciado: Crie um programa que calcule o IMC com base no peso e altura fornecidos pelo usuário.
   - Código:

```lua
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
```

Este código calcula o IMC com base no peso e altura e fornece uma classificação com base no resultado.

**13. Gerador de Números Primos:**
   - Enunciado: Crie um programa que gere os primeiros N números primos, onde N é fornecido pelo usuário.
   - Código:

```lua
function eh_primo(numero)
    if numero <= 1 then
        return false
    elseif numero <= 3 then
        return true
    elseif numero % 2 == 0 or numero % 3 == 0 then
        return false
    end

    local i = 5
    while i * i <= numero do
        if numero % i == 0 or numero % (i + 2) == 0 then
            return false
        end
        i = i + 6
    end

    return true
end

print("Quantos números primos você deseja gerar?")
n = tonumber(io.read())

numeros_primos = {}
numero = 2
while #numeros_primos < n do
    if eh_primo(numero) then
        table.insert(numeros_primos, numero)
    end
    numero = numero + 1
end

print("Números Primos:")
for i = 1, n do
    print(numeros_primos[i])
end
```

Este código gera os primeiros N números primos usando uma função que verifica se um número é primo.

**14. Ordenação de uma Lista:**
   - Enunciado: Crie um programa que permita ao usuário inserir uma lista de números e, em seguida, ordene e imprima a lista em ordem crescente.
   - Código:

```lua
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
```

Este código permite ao usuário inserir uma lista de números e, em seguida, ordena e imprime a lista em ordem crescente.

**15. Calculadora de Juros Compostos:**
   - Enunciado: Faça um programa que calcule o montante de um investimento com juros compostos após um número especificado de anos.
   - Código:

```lua
print("Digite o principal (valor inicial do investimento):")
principal = tonumber(io.read())
print("Digite a taxa de juros (em decimal):")
taxa_de_juros = tonumber(io.read())
print("Digite o número de anos:")
anos = tonumber(io.read())

montante = principal * math.pow(1 + taxa_de_juros, anos)
print("O montante após", anos, "anos é:", montante)
```

Este código calcula o montante de um investimento com juros compostos usando a fórmula apropriada.

