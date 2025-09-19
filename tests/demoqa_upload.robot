*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Upload De Arquivo
    Open Browser    ${URL_UPLOAD}    chrome    options=add_argument("--headless"),add_argument("--no-sandbox"),add_argument("--disable-dev-shm-usage"),add_argument("--window-size=1920,1080")
    Choose File    id=uploadFile    ${UPLOAD_FILE}
    Page Should Contain    demo.txt
    Close Browser
