*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Aceitar Alerta
    Open Browser    ${URL_ALERTS}    chrome    options=--headless --no-sandbox --disable-dev-shm-usage --window-size\=1920,1080
    Click Button    id=alertButton
    Alert Should Be Present    You clicked a button
    Handle Alert    ACCEPT
    Close Browser
