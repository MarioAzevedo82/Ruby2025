# SOBRECARGA DA FUNÇÃO (Eram 2 parâmetros e quer utilizar mais)

class Calculadora
  def somar(x, y)
    return x + y
  end
end

c1 = Calculadora.new
resultado = c1.somar(2, 6)
puts resultado

###############
puts "\n"

class Calculator
  def somar(*args)
    lista = []
    lista.push(*args)
    lista.inject(:+)
  end
end

c2 = Calculator.new
resultado = c2.somar(3, 4, 5, 6)
puts resultado

#########
puts "\n"

class Aluno
  def notas(*args)
    notas = []
    notas.push(*args)
    notas
  end
end

Pedro = Aluno.new
result = Pedro.notas(3.5, 4.6, 8.9, 9.7)
puts result