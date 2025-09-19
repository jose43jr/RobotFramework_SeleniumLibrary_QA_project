*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Test Cases ***
Aceitar Alerta
    Open Browser    ${URL_ALERTS}    chrome    arguments=--headless,--no-sandbox,--disable-dev-shm-usage,--window-size=1920,1080,--user-data-dir=/tmp/chrome-${TEST NAME}
    Click Button    id=alertButton
    Alert Should Be Present    You clicked a button
    Handle Alert    ACCEPT
    Close Browser
