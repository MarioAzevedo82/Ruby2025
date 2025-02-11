require_relative "aluno"
require_relative "professor"
require_relative "turma"

a1 = Aluno.new("Mario", 43, 123)
a2 = Aluno.new("Paulo", 44, 127)
a3 = Aluno.new("José", 41, 129)

p1 = Professor.new("João", 46, "Ciências")

t1 = Turma.new([a1, a2, a3], p1)
t1.alunos.push(a1, a2, a3)

t1.dados_turma