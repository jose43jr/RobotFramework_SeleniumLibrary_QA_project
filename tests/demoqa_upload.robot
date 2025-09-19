*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Upload De Arquivo
    Open Browser    ${URL_UPLOAD}    chrome    arguments=--headless,--no-sandbox,--disable-dev-shm-usage,--window-size=1920,1080,--user-data-dir=/tmp/chrome-${TEST NAME}
    Choose File    id=uploadFile    ${UPLOAD_FILE}
    Page Should Contain    demo.txt
    Close Browser
