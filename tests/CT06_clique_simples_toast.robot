*** Settings ***
Documentation                        Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource

*** Test Cases ***
CT06 - Verificar aparecimento do toast após clicar no botão "CLIQUE SIMPLES"
    [Documentation]                Este teste verifica a funcionalidade do toast após clicar no botão "CLIQUE SIMPLES"
    Abrir aplicativo
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até o menu hamburguer
    Clicar no item                  Clique em Botões
    Deve exibir o título            Clique em Botões
    Clicar no botão                 Clique simples
    Deve exibir o título            Botão clique simples
    Clicar no botão                 CLIQUE SIMPLES
    Deve exibir o toast             Isso é um clique simples             
    Fechar aplicativo