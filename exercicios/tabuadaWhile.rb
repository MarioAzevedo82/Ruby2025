puts "--- TABUADA ---"

puts "Digite um número: "

n = gets.chomp.to_i

c = 1

while c <= 10 do 
  puts " #{n} x #{c} = #{n * c}"
  c += 1
end