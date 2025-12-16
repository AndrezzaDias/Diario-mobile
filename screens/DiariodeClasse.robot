*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary
Library    XML

*** Variables ***

*** Keywords ***
Acessando a tela Diario de Classe
    Sleep    5
    Wait Until Element Is Visible        xpath=//android.widget.TextView[@text="Diário de Classe"]   5    
    Click Element                        xpath=//android.widget.TextView[@text="Diário de Classe"]
Acessando Frequencia 
    #Acessando a tela de frequencia
    Sleep    5
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="󰃰"]    5  
    Click Element                    xpath=//android.widget.TextView[@text="󰃰"]
       
Alterar frequencia
    #Alterando frequencia de Aluno / Ausente 
    Sleep    5
    Click Element                    xpath=(//android.widget.TextView[@text="Alterar"])[1]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, "Alterar frequência")]
    Click Element                    xpath=//android.widget.Switch
    Input Text                       xpath=//android.widget.EditText[@text="Digite a justificativa"]        Não compareceu a aula 
    Click Element                    xpath=//android.view.ViewGroup[@content-desc="Salvar"]

Acessando Avaliação 
    #Acessando tela de avaliação
    Wait Until Element Is Visible     xpath=//android.view.ViewGroup[@content-desc="Avaliações"]
    Click Element                     xpath=//android.view.ViewGroup[@content-desc="Avaliações"]  

    #Selecionando Período
    [Arguments]        ${Periodo}

    Wait Until Element Is Visible     xpath=//android.view.ViewGroup[@content-desc="Toque para Selecionar"]
    Click Element                     xpath=//android.view.ViewGroup[@content-desc="Toque para Selecionar"]

    Wait Until Element Is Visible     xpath=//android.widget.TextView[@text="${periodo}"]  
    Click Element                     xpath=//android.widget.TextView[@text="${periodo}"]   

    Wait Until Element Is Visible     xpath=//android.widget.TextView[@text="${periodo}"]  
    
    

        

    
