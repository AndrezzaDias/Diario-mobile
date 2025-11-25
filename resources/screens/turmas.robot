*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary
Library    XML

*** Variables ***

*** Keywords ***
Acessando a tela minhas turmas 
    Wait Until Element Is Visible        xpath=//android.view.ViewGroup[@content-desc="󰭘, Minhas turmas"]/android.view.ViewGroup    5    
    Click Element                        xpath=//android.view.ViewGroup[@content-desc="󰭘, Minhas turmas"]/android.view.ViewGroup

    Wait Until Element Is Visible        xpath=//android.widget.TextView[@text="COMPONENTE CURRICULAR"]    5
    
    Wait Until Element Is Visible        xpath=//android.widget.TextView[contains(@text, "Matutino")]
    Click Element                        xpath=//android.widget.TextView[contains(@text, "Matutino")]
  

Acessando Frequencia 
    #Acessando a tela de frequencia
    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="Frequências"]  
    Click Element                    xpath=//android.widget.TextView[@text=""]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Selecione a Data"]
    Click Element                    xpath=//android.widget.TextView[@resource-id="undefined.day_2025-11-10.text"]
    
    Page Should Contain Element      xpath=//android.widget.TextView[@text="Aluno"]
   
Alterar frequencia
    #Alterando frequencia de Aluno / Ausente 
    Click Element                    xpath=(//android.widget.TextView[@text="Alterar"])[1]
    Wait Until Element Is Visible    xpath=//android.widget.TextView[contains(@text, "Alterar frequência")]
    Click Element                    xpath=//android.widget.Switch
    Input Text                       xpath=//android.widget.EditText[@text="Digite a justificativa"]        Não compareceu a aula 
    Click Element                    xpath=//android.view.ViewGroup[@content-desc="Salvar"]


        

    
