class Aluno
  attr_accessor :nome , :idade
  @last_nome;
  # attr_writer :nome , :idade /// Esse método só permite escrever, não dá pra ler
  # @nome
  # @idade

  # def mudar_nome(nome)
  #   @nome = nome
  # end

  # def mostra_nome
  #   @nome  
  # end
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def mostrar_dados
    puts "Nome: #{self.nome} #{@last_nome}, Idade: #{@idade}"
  end

  def add_last_name(last_nome)
    @last_nome = last_nome
  end
end

a1 = Aluno.new("Mario", 43)
a1.add_last_name("Azevedo")
# a1.mudar_nome("Mario")
# #a1.idade = 43

# puts a1.mostra_nome

# a1.nome = "Mario"
# a1.idade = 43

puts a1.nome
puts a1.idade

a1.mostrar_dados # reerente ao parâmetro def mostrar_dados