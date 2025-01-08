*** Settings ***
Documentation                       Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource
Suite Setup                         Abrir aplicativo
Suite Teardown                      Fechar aplicativo

*** Test Cases ***
CT05 - Verificar marcação do checkbox em techs que usam appium
    [Documentation]                 Este teste verifica a funcionalidade do botão "Clique longo" da tela de tipos de clique
    [Tags]                          long
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Check e Radio
    Vá até o item                   Botões de radio    Escolha sua linguagem preferida
    Clicar no elemento              Javascript