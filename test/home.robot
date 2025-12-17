*** Settings ***
Documentation        Testes da tela Home
Resource    ../resources/startup.resource
Resource    ../screens/login.robot
Resource    ../screens/DiariodeClasse.robot
Resource    ../screens/PlanosDeAula.robot

Test Setup           Iniciar sessão
Test Teardown        Finalizar sessão


*** Test Cases ***
Deve logar com sucesso
    [Tags]    smoke    login
    Logando com sucesso
    Validando elementos home
            
Deve acessar a tela Diário de Classe: Frequencia
    [Tags]    diario    frequencia
    Logando com sucesso
    Acessando a tela Diario de Classe
    Acessando Frequencia    
    Alterar frequencia
    
Deve acessar a tela minhas turmas: Avaliação
    [Tags]    diario    avaliacao
    Logando com sucesso 
    Acessando a tela Diario de Classe
  

Deve acessar Planos de Aula
    [Tags]    planos
    Logando com sucesso
    Acessando Planos de Aula  
    Novo Plano de Aula