*** Settings ***
Resource    ../resources/startup.resource
Library    XML

Test Setup    Iniciar sessão
***Variables***
${escola}                    COLEGIO ESTADUAL PRESTIGIO REAL    
${selecionando_escola}       ESCOLA TESTE 
${periodo_av}                1º Bimestre (20/01/2025 até 29/04/2025 )

*** Test Cases ***
Deve logar com sucesso
    Logando com sucesso   
    Validando tela de login    ${escola} 
    Selecione a escola         ${selecionando_escola} 


   
Deve acessar a tela minhas turmas: Frequencia
    Logando com sucesso
    Validando tela de login        ${escola} 
    Acessando a tela minhas turmas 
    Acessando Frequencia
    Alterar frequencia
    
Deve acessar a tela minhas turmas: Avaliação 
    Logando com sucesso
    Validando tela de login    ${escola} 
    Acessando a tela minhas turmas
    Acessando Avaliação        ${periodo_av}            
    
  
   
      