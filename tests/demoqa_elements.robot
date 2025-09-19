*** Settings ***
Resource   ../resources/browser.robot
Resource   ../resources/variables.robot

*** Test Cases ***
Clicar Botao DuploClique
    Abrir Navegador Headless    ${URL_ELEMENTS}
    Scroll Element Into View    id=doubleClickBtn
    Wait Until Element Is Visible    id=doubleClickBtn    5s
    Double Click Element    id=doubleClickBtn
    Page Should Contain    You have done a double click
    Close Browser
