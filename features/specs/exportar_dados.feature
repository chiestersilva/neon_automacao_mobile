#language: pt

Funcionalidade: Exportar dados

    Cenário: Exportar dados
    Dado que acesso a tela de Cadastro
    E clico no menu mais
    E clico no Exportar Dados
    E clico no Exportar Excel
    Então devo ver a notoficação "O arquivo foi salvo na sua pasta padrão de documento com o nome 'CAD_DD_MM_AAAA.xls'"

    Cenário: Gerar Backup
    Dado que acesso a tela de Cadastro
    E clico no menu mais
    E clico no Exportar Dados
    E clico no Backup Completo
    Então devo ver a notoficação "Backup gerado com sucesso na pasta principal de armazenamento, o nome do arquivo é: BKP_CADdt.zip"

    Cenário: Gerar Backup
    Dado que acesso a tela de Cadastro
    E clico no menu mais
    E clico no Exportar Dados
    E clico no Restaura Backup
    Então devo ver a notoficação "'0' Cadastros foram recuperados."