*** Settings ***
Documentation          Esta suite testa o aplicativo Yodapp
Resource               ../resources/base.resource
 

*** Test Cases ***

Caso de Teste 01 - Acessar home
    [Documentation]    Este teste verifica o acesso a tela principal do aplicativo Yodapp
    Abrir aplicativo
    Fechar aplicativo