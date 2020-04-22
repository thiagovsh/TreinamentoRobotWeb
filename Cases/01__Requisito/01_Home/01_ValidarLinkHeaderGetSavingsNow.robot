*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar Browser

*** Test Case ***
TC01: Validar o direcionamento do link Get Savings Now
    [Tags]  TC01  req01  home

    Dado        que estou na tela Home
    Quando      aciono o link Get Savings Now
    Então       será apresentada a tela Home

*** Keywords ***
Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK
    
Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador
    