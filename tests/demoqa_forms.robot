*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Preencher Formulario Practice Form
    Open Browser    ${URL_FORMS}    chrome    options=add_argument("--headless"),add_argument("--no-sandbox"),add_argument("--disable-dev-shm-usage"),add_argument("--window-size=1920,1080")
    Execute Javascript    Array.from(document.querySelectorAll('iframe')).forEach(f => f.remove())
    Input Text    id=firstName     Jose
    Input Text    id=lastName      Feitosa
    Input Text    id=userEmail     jose@example.com
    Execute Javascript    document.querySelector('label[for="gender-radio-1"]').click()
    Input Text    id=userNumber    9999999999
    Scroll Element Into View    id=submit
    Execute Javascript    document.getElementById("submit").click()
    Page Should Contain    Jose Feitosa
    Close Browser
