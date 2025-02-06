nomes = ["Mario", "André", "Hilmar", "Marcelo"]

dict = {nome: "Mario", idade: 43, altura: 1.84}

nomes.each do |nome| 
  puts nome
end

puts "\n"

dict.each do |chave, valor|
  puts "#{chave}: #{valor}"
end

puts "\n"

# OUTROS EXEMPLOS
# Com arrays
numeros = [1, 2, 3, 4, 5]

numeros.each do |num|
  puts "Este é o número #{num}"
end

puts "\n"
# Com hashes

pessoas = { "Alice" => 25, "Bob" => 30, "Carol" => 22 }

pessoas.each do |chave, valor|
  puts "#{chave}: #{valor}"
end

# 📌 Resumo
# ✅ each é usado para percorrer arrays e hashes.
# ✅ Ele não altera a coleção original.
# ✅ each não retorna um novo array, apenas a coleção original.
# ✅ Para transformar valores, prefira map.

puts "\n"
#     EXERCÍCIOS
# 1 Percorrendo um Array


# Dado o array abaixo, use each para imprimir cada nome na tela:


nomes = ["Ana", "Bruno", "Carlos", "Diana", "Eduardo"]

nomes.each do |lista|
  puts lista
end

puts "\n"
# 2 Quadrado dos números
# Dado um array de números, use each para imprimir o quadrado de cada número:

num1 = [11, 22, 33, 44]

num1.each do |quadrado|
  puts "O quadrado de #{quadrado} é : #{quadrado * quadrado}"
end

puts "\n"

# 3 Somando valores de um array
# Usando each, percorra a lista de números e calcule a soma total dos elementos:

valores = [5, 10, 15, 20]

soma = 0
valores.each do |valor|
  soma += valor 
end

puts "A soma total é: #{soma}"

puts "\n"

# 4 Iterando sobre um Hash
# Dado o seguinte hash de produtos e preços, use each para imprimir:

produtos = { "Arroz" => 10, "Feijão" => 7, "Macarrão" => 5, "Leite" => 4 }

produtos.each do |keys, values|
  puts "O produto #{keys} custa #{values} reais"
end

puts "\n"

# 5 Contando vogais
# Dada a string abaixo, use each para contar quantas vogais (a, e, i, o, u) ela contém:
frase = "Programar em Ruby é divertido!"
vogais = "aeiouAEIOU"
contador = 0

frase.each_char do |char|
  contador += 1 if vogais.include?(char)
end

puts "A frase tem #{contador} vogais."