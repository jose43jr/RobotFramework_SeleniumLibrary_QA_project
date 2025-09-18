*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Preencher Formulario Practice Form
    [Documentation]    Abre o formulário e preenche dados básicos
    Abrir Navegador DemoQA    https://demoqa.com/automation-practice-form    ${BROWSER}
    Input Text    id=firstName     Jose
    Input Text    id=lastName      Feitosa
    Input Text    id=userEmail     jose@example.com
    Click Element    xpath=//label[text()='Male']
    Input Text    id=userNumber    9999999999
    Scroll Element Into View    id=submit
    Execute Javascript    document.getElementById("submit").click()
    Page Should Contain    Jose Feitosa
    Fechar Navegador
