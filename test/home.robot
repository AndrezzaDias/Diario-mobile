*** Settings ***
Resource    ../resources/startup.resource
Library    XML

Test Setup    Iniciar sessão
***Variables***
${escola}                    COLEGIO ESTADUAL PRESTIGIO REAL    
${selecionando_escola}       ESCOLA TESTE 

*** Test Cases ***
Deve logar com sucesso
    Logando com sucesso   
    Validando tela de login    ${escola} 
    Selecione a escola         ${selecionando_escola} 


   
Deve acessar a tela minhas turmas
    Logando com sucesso
    Validando tela de login    ${escola} 
    Acessando a tela minhas turmas 
    Acessando Frequencia
    Alterar frequencia
    Finalizar sessão

    
  
   
