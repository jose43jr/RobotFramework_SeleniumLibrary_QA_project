*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Preencher Formulario TextBox
    Abrir Navegador Headless Seguro    ${URL_TEXTBOX}
    Input Text    id=userName           Jose Feitosa
    Input Text    id=userEmail          jose@example.com
    Input Text    id=currentAddress     Rua A, 123
    Input Text    id=permanentAddress   Rua B, 456
    Scroll Element Into View    id=submit
    Clicar Com JS    #submit
    Page Should Contain    Name:
    Page Should Contain    Email:
    Close Browser
