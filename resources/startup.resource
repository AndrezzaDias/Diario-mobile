*** Settings ***
Library     AppiumLibrary
Library     Collections
Library     OperatingSystem
Resource    screens/turmas.robot


*** Variables ***
${CAMPO_USUARIO}        xpath=//android.widget.EditText[@text="Usuário"]
${CAMPO_SENHA}          xpath=//android.widget.EditText[@text="Senha"]

*** Keywords ***
Iniciar sessão
    Open Application    http://localhost:4723
    ...                 platformName=Android    
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=C:\\Diario-mobile\\app\\app-release.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true  
       
Verificar exibição da tela de login
    Wait Until Page Contains    Diário Mobile    5
    Wait Until Page Contains    CORURIPE         5

Logando com sucesso    
    Input Text                          ${CAMPO_USUARIO}     master
    Input Password                      ${CAMPO_SENHA}         1  
    Click Element                       xpath=//android.widget.TextView[@text="Entrar"]
    Click Element                       xpath=//android.view.View[@content-desc=""]
    Wait Until Element Is Visible       xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.ImageView        5

Finalizar sessão 
    
    Close Application
  



    

