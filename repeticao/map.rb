nomes = ["Mario", "André", "Hilmar", "Marcelo"]

nomes_completos = nomes.map do |nomes_completo|
  nomes_completo + " Pinheiro"
end

puts nomes
puts "\n"
puts nomes_completos

puts "*********"

nomes.map! do |nomes_completo|
  nomes_completo + " Silva"
end
puts nomes

