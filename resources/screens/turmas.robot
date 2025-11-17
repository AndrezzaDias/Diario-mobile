*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary

*** Variables ***

*** Keywords ***
Acessando a tela minhas turmas 

    Wait Until Element Is Visible        xpath=//android.widget.TextView[@text="Minhas turmas"]        5
    Click Element                        xpath=//android.widget.TextView[@text=""]                    
    Wait Until Page Contains             xpath=//android.widget.TextView[@text="Turmas"]               5