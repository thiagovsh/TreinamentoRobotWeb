*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar Browser

*** Test Case ***
TC11: Validar os produtos listados na tela Evening Dresses
    [Tags]  TC11  req01  home_dresses

    Dado      que estou na tela Home
    Quando    seleciono a opção Dresses - Evening Dresses
    E         estou na tela Dresses Evening Dresses - Catalog
    Então     verifico se os itens da tela Dresses - Evening Dresses - My Store são femininos

*** Keywords ***
Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK
    
Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador