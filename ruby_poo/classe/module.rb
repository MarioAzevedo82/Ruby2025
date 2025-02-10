# 1 Módulo como Namespace
# Podemos usar um módulo para agrupar métodos e classes relacionadas, 
# evitando conflitos de nomes.

module Payment
  TAX = 0.1

  def self.calculete_total(price) 
    price + (price * TAX)
  end
end

puts Payment.calculete_total(100)

#  Aqui, Payment funciona como um namespace para organizar TAX e calculate_total.

puts "\n"
# 2 Módulo como Mixin (com include)
# Em Ruby, não existe herança múltipla, mas podemos usar módulos para compartilhar 
# métodos entre classes.

module Loggable
  def log(message)
    puts "[LOG] #{message}"
  end
end

class User
  include Loggable
  
  def initialize(name)
    @name = name
    log("User #{@name} created.")
  end
end

u = User.new("Mario")

#O método log do módulo Loggable foi misturado na classe User
puts "\n"

# 3 Mixin com extend
# Se usarmos extend, os métodos do módulo se tornam 
# métodos de classe, em vez de instância.

module Greetins
  def hello
    puts "Hello, World"
  end
end

class Person
  extend Greetins
end

Person.hello