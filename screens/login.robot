*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary
Resource             ../resources/startup.resource

*** Keywords ***
Logando com sucesso
    [Arguments]    ${usuario}=${USUARIO}    ${senha}=${SENHA}
    Wait Until Page Contains          DIÁRIO MOBILE            ${TIMEOUT_MEDIO}
    Wait Until Page Contains          CORURIPE                 ${TIMEOUT_MEDIO}
    Input Text                        ${CAMPO_USUARIO}         ${usuario}
    Input Password                    ${CAMPO_SENHA}           ${senha}
    Click Element                     ${BTN_ACESSAR}
    Wait Until Element Is Visible     ${TXT_FILTROS}           ${TIMEOUT_LONGO}
            
Validando elementos home
    Wait Until Element Is Visible     ${TXT_FILTROS}              ${TIMEOUT_CURTO}
    Wait Until Element Is Visible     ${MENU_DIARIO_CLASSE}       ${TIMEOUT_CURTO}
    Wait Until Element Is Visible     ${MENU_PLANOS_AULA}         ${TIMEOUT_CURTO}
    Wait Until Element Is Visible     ${MENU_CALENDARIO_ESCOLAR}  ${TIMEOUT_CURTO}