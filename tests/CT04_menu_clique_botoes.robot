*** Settings ***
Documentation                       Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource

*** Test Cases ***
CT04 - Verificar botao do menu "Clique em Botões"
    [Documentation]                 Este teste verifica a funcionalidade do botão "Clique em Botões" do menu hamburguer
    Abrir aplicativo
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até o menu hamburguer
    Clicar no item                  Clique em Botões
    Deve exibir o título            Clique em Botões
    Fechar aplicativo