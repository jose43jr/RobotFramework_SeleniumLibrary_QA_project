*** Settings ***
Resource   ../resources/browser.robot
Resource   ../resources/variables.robot

*** Test Cases ***
Aceitar Alerta
    Abrir Navegador Headless    ${URL_ALERTS}
    Click Button    id=alertButton
    Alert Should Be Present    You clicked a button
    Handle Alert    ACCEPT
    Close Browser
