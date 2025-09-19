*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Upload De Arquivo
    Abrir Navegador Headless Seguro    ${URL_UPLOAD}
    Choose File    id=uploadFile    ${UPLOAD_FILE}
    Wait Until Page Contains    demo.txt    5s
    Close Browser
