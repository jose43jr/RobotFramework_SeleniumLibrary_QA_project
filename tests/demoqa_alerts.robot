*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Aceitar Alerta
    Abrir Navegador DemoQA    https://demoqa.com/alerts    ${BROWSER}
    Click Button    id=alertButton
    Alert Should Be Present    You clicked a button
    Handle Alert    ACCEPT
    Fechar Navegador
