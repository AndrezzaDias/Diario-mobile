*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary

*** Variables ***
${CAMPO_USUARIO}        xpath=//android.widget.EditText[@text="Usuário"]
${CAMPO_SENHA}          xpath=//android.widget.EditText[@text="Senha"]

*** Keywords ***

Logando com sucesso    
    Wait Until Page Contains    Diário Mobile    5
    Wait Until Page Contains    CORURIPE         5
    Input Text                          ${CAMPO_USUARIO}     master
    Input Password                      ${CAMPO_SENHA}         1  
    Click Element                       xpath=//android.view.ViewGroup[@content-desc="Acessar"]
    
Validando tela de login
    [Arguments]        ${nome_escola}

    Wait Until Element Is Visible        xpath=//android.widget.TextView[@text="${nome_escola}"]        

Selecione a escola
    [Arguments]        ${nome_escola}
    Click Element    xpath=//android.widget.TextView[@text="󰅀"]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="${nome_escola}"] 
    Click Element    xpath=//android.widget.TextView[@text="${nome_escola}"]

