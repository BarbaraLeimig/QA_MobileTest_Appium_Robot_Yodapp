*** Settings ***
Documentation                      Esta suite testa o aplicativo Yodapp
Resource                           ../resources/base.resource
Suite Setup                        Abrir aplicativo
Suite Teardown                     Fechar aplicativo

*** Test Cases ***
CT03 - Verificar menu hamburguer
    [Documentation]                 Este teste verifica a funcionalidade do menu hamburguer
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Clique em Botões