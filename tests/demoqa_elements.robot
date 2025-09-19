*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Clicar Botao DuploClique
    Open Browser    ${URL_ELEMENTS}    chrome    options=--headless --no-sandbox --disable-dev-shm-usage --window-size\=1920,1080
    Scroll Element Into View    id=doubleClickBtn
    Wait Until Element Is Visible    id=doubleClickBtn    5s
    Double Click Element    id=doubleClickBtn
    Page Should Contain    You have done a double click
    Close Browser
