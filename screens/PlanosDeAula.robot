*** Settings ***
Documentation        Acessando Plano de Aula 
Library              AppiumLibrary
Library    XML

*** Variables ***


*** Keywords ***
Acessando Planos de Aula
    Sleep    5
    Wait Until Element Is Visible     xpath=//android.view.ViewGroup[@content-desc="󰭣, Planos de Aula"]/android.view.ViewGroup
    Click Element                     xpath=//android.view.ViewGroup[@content-desc="󰭣, Planos de Aula"]/android.view.ViewGroup

Novo Plano de Aula
    Sleep    2
    Click Element                     xpath=//android.widget.TextView[@text="Novo Plano de Aula"]
    #Digite o tema 
    Wait Until Element Is Visible     xpath=//android.widget.EditText[@text="Digite o tema do plano de aula"]        1
    Input Text                        xpath=//android.widget.EditText[@text="Digite o tema do plano de aula"]        Digitando Tema 
    #Escolha data inicial
    Click Element                     xpath=(//android.view.ViewGroup[@content-desc="󰃭, Selecione a data, 󰅀"])[2]
    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc=" Segunda 1 Dezembro 2025 You have entries for this day "]    5
    Click Element                     xpath=//android.widget.Button[@content-desc=" Segunda 1 Dezembro 2025 You have entries for this day "]
    #Escolha data final
    
   
    

    #Selecione o ano escolar
    Wait Until Element Is Visible     xpath=//android.view.ViewGroup[@content-desc="󱛉, Selecione o ano escolar, 󰅀"]    5
    Click Element                     xpath=//android.view.ViewGroup[@content-desc="󱛉, Selecione o ano escolar, 󰅀"]
    Wait Until Element Is Visible     xpath=//android.widget.TextView[@text="󰐽"]    5
    Click Element                     xpath=//android.widget.TextView[@text="󰐽"]
    #Conteudo conceitual
    Input Text               xpath=//android.widget.EditText[@text="Descreva o conteúdo conceitual e as habilidades propostas curriculares..."]        Testes manuais vs automatizados
    #Estrategias
    Input Text               xpath=//android.widget.EditText[@text="Descreva as estratégias e recursos didáticos a serem utilizados..."]               Testes manuais vs automatizados
    Swipe By Percent    50    80    50    20
    Click Element       xpath=//android.view.ViewGroup[@content-desc="Salvar"]
    


