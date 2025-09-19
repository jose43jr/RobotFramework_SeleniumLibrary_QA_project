*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Preencher Formulario Practice Form
    Abrir Navegador Headless Seguro    ${URL_FORMS}
    Remover Iframes De Anuncio
    Input Text    id=firstName     Jose
    Input Text    id=lastName      Feitosa
    Input Text    id=userEmail     jose@example.com
    Clicar Com JS    label[for="gender-radio-1"]
    Input Text    id=userNumber    9999999999
    Scroll Element Into View    id=submit
    Clicar Com JS    #submit
    Wait Until Page Contains    Jose Feitosa    5s
    Close Browser
