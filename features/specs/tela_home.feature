#language: pt

Funcionalidade: Tela home

    Cenário: Verificar mensagem sem cadastro
    Dado que acesso a tela de Cadastro
    E não tenho nenhum nome na lista 
    Então devo ver a notificação "Nenhum cliente cadastrado"

    Cenário: Verificar cadastro realizado
    Dado que acesso a tela de Cadastro
    E tenho nenhum nome na lista 
    Então devo ver a o cadastro realizado 