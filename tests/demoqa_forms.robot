*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Preencher Formulario Practice Form
    Open Browser    ${URL_FORMS}    chrome    arguments=--headless,--no-sandbox,--disable-dev-shm-usage,--window-size=1920,1080,--user-data-dir=/tmp/chrome-${TEST NAME}
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
