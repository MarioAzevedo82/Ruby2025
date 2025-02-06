def saudacao
  puts "olá, td bem?"
end

saudacao

# Métodos com parâmetros

def saudacao(nome)
  puts "Olá #{nome}!"
end

saudacao("Mario")

def saudacao(nome = "Visitante")
  puts "Olá, #{nome}"
end

saudacao

# Retorno de valores

def soma(a, b)
  a + b
end

puts soma(3, 4)


def dobro(n)
  return n * 2
end

puts dobro(16)

def multiplicacao( a, b, c)
  a * b * c
end

puts multiplicacao(2, 2, 2)

# Parâmetros variáveis

def soma(*numeros)
  numeros.sum
end

puts soma(1, 2, 3, 4, 5, 6, 7, 8, 9)