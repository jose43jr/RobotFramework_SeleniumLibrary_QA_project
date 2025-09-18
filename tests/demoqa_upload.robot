*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Upload De Arquivo
    Abrir Navegador DemoQA    https://demoqa.com/upload-download    ${BROWSER}
    Choose File    id=uploadFile    C:/Users/feito/robot_project/tests/demo.txt
    Page Should Contain    demo.txt
    Fechar Navegador
