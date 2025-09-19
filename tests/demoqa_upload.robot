*** Settings ***
Resource   ../resources/browser.robot
Resource   ../resources/variables.robot

*** Test Cases ***
Upload De Arquivo
    Abrir Navegador Headless    ${URL_UPLOAD}
    Choose File    id=uploadFile    ${UPLOAD_FILE}
    Page Should Contain    demo.txt
    Close Browser
