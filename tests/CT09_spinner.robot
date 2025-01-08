*** Settings ***
Documentation                       Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource
Test Setup                         Abrir aplicativo
Test Teardown                      Fechar aplicativo

*** Test Cases ***
CT09 - Validar escolha do nível Padawan
    [Documentation]                 Este teste verifica a funcionalidade do spinner
    [Tags]                          spinner
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Formulários   
    Vá até o item                   Cadastro    Crie sua conta.
    Clicar no spinner
    Selecionar o level              Padawan

CT09.1 - Validar escolha do nível Jedi
    [Documentation]                 Este teste verifica a funcionalidade do spinner
    [Tags]                          spinner
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Formulários   
    Vá até o item                   Cadastro    Crie sua conta.
    Clicar no spinner
    Selecionar o level              Jedi

CT09.2 - Validar escolha do nível Sith
    [Documentation]                 Este teste verifica a funcionalidade do spinner
    [Tags]                          spinner
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Formulários   
    Vá até o item                   Cadastro    Crie sua conta.
    Clicar no spinner
    Selecionar o level              Sith

CT09.3 - Validar escolha do nível Outros
    [Documentation]                 Este teste verifica a funcionalidade do spinner
    [Tags]                          spinner
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Formulários   
    Vá até o item                   Cadastro    Crie sua conta.
    Clicar no spinner
    Selecionar o level              Outros
