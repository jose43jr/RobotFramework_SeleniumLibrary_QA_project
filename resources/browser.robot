*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Navegador Headless
    [Arguments]    ${url}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --window-size=1920,1080
    ${rand}=       Evaluate    __import__('uuid').uuid4().hex
    Call Method    ${options}    add_argument    --user-data-dir=/tmp/chrome-${rand}
    Create WebDriver    Chrome    options=${options}
    Go To    ${url}
