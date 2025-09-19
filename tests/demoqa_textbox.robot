*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Preencher Formulario TextBox
    Open Browser    ${URL_TEXTBOX}    chrome    options=add_argument("--headless"),add_argument("--no-sandbox"),add_argument("--disable-dev-shm-usage"),add_argument("--window-size=1920,1080")
    Input Text    id=userName           Jose Feitosa
    Input Text    id=userEmail          jose@example.com
    Input Text    id=currentAddress     Rua A, 123
    Input Text    id=permanentAddress   Rua B, 456
    Scroll Element Into View    id=submit
    Execute Javascript    document.getElementById("submit").click()
    Page Should Contain    Name:
    Page Should Contain    Email:
    Close Browser
