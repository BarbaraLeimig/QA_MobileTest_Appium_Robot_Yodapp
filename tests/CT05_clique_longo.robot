*** Settings ***
Documentation                       Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource
Suite Setup                         Abrir aplicativo
Suite Teardown                      Fechar aplicativo

*** Test Cases ***
CT05 - Verificar botao "Clique longo"
    [Documentation]                 Este teste verifica a funcionalidade do botão "Clique longo" da tela de tipos de clique
    [Tags]                          long
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Clique em Botões
    Vá até o item                   Clique longo    Botão clique longo
    Fazer um clique longo
    Deve exibir o título            Isso é um clique longo