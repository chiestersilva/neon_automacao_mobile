#language: pt

Funcionalidade: Cadastro

    Cenário: Cadastro de cliente
        Dado que acesso a tela de Cadastro
        Quando clico no menu mais
        E clico no cadastrar novo
        E insiro os dados para Cadastro
            |nome|Chiester|
        E clico no Salvar
        Então devo ver a notificação: "Cadastro efetuado com sucesso"


    Cenário: Cadastro de cliente sem o nome
        Dado que acesso a tela de Cadastro
        Quando clico no menu mais
        E clico no cadastrar novo
        E não insiro o nome para Cadastro
        E clico no salvar
        Então devo ver a notificação: "Insira o nome"