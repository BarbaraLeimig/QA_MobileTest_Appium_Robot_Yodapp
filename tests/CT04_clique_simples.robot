*** Settings ***
Documentation                       Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource
Suite Setup                         Abrir aplicativo
Suite Teardown                      Fechar aplicativo

*** Test Cases ***
CT04 - Verificar botao "Clique simples"
    [Documentation]                 Este teste verifica a funcionalidade do botão "Clique simples" da tela de tipos de clique
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Clique em Botões
    Vá até o item                   Clique simples    Botão clique simples
    Clicar no botão                 CLIQUE SIMPLES
    Deve exibir o título            Isso é um clique simples