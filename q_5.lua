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