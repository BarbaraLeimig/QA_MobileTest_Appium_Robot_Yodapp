*** Settings ***
Documentation                      Esta suite testa o aplicativo Yodapp
Resource                           ../resources/base.resource

*** Test Cases ***
CT03 - Verificar menu hamburguer
    [Documentation]                 Este teste verifica a funcionalidade do menu hamburguer
    Abrir aplicativo
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até o menu hamburguer
    Clicar no item                  Clique em Botões
    Fechar aplicativo