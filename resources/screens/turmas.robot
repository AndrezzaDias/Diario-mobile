*** Settings ***
Documentation        Acessando a tela minhas turmas 
Library              AppiumLibrary

*** Variables ***

*** Keywords ***
Acessando a tela minhas turmas 
    
    Click Element                       xpath=//android.widget.TextView[@text=""]
    Wait Until Element Is Visible       xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.ImageView        

    Wait Until Element Is Visible        xpath=//android.widget.TextView[@text="Minhas turmas"]        
    Click Element                        xpath=//android.widget.TextView[@text=""]                    
    Wait Until Element Is Visible        xpath=//android.widget.TextView[@text="Turmas"]            