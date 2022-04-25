Estória: Saque no Caixa Eletrônico
    Sendo um cliente que é correntista do Ninja Bank
    Posso sacar dinheiro
    Para que eu consiga comprar em lugares que não aceitam débito ou crédito

Cenário: Saque em conta corrente
    Dado que eu tenho R$ 1000 em minha conta corrente
    Quando faço um saque de R$ 200
    Então meu saldo final deve ser R$800

Cenário: Deu ruim não tenho saldo
    Dado que eu tenho R$ 0 em minha conta corrente
    Quando faço um saque de R$ 100
    Então vejo a mensagem "Saldo insuficiente para saque :("
    E meu saldo final deve ser R$ 0

Cenário: Tenho saldo mas não o suficiente
    Dado que eu tenho R$ 500 em minha conta corrente
    Quando faço um saque d R$ 501
    Então vejo a mensagem "Saldo insficiente para saque :("

Cenário: Limite por saque :(
    Dado que eu tenho R$ 1000 em minha conta corrente
    Quando faço um saque de R$ 701
    Então vejo a mensagem "Limite máximo por saque é de R$ 700"
    E meu saldo final deve ser de 1000