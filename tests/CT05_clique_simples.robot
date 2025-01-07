*** Settings ***
Documentation                       Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource

*** Test Cases ***
CT05 - Verificar botao "Clique simples"
    [Documentation]                 Este teste verifica a funcionalidade do botão "Clique simples" da tela de tipos de clique
    Abrir aplicativo
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até o menu hamburguer
    Clicar no item                  Clique em Botões
    Deve exibir o título            Clique em Botões
    Clicar no botão                 Botão Simples
    Deve exibir o título            Botão clique simples
    Fechar aplicativo