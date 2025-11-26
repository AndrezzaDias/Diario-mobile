*** Settings ***
Library     AppiumLibrary
Library     Collections
Library     OperatingSystem
Resource    screens/login.robot
Resource    screens/turmas.robot

*** Keywords ***
Iniciar sessão
    Open Application    http://127.0.0.1:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/DiarioMobile.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    ...                 uiautomator2ServerInstallTimeout=60000
    ...                 androidInstallTimeout=120000
Finalizar sessão 
    Capture Page Screenshot
    Close Application

    


  



    

