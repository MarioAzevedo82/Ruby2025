nome = "Mario"

if nome.eql?("Mario") # if nome == "Mario"
  puts "Futuro DEV"
else
  puts "visitante"
end

puts nome.eql?("Mario") ? "Futuro DEV" : "visitante"
resultado = nome.eql?("Mario") ? "Futuro DEV - resultado" : "visitante - resultado" 
puts resultado

n = 5
soma = n.eql?(5) ? n + 10 : n - 3
puts soma