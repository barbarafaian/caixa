#language:pt

Funcionalidade: Saque no caixa eletrônico
    Sendo um cliente correntista do banco
    Posso sacar dinheiro em caixas eletrônicos
    Para poder comprar em estabelecimentos que não aceitam cartões

    Contexto: Conta
        Dado que eu tenho uma conta corrente

    @smoke
    Cenario: Saque no caixa eletrônico

        E meu saldo é de R$ 100
        Quando faço um saque no valor de R$ 50
        Então vejo a mensagem "Saque realizado com sucesso. Aguarde a contagem das notas"
        E meu saldo passa a ser de R$ 50

    Cenario: Saque no caixa eletrônico valor limite

        E meu saldo é de R$ 1000
        Quando faço um saque no valor de R$ 701
        Então vejo a mensagem "Valor máximo para saque é de R$ 700"
        E meu saldo permanece com R$ 1000

    Cenario: Saque com valor acima do meu saldo

        E meu saldo é de R$ 500
        Quando faço um saque no valor de R$ 700
        Então vejo a mensagem "Saldo insuficiente"
        E meu saldo permanece com R$ 500