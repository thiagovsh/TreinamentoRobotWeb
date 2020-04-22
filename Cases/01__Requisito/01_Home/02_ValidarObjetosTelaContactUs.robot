*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar Browser

*** Test Case ***
TC02: Validar os objetos do formulario Customer Service - Contact Us
    [Tags]  TC02  req01  home

    Dado      que estou na tela home
    Quando    aciono o link Contact us
    E         que estou na tela Contact us
    Então     valido os elementos do formulário Customer Service - Contact US

*** Keywords ***
Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK
    
Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador
