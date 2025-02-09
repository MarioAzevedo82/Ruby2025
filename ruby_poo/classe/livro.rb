class Livro
  attr_reader :nome, :ano,  :preco

  def initialize(nome, ano, preco)
    @nome = nome
    @ano = ano
    @preco = dar_desconto(preco)
  end

  def mostrar_dados
    puts "Livro: #{@nome}, Ano Lançamento: #{@ano}, Preço: R$#{@preco}"
  end
  
  private
  def dar_desconto(preco)
    if @ano < 2000
      preco * 0.9
    else
      preco
    end
  end
end

l1 = Livro.new("O Senhor dos Anéis", 1999, 50.00)

#l1.dar_desconto
l1.mostrar_dados

puts "\n"

class Book
  attr_reader :name, :year, :price

  def initialize(name, year, price)
    @name = name
    @year = year
    @price = discount(price)
  end

  def discount(price)
    if @year < 2002
      price * 0.8
    else
      price
    end
  end
  
  def show_data
    puts "Book: #{@name}, Year: #{@year}, Price: US$#{@price}"
  end
end

b1 = Book.new("Lord of Rings", 2003, 50)
b1.show_data

puts "\n"

class Car
  attr_reader :model, :year, :price

  def initialize(model, year, price)
    @model = model
    @year = year
    @price = apply_discount(price)
  end

  def show_details
    puts "Model: #{@model}, Year: #{@year}, Price: #{@price}"
  end

  def apply_discount(price)
    if @year < 2012
      price * 0.85
    else
      price
    end
  end
end

c1 = Car.new("Honda", 2011, 5000.00)
c1.show_details

