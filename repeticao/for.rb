nomes = ["Mario", "André", "Hilmar", "Marcelo"]

dict = {nome: "Mario", idade: 43, altura: 1.84}

for nome in nomes do
  puts nome
end

for keys, values in dict do
  puts "#{keys}: #{values}"
end

