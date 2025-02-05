puts " *** TABUADA ***"
puts "Digite um número: "
n = gets.chomp.to_i

count = 1

10.times do
  puts "#{n} x #{count} = #{n * count}"
  count += 1
end

