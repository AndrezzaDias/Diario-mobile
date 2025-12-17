# Descrição do Projeto: Diário Mobile Automation

O projeto **Diário Mobile** é uma solução de automação de testes para o aplicativo Android "Diário Mobile". O foco é garantir a qualidade do software através de testes de interface (UI) automatizados, integrados a um pipeline de Integração Contínua (CI).

A arquitetura utiliza o **Robot Framework**, que permite a criação de testes legíveis baseados em palavras-chave (Keyword-Driven), em conjunto com o **Appium**, que gerencia a interação com o sistema operacional Android.

### 🛠 Tecnologias e Ferramentas

*   **Linguagem Base:** Python 3.10
*   **Framework de Testes:** Robot Framework
*   **Motor de Automação:** Appium Server 2.x com driver UiAutomator2
*   **Integração Contínua (CI):** GitHub Actions
*   **Ambiente de Execução:** Emuladores Android (via KVM em Linux)

## Plano de Teste

Este plano descreve a estratégia de validação automatizada configurada no repositório.

### 1. Escopo e Objetivo
Validar as funcionalidades do aplicativo `DiarioMobile.apk` em um ambiente controlado, garantindo que novas alterações no código (`push` ou `pull_request` na branch `main`) não quebrem funcionalidades existentes (Testes de Regressão).

### 2. Ambiente de Teste (CI/CD)
O ambiente é provisionado dinamicamente no GitHub Actions com as seguintes especificações:

*   **OS do Runner:** Ubuntu Latest
*   **Java:** JDK 17 (Requisito para Android SDK)
*   **Node.js:** Versão 20.x (Para execução do Appium)
*   **Python:** Versão 3.10 (Para Robot Framework e bibliotecas)
*   **Emulador Android:**
    *   **API Level:** 29 (Android 10)
    *   **Arquitetura:** x86_64 (com aceleração KVM)
    *   **Perfil:** Nexus 6
    *   **Resolução:** 1080x1920

### 3. Estratégia de Execução
O fluxo de execução automatizada segue as etapas definidas no workflow `Mobile Automation CI`:

1.  **Pré-condições:**
    *   O código é baixado (Checkout).
    *   O arquivo `app/DiarioMobile.apk` deve existir no repositório.
    *   As dependências do Python (`requirements.txt`) e drivers do Appium (`uiautomator2`) são instalados.

2.  **Inicialização:**
    *   O emulador Android é iniciado e o script aguarda o sinal de `boot_completed`.
    *   Animações do sistema Android são desabilitadas para evitar instabilidade nos testes (flakiness).
    *   O servidor Appium é iniciado em background na porta 4723.

3.  **Execução dos Testes:**
    *   O comando `robot` é disparado apontando para a pasta `test/`.
    *   **Variáveis de Execução:**
        *   `PLATFORM_NAME`: Android
        *   `DEVICE_NAME`: emulator-5554
        *   `APPIUM_SERVER`: http://127.0.0.1:4723

4.  **Pós-Execução (Teardown):**
    *   O servidor Appium e o emulador são encerrados.
    *   Logs e relatórios são coletados independentemente do sucesso ou falha dos testes.

### 4. Artefatos e Relatórios (Evidências)
Ao final da execução, os seguintes artefatos são gerados e armazenados pelo GitHub Actions:

*   **Relatórios do Robot:** `log.html`, `report.html`, `output.xml` (Retenção: 30 dias).
*   **Logs Técnicos:** `appium.log` (Logs do servidor Appium para debug).
*   **Screenshots:** Capturas de tela geradas durante os testes (pasta `results/screenshots/`).
*   **Resumo:** Um comentário é publicado no Pull Request ou no resumo do Job com o status da execução.
