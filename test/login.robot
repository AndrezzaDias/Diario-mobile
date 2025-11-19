*** Settings ***
Resource    ../resources/startup.resource
Library    XML

Test Setup    Iniciar sessão


*** Test Cases ***
Deve logar com sucesso
    Logando com sucesso    
   
Deve acessar a tela minhas turmas
    Logando com sucesso
    Acessando a tela minhas turmas     
    
   
