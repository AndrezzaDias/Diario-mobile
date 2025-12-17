*** Settings ***
Library     AppiumLibrary
Library     Collections
Library     OperatingSystem

*** Variables ***
# ========== TIMEOUTS ==========
${TIMEOUT_CURTO}     5
${TIMEOUT_MEDIO}     10
${TIMEOUT_LONGO}     15

# ========== CREDENCIAIS ==========
${USUARIO}           automacao
${SENHA}             151819

# ========== LOCATORS - LOGIN ==========
${CAMPO_USUARIO}     xpath=//android.widget.EditText[@text="Usuário"]
${CAMPO_SENHA}       xpath=//android.widget.EditText[@text="Senha"]
${BTN_ACESSAR}       xpath=//android.widget.TextView[@text="Acessar"]

# ========== LOCATORS - HOME ==========
${TXT_FILTROS}                  xpath=//android.widget.TextView[@text="Filtros"]
${MENU_DIARIO_CLASSE}           xpath=//android.view.ViewGroup[@content-desc="󱛉, Diário de Classe"]/android.view.ViewGroup
${MENU_PLANOS_AULA}             xpath=//android.view.ViewGroup[@content-desc="󰭣, Planos de Aula"]/android.view.ViewGroup
${MENU_CALENDARIO_ESCOLAR}      xpath=//android.view.ViewGroup[@content-desc="󰸘, Calendário Escolar"]/android.view.ViewGroup
${MENU_PROXIMAS_AULAS}          xpath=//android.view.ViewGroup[@content-desc="󰃰, Próximas Aulas"]/android.view.ViewGroup

# ========== LOCATORS - DIÁRIO DE CLASSE ==========
${TXT_DIARIO_CLASSE}            xpath=//android.widget.TextView[@text="Diário de Classe"]
${BTN_FREQUENCIA}               xpath=//android.widget.TextView[@text="󰃰"]
${BTN_ALTERAR_FREQUENCIA}       xpath=(//android.widget.TextView[@text="Alterar"])[1]
${TXT_ALTERAR_FREQ_MODAL}       xpath=//android.widget.TextView[contains(@text, "Alterar frequência")]
${SWITCH_FREQUENCIA}            xpath=//android.widget.Switch
${CAMPO_JUSTIFICATIVA}          xpath=//android.widget.EditText[@text="Digite a justificativa"]
${BTN_SALVAR}                   xpath=//android.view.ViewGroup[@content-desc="Salvar"]
${MENU_AVALIACOES}              xpath=//android.view.ViewGroup[@content-desc="Avaliações"]
${BTN_SELECIONAR_PERIODO}       xpath=//android.view.ViewGroup[@content-desc="Toque para Selecionar"]

# ========== LOCATORS - PLANOS DE AULA ==========
${BTN_NOVO_PLANO}               xpath=//android.widget.TextView[@text="Novo Plano de Aula"]
${CAMPO_TEMA_PLANO}             xpath=//android.widget.EditText[@text="Digite o tema do plano de aula"]
${BTN_DATA_INICIAL}             xpath=(//android.view.ViewGroup[@content-desc="󰃭, Selecione a data, 󰅀"])[2]
${BTN_SELECIONAR_ANO}           xpath=//android.view.ViewGroup[@content-desc="󱛉, Selecione o ano escolar, 󰅀"]
${BTN_CONFIRMAR_ANO}            xpath=//android.widget.TextView[@text="󰐽"]
${CAMPO_CONTEUDO}               xpath=//android.widget.EditText[@text="Descreva o conteúdo conceitual e as habilidades propostas curriculares..."]
${CAMPO_ESTRATEGIAS}            xpath=//android.widget.EditText[@text="Descreva as estratégias e recursos didáticos a serem utilizados..."]

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
    


  



    

