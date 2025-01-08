*** Settings ***
Library    AppiumLibrary


*** Keywords ***
Abrir aplicativo
    Open Application                 http://localhost:4723 
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
  
Navegar até 
    [Arguments]                      ${item_text}
    ${hamburguer}    Set Variable     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    
    Wait Until Element Is Visible    ${hamburguer}    5
    Click Element                    ${hamburguer}

    ${menu_item}    Set Variable     xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible    ${menu_item}    5
    Click Element                    ${menu_item}

Vá até o item
    [Arguments]                      ${item}    ${checkpoint}
    Wait Until Page Contains         ${item}    5
    Click Text                       ${item}
    Wait Until Page Contains         ${checkpoint}    

Deve exibir o toast
    [Arguments]                      ${toast}
    Wait Until Page Contains         ${toast} 

Fazer um clique longo
    # pega as coordenadas do elemento independente do tamanho da tela 
    ${locator}                      Set Variable    id=com.qaxperience.yodapp:id/long_click
    ${positions}                    Get Element Location            ${locator}

    Tap With Positions              1000    ${${positions}[x], ${positions}[y]}

Clicar nos elementos que usam Appium
    @{techs}                        Create List    Ruby    Python    Java    Javascript    C#    Robot Framework
    FOR    ${tech}    IN    @{techs}
        # xpath feito combinando classe e texto
        Click Element                xpath=//android.widget.CheckBox[contains(@text, "${tech}")]
        Sleep                        2    
    END
    
Clicar no elemento
    [Arguments]                      ${item}
    Click Element                    xpath=//android.widget.RadioButton[contains(@text, "${item}")]

Inserir email
    [Arguments]                      ${email}
    Input Text                       id=com.qaxperience.yodapp:id/etEmail    ${email}
    
Inserir senha
    [Arguments]                      ${password}
    Input Text                       id=com.qaxperience.yodapp:id/etPassword    ${password}
    Click Element                    id=com.qaxperience.yodapp:id/btnSubmit
    Run Keyword If                   '${password}' == 'jedi'    Wait Until Page Contains    Boas vindas, logado você está.
    ...                              ELSE                       Wait Until Page Contains    Oops! Credenciais incorretas.

Clicar no spinner
    Click Element                    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView 

Selecionar o level
    [Arguments]                      ${level}
    Click Text                       ${level}
    
Fazer swipe
    [Arguments]                      ${person}
    # o * significa que ele vai trazer qualquer elemento filho do pai especificado anteriormente que contenha aquilo que busco
    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="${person}"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}     Set Variable    ${positions}[x]
    ${start_y}     Set Variable    ${positions}[y]
    ${offset_x}    Evaluate        ${positions}[x] - 650
    ${offset_y}    Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}    1000

Clicar na lixeira
    Click Element    id=com.qaxperience.yodapp:id/btnRemove
    Wait Until Page Does Not Contain    Darth Vader