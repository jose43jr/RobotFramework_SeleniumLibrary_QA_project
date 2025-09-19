*** Settings ***
Resource   ../resources/browser.robot
Resource   ../resources/variables.robot

*** Test Cases ***
Preencher Formulario TextBox
    Abrir Navegador Headless    ${URL_TEXTBOX}
    Input Text    id=userName           Jose Feitosa
    Input Text    id=userEmail          jose@example.com
    Input Text    id=currentAddress     Rua A, 123
    Input Text    id=permanentAddress   Rua B, 456
    Scroll Element Into View    id=submit
    Execute Javascript    document.getElementById("submit").click()
    Page Should Contain    Name:
    Page Should Contain    Email:
    Close Browser
