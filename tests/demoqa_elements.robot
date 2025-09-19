*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Clicar Botao DuploClique
    Abrir Navegador Headless Seguro    ${URL_ELEMENTS}
    Scroll Element Into View    id=doubleClickBtn
    Wait Until Element Is Visible    id=doubleClickBtn    5s
    Double Click Element    id=doubleClickBtn
    Wait Until Page Contains    You have done a double click    5s
    Close Browser
