*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar Browser

*** Test Case ***
TC03: Validar os objetos do formulario do link Sign in
    [Tags]  TC03  req01  home

    Dado      que estou na tela home
    Quando    aciono o link Sign in
    E         que estou na tela Login - My Store
    Então     valido os elementos do formulário Authentication

*** Keywords ***
Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK
    
Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador