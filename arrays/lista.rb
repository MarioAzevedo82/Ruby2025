# lista = [1, 2, 3.9, "nome", [1, 2, 3]]
# puts lista

lista = []

lista.push("Mario", "José")
lista << "Érika" # adicionar elementos
lista.insert(0, "Vitor")
lista.insert(2, "Ciclano")


puts lista
puts "\n"
puts lista[0]
puts "\n"
puts lista[1..3]
puts "\n"
puts lista
puts "\n"
puts lista.length
puts "\n"
lista_organizada = lista.sort # Organizar ordem alfabética
puts "\n"
puts lista_organizada
