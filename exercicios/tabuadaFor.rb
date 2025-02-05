

puts "---TABUADA---"

puts "Digite um número: "
n = gets.chomp.to_i

puts "Você digitou #{n}"

for c in 1..10
  puts "#{n} x #{c} = #{n * c}"
end

# Incremento c += 1 dentro do for

#   No for, a variável de controle (c) já é incrementada automaticamente