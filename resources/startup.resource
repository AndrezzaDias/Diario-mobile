*** Settings ***
Library     AppiumLibrary
Library     Collections
Library     OperatingSystem
Resource    screens/login.robot
Resource    screens/turmas.robot

*** Keywords ***
Iniciar sessão
    Open Application    http://localhost:4723
    ...                 platformName=Android    
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${CURDIR}/../app/app-release.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true  
       
Finalizar sessão 
    Capture Page Screenshot
    Close Application

    


  



    

