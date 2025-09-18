*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Preencher Formulario TextBox
    Abrir Navegador DemoQA    ${URL}    ${BROWSER}
    Input Text    id=userName           ${NOME}
    Input Text    id=userEmail          ${EMAIL}
    Input Text    id=currentAddress     ${END1}
    Input Text    id=permanentAddress   ${END2}
    Scroll Element Into View    id=submit
    Execute Javascript    document.getElementById("submit").click()
    Page Should Contain    Name:
    Page Should Contain    Email:
    Pause Execution
    Fechar Navegador
