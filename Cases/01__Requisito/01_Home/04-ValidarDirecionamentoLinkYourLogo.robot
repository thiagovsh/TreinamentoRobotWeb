*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar Browser 

*** Test Case ***
TC04: Validar o direcionamento do link Your Logo
    [Tags]  TC04  req01  home

    Dado      que estou na tela Home
    Quando    clico na imagem Your Logo
    Então     será apresentada a tela home

*** Keywords ***
Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK
    
Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador