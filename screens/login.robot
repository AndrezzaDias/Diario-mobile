*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary
Library    XML

*** Variables ***
${CAMPO_USUARIO}        xpath=//android.widget.EditText[@text="Usuário"]
${CAMPO_SENHA}          xpath=//android.widget.EditText[@text="Senha"]

*** Keywords ***

Logando com sucesso    
    Wait Until Page Contains                DIÁRIO MOBILE        10
    Wait Until Page Contains                CORURIPE             10
    Input Text                              ${CAMPO_USUARIO}     automacao
    Input Password                          ${CAMPO_SENHA}       151819
    Click Element                           xpath=//android.widget.TextView[@text="Acessar"]
    Sleep    10
    Wait Until Element Is Visible           xpath=//android.widget.TextView[@text="Filtros"]            
Validando elementos home       
    Wait Until Element Is Visible           xpath=//android.widget.TextView[@text="Filtros"]    5
    Wait Until Element Is Visible           xpath=//android.view.ViewGroup[@content-desc="󱛉, Diário de Classe"]/android.view.ViewGroup     5 
    Wait Until Element Is Visible           xpath=//android.view.ViewGroup[@content-desc="󰭣, Planos de Aula"]/android.view.ViewGroup       5 
    Wait Until Element Is Visible           xpath=//android.view.ViewGroup[@content-desc="󰸘, Calendário Escolar"]/android.view.ViewGroup   5 
    Wait Until Element Is Visible           xpath=//android.view.ViewGroup[@content-desc="󰃰, Próximas Aulas"]/android.view.ViewGroup       5 
     






    