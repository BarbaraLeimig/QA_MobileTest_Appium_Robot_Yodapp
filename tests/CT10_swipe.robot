** Settings ***
Documentation                       Esta suite testa o aplicativo Yodapp
Resource                            ../resources/base.resource
Test Setup                         Abrir aplicativo
Test Teardown                      Fechar aplicativo

*** Test Cases ***
CT10 - Validar remoção do Darth Vader
    Clicar no botão                 QAX
    Deve exibir o título            Clique em Botões
    Navegar até                     Star Wars
    Vá até o item                   Lista    Darth Vader
    Fazer swipe                     @darthvader
    Clicar na lixeira