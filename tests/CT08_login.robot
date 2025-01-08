*** Settings ***
Documentation                       Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource
Test Setup                         Abrir aplicativo
Test Teardown                      Fechar aplicativo

*** Test Cases ***
CT08 - Validar login com sucesso
    [Documentation]                 Este teste verifica a funcionalidade do login
    [Tags]                          login
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Formulários   
    Vá até o item                   Login    Olá Padawan, vamos testar o login?
    Inserir email                   yoda@qax.com
    Inserir senha                   jedi

CT08.1 - Validar login com senha incorreta
    [Documentation]                 Este teste verifica a funcionalidade do login
    [Tags]                          login
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Formulários   
    Vá até o item                   Login    Olá Padawan, vamos testar o login?
    Inserir email                   yoda@qax.com
    Inserir senha                   sith