class Animal
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end

  def comunicar
    puts "Olá, eu sou a classe mãe ou super classe"
  end
end

class Cachorro < Animal
  attr_reader :raça

  def initialize(nome, raça)
    super(nome)
    @raça = raça
  end

  def comunicar
    puts "au au au, classe filha cachorro"
  end
end

class Gato < Animal
  attr_reader :raça

  def initialize(nome, raça)
    super(nome)
    @raça = raça
  end

  def comunicar
    puts "Miau miau! classe filha gato"
  end
end

hulk = Cachorro.new("Hulk", "Pug")
puts hulk.nome
puts hulk.raça
hulk.comunicar
puts "--------"

simba = Gato.new("Simba", "Siamês")
puts simba.nome
puts simba.raça
simba.comunicar
