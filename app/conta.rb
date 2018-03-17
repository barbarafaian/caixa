class Conta
    attr_accessor :nome, :saldo, :mensagem

    def saca(valor)
        if valor > saldo
            self.mensagem = "Saldo insuficiente"
        elsif valor > 700
            self.mensagem = "Valor máximo para saque é de R$ 700"
        else
            self.saldo = self.saldo - valor
            self.mensagem = "Saque realizado com sucesso. Aguarde a contagem das notas"
        end
    end
end