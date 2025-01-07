*** Settings ***
Library    AppiumLibrary
Resource   ../config/env.robot


*** Keywords ***
Abrir aplicativo
        Open Application             http://localhost:4723 
                ...                  platformName=Android
                ...                  deviceName=Android Emulator
                ...                  automationName=UIAutomator2
                ...                  app=${EXECDIR}/app/yodapp-beta.apk
                ...                  udid=emulator-5554
                ...                  autoGrantPermissions=true
    Wait Until Page Contains         Yodapp    10
    Wait Until Page Contains         Mobile Training    10
    Wait Until Page Contains         by Papito    10

Fechar aplicativo
    Sleep                            4
    Close Application

Clicar no botão 
    [Arguments]                      ${item_text}    
    Click Text                       ${item_text}

Deve exibir o título
    [Arguments]                      ${title}
    Wait Until Page Contains         ${title}   
  
Navegar até o menu hamburguer
    Click Element                    ${MENU}  

Clicar no item
    [Arguments]                      ${item_menu}
    ${option}    Set Variable        xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_menu}"]
    Wait Until Element Is Visible    ${MENU}
    Click Element                    ${option}

Deve exibir o toast
    [Arguments]                      ${toast}
    Wait Until Page Contains         ${toast}    