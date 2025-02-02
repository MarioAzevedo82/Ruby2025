puts "Digite o mês do ano:"

mes = gets.chomp

case mes
when "janeiro", "março", "maio", "julho", "agosto", "outubro", "dezembro"
  puts "#{mes} tem 31 dias"
when "abril", "junho", "setembro", "novembro"
  puts "#{mes} tem 30 dias"
when "fevereiro"
  puts "#{mes} tem 28 ou 29 dias"
else
  puts "Não sei qnts dias tem esse mês"
end
