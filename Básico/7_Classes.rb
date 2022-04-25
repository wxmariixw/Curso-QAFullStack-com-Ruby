# Ruby pe uma linguagem considerada puramente orientada a objeto
# Tudo é objeto

# Classe atributos e métodos
# Características e ações

# carro (nome, marca, modelo, cor, quantidade de portas, etc...)
# ligar,businar, parar, etc...

#Classe
class Carro
  #Atributo
  attr_accessor :nome
  #Função
  def ligar
    puts "O carro está pronto para iniciar o trajeto"
  end
end

civic = Carro.new
civic.nome = "Civic"

puts civic.nome
civic.ligar
