require_relative "../../NinjaBank/app/bank.rb"

describe ContaCorrente do
  describe "Saque" do
    context "Quando o valor é positivo" do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saque(200.00)
      end

      it "Então atualiza saldo" do
        expect(@cc.saldo).to eql 800.00
      end
    end

    context "Quando o saldo é 0" do
      before(:all) do
        @cc = ContaCorrente.new(0.00)
        @cc.saque(100.00)
      end
      it "então exibe mensagem" do
        expect(@cc.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "E o saldo permanece zerado" do
        expect(@cc.saldo).to eql 0.00
      end
    end

    context "Quando o saldo é insuficiente" do
      before(:all) do
        @cc = ContaCorrente.new(100.00)
        @cc.saque(101.00)
      end
      it "então exibe mensagem" do
        expect(@cc.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "E o saldo permanece" do
        expect(@cc.saldo).to eql 100.00
      end
    end

    context "Quando o valor de saque é maior que o limite por transação" do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saque(701.00)
      end
      it "vejo mensagem" do
        expect(@cc.mensagem).to eql "Limite máximo por saque é R$ 700"
      end
      it "Meu saldo continua igual" do
        expect(@cc.saldo).to eql 1000.00
      end
    end
  end
end
