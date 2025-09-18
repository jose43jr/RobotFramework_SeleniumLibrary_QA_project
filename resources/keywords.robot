*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Navegador DemoQA
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Fechar Navegador
    Close Browser
