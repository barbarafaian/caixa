require_relative '../../app/conta.rb'

Dado("que eu tenho uma conta corrente") do
    @conta = Conta.new
end

Dado("meu saldo é de R$ {int}") do |saldo_inicial|
    @conta.saldo = saldo_inicial
end

Quando("faço um saque no valor de R$ {int}") do |valor_saque|
    @conta.saldo
    @conta.saca(valor_saque)
end

Então("vejo a mensagem {string}") do |mensagem|
    expect(@conta.mensagem).to eql mensagem
end

Então("meu saldo passa a ser de R$ {int}") do |saldo_final|
    expect(@conta.saldo).to eql saldo_final
end

Então("meu saldo permanece com R$ {int}") do |saldo_final|
    expect(@conta.saldo).to eql saldo_final
end