*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary
Library    XML

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
    Wait Until Element Is Visible       xpath=//android.widget.TextView[@text="Filtros"]    

filtrando escola
    
    Sleep    5
    Click Element                       xpath=//android.widget.Switch 
    #Selecione a escola
    Sleep    5
    Click Element                       xpath=(//android.widget.TextView[@text="󰅀"])[1]
    Wait Until Element Is Visible       xpath=//android.widget.TextView[@text="Selecione a Escola"]    5
    Click Element                       xpath=//android.widget.TextView[@text="󰐽"] 
    Sleep    5
    Click Element                       xpath=//android.widget.Switch     




    