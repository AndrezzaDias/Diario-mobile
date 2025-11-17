# Projeto de Automação de Testes - Diário Mobile

Este projeto contém testes automatizados para o aplicativo Android "Diário Mobile", utilizando Robot Framework e Appium.

## 🚀 Tecnologias Utilizadas

- **[Python](https://www.python.org/)**: Linguagem de programação base.
- **[Robot Framework](https://robotframework.org/)**: Framework de automação de testes.
- **[Appium](http://appium.io/)**: Ferramenta de automação para aplicativos móveis.
- **[AppiumLibrary](https://robotframework.org/AppiumLibrary/)**: Biblioteca de integração entre Robot Framework e Appium.

## 📋 Pré-requisitos

Antes de começar, você precisará ter instalado em sua máquina:

- Node.js e npm (para instalar o Appium)
- Java JDK (necessário para o Android SDK)
- Android SDK com um emulador configurado ou um dispositivo físico conectado.
- Appium Server

## ⚙️ Instalação do Projeto

1.  **Clone o repositório:**
    ```bash
    git clone <url-do-seu-repositorio>
    cd Diario-mobile
    ```

2.  **Crie e ative um ambiente virtual (recomendado):**
    ```bash
    python -m venv venv
    # Windows
    .\venv\Scripts\activate
    # Linux/macOS
    source venv/bin/activate
    ```

3.  **Instale as dependências do Python:**
    (É uma boa prática criar um arquivo `requirements.txt` com `robotframework` e `robotframework-appiumlibrary`)
    ```bash
    pip install robotframework robotframework-appiumlibrary
    ```

4.  **Coloque o APK na pasta `app`:**
    Certifique-se de que o arquivo `.apk` do Diário Mobile esteja dentro da pasta `app/`.

## ▶️ Executando os Testes

1.  **Inicie o servidor do Appium** em um terminal separado:
    ```bash
    appium
    ```

2.  **Execute os testes do Robot Framework:**
    ```bash
    robot -d results tests/
    ```
    Os resultados serão gerados na pasta `results`. Abra o arquivo `report.html` para ver um relatório detalhado da execução.