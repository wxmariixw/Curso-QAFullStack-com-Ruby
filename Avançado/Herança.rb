# Super classe / Classe pai
class Veiculo
    attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "#{nome} está pronto para inicia o trajeto"
  end

  def buzinar
    puts "Beep! Beep!"
  end
end

#Subclasses / Classes filhas
class Carro < Veiculo
  def dirigir
    puts "#{nome} iniciandoo trajeto"
  end
end

class Moto < Veiculo
      def pilotar
        puts "#{nome} iniciandoo trajeto"
      end
end

civic = Carro.new("Civic", "Honda", "Si")
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new("Lancer", "Mitsubishi", "Evo")
lancer.ligar
civic.buzinar
civic.dirigir

fazer = Moto.new("Fazer", "Yamaha", "250x")
fazer.ligar
fazer.buzinar
fazer.pilotar
