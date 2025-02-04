hash = {nome: "Fulano", idade: 88, sexo: "masculino"}
puts hash
puts hash[:nome]
puts hash[:idade]
puts hash[:sexo]
puts "\n"

hash[:altura] = 1.90
puts hash
puts hash.has_value?("Fulano")
puts hash.has_key?(:sexo)
puts hash.keys
puts "\n"
puts hash.values



puts "\n"
hash1 = {um:1, dois:2, tres:3}
hash2 = {tres:3, quatro:4, cinco:5}

puts hash1 == hash2
