*** Settings ***
Documentation               Esta suite testa o aplicativo Yodapp
Resource                    ../resources/base.resource


*** Test Cases ***

Caso de Teste 02 - Clicar no botão "QAX" e redirecionar para a tela "Clique em Botões"
    [Documentation]         Este teste verifica a funcionalidade de clicar no botao "QAX" da tela principal
    Abrir aplicativo
    Clicar no botão         QAX
    Deve exibir o título    Clique em Botões
    Fechar aplicativo