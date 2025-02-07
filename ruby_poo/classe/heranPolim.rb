# 1. Herança
# Herança permite que uma classe herde métodos e 
# atributos de outra classe. Isso evita repetição de 
# código e facilita a organização.

class Animal
  def dormir
    puts "ZzzZ ZzzZ"
  end
end

class Gato < Animal
  def miar
    puts "Miau"
  end
end

cat = Gato.new

cat.dormir
cat.miar

puts "\n"
# 2. Sobrescrita de Métodos (Override)
# Se uma classe filha precisa de um comportamento diferente, 
# pode sobrescrever um método da classe pai.

class Animal
  def fazer_som
    puts "som genérico"
  end
end

class Cachorro < Animal
  def fazer_som
    puts "Au Au"
  end
end

dog = Cachorro.new

dog.fazer_som

puts "\n"
# 3. super – Chamando Métodos da Superclasse
# O super permite chamar um método da classe pai dentro da classe filha.

class Animal
  def fazer_som
    puts "Som genérico!"
  end
end

class Cachorro < Animal
  def fazer_som
    super
    puts "au au!"
  end
end

dog = Cachorro.new

dog.fazer_som

puts "\n"

# 4. Polimorfismo
# Polimorfismo significa que diferentes classes podem ter 
# métodos com o mesmo nome, mas com comportamentos diferentes.

class Ave 
  def voar
    puts "Voando ..."
  end
end

class Pinguim < Ave
  def voar
    puts "Pinguins não voam"
  end
end

passaro = Ave.new
pinguim = Pinguim.new

passaro.voar
pinguim.voar


