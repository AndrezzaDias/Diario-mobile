*** Settings ***
Resource    ../resources/startup.resource
Library    XML

*** Test Cases ***
Deve logar com sucesso
    Iniciar sessão
    Verificar exibição da tela de login
    Logando com sucesso    
   
Deve acessar a tela minhas turmas
    Acessando a tela minhas turmas     
    
   
