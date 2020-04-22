*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar Browser

*** Test Case ***
TC12: Validar os produtos listados na tela Summer Dresses
    [Tags]  TC12  req01  home_dresses

    Dado      que estou na tela Home
    Quando    seleciono a opção Dresses - Summer Dresses
    E         estou na tela Dresses Summer Dresses - Catalog
    Então     verifico se os itens da tela Dresses - Summer Dresses - My Store são femininos

*** Keywords ***
Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK
    
Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador