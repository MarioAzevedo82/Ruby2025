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


puts"\n"
## EXERCÍCIOS ##

# 1 Criando uma classe e herdando atributos
# Crie uma classe Veiculo com um atributo marca. 
# Depois, crie uma classe Carro que herde de Veiculo. 
# O objeto Carro deve conseguir exibir a marca.

# 💡 Dica: Use attr_accessor para definir atributos.

class Veiculo
  attr_accessor :marca
  
  def initialize(marca)
    @marca = marca
  end
end

class Carro < Veiculo
  attr_accessor :modelo

  def initialize(marca, modelo)
    super(marca)
    @modelo = modelo
  end
end

car = Carro.new("Honda", "Civic")
puts car.marca
puts car.modelo

puts "\n"

# 2 Sobrescrevendo métodos
# Crie uma classe Pessoa com um método falar que exibe "Olá!". 
# Depois, crie uma classe Professor que herda de Pessoa, mas 
# sobrescreve falar para exibir "Bom dia, turma!".

# 💡 Dica: Use def nome_do_metodo na classe filha para sobrescrever.

class Pessoa
  def falar
    puts "Olá!"
  end
end

class Professor < Pessoa
  def falar
    puts "Bom dia, turma!"
  end
end

p1 = Professor.new
p1.falar

puts "\n"

# 3 Usando super
# Modifique o exercício anterior para que Professor ainda diga "Olá!", 
# mas depois acrescente "Bom dia, turma!".

# 💡 Dica: Use super dentro do método sobrescrito.

class Pessoa
  def falar
    puts "Olá"
  end
end

class Professor < Pessoa
  def falar
    super
    puts "Bom dia, turma!"
  end
end

p1 = Professor.new
p1.falar

puts "\n"

# 4 Polimorfismo: Criando animais com sons diferentes
# Crie uma classe Animal com um método fazer_som. Depois, crie 
# as classes Gato e Cachorro, herdando de Animal, mas cada uma 
# implementando fazer_som de maneira diferente:

# Gato deve dizer "Miau!".
# Cachorro deve dizer "Au au!".
# Crie objetos dessas classes e chame fazer_som.


class Animal
  def fazer_som
    puts "Som geral"
  end
end

class Gato < Animal
  def fazer_som
    puts "#{self.class.name} Miau!"
  end
end

class Cachorro < Animal
  def fazer_som
    puts "#{self.class.name} Au Au!"
  end
end

g1 = Gato.new
c1 = Cachorro.new

g1.fazer_som
c1.fazer_som

animais = [Gato.new, Cachorro.new, Animal.new]

animais.each do |animal|
  animal.fazer_som
end

puts "\n"

# 5  Criando um sistema de pagamentos
# Crie uma classe Pagamento com um método processar. Depois, crie 
# duas classes PagamentoCredito e PagamentoDebito, ambas herdando de Pagamento.

# PagamentoCredito deve exibir "Pagamento com crédito realizado!".
# PagamentoDebito deve exibir "Pagamento com débito realizado!".
# Crie uma lista de pagamentos e execute processar para cada um.

# 💡 Dica: Use um array de objetos e each para iterar.

class Pagamento
  def processar(tipo, conta)
    puts "Pagamento de #{conta} com #{tipo} realizado!"
  end
end

class PagamentoCredito < Pagamento
  def processar(conta)
    super("crédito", conta)
  end
end

class PagamentoDebito < Pagamento
  def processar(conta)
  super("débito", conta)
  end
end

credito = PagamentoCredito.new
debito = PagamentoDebito.new

lista = ["Mercado","Luz", "Passagens aéreas", "Água", "Combustível","Internet"]

lista.each_with_index do |conta, index|
  if index.even?
    credito.processar(conta)
  else
    debito.processar(conta)
  end
end