*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary
Resource            ../resources/startup.resource
Library    XML



*** Keywords ***
Acessando a tela Diario de Classe
    Wait Until Element Is Visible        ${TXT_DIARIO_CLASSE}        ${TIMEOUT_CURTO}    
    Click Element                        ${TXT_DIARIO_CLASSE}    
Acessando Frequencia 
    #Acessando a tela de frequencia
    ${TIMEOUT_CURTO}
    Wait Until Element Is Visible    ${BTN_FREQUENCIA}      5  
    Click Element                    ${BTN_FREQUENCIA}  
       
Alterar frequencia
    #Alterando frequencia de Aluno / Ausente 
    ${TIMEOUT_CURTO}
    Click Element                    ${BTN_ALTERAR_FREQUENCIA} 
    Wait Until Element Is Visible    ${TXT_ALTERAR_FREQ_MODAL} 
    Click Element                    ${SWITCH_FREQUENCIA} 
    Input Text                       ${CAMPO_JUSTIFICATIVA}            Não compareceu a aula 
    Click Element                    ${BTN_SALVAR}   


    

        

    
