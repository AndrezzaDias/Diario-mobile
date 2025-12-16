*** Settings ***
Resource    ../resources/startup.resource
Library    XML

Test Setup    Iniciar sessão
***Variables***   
${selecionando_escola}       ESCOLA TESTE 
${periodo_av}                1º Bimestre (20/01/2025 até 29/04/2025 )
${data}                      2025-11-03  


*** Test Cases ***
Deve logar com sucesso
    Logando com sucesso    
            
Deve acessar a tela Diário de Classe: Frequencia
    Logando com sucesso
    Acessando a tela Diario de Classe
    Acessando Frequencia    
    Alterar frequencia 
    
Deve acessar a tela minhas turmas: Avaliação 
    Logando com sucesso 
    Acessando a tela Diario de Classe
    Acessando Avaliação        ${periodo_av}     

Deve acessar Planos de Aula 
    Logando com sucesso
    Acessando Planos de Aula  
    Novo Plano de Aula         
    
  
   
      