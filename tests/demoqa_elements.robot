*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Clicar Botao DuploClique
    Abrir Navegador DemoQA    https://demoqa.com/buttons    ${BROWSER}
    Double Click Element    id=doubleClickBtn
    Page Should Contain    You have done a double click
    Fechar Navegador
