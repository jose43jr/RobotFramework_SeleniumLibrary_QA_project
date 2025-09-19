*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Navegador Headless Seguro
    [Arguments]    ${url}
    # Pega a classe correta do Selenium para evitar o erro de ArgOptions
    ${ChromeOptions}=    Evaluate    __import__('selenium.webdriver').webdriver.ChromeOptions()
    # Flags estáveis no CI/CD
    Call Method    ${ChromeOptions}    add_argument    --headless
    Call Method    ${ChromeOptions}    add_argument    --no-sandbox
    Call Method    ${ChromeOptions}    add_argument    --disable-dev-shm-usage
    Call Method    ${ChromeOptions}    add_argument    --window-size=1920,1080
    # Cria um perfil único por execução (evita conflito "user data directory in use")
    ${rand}=       Evaluate    __import__('uuid').uuid4().hex
    Call Method    ${ChromeOptions}    add_argument    --user-data-dir=/tmp/chrome-${rand}
    # Cria o navegador com as opções configuradas
    Create WebDriver    Chrome    options=${ChromeOptions}
    Go To    ${url}

Clicar Com JS
    [Arguments]    ${css}
    Execute Javascript    document.querySelector("${css}").click()

Remover Iframes De Anuncio
    Execute Javascript    Array.from(document.querySelectorAll('iframe')).forEach(f => f.remove())
