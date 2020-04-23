*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar Browser

*** Test Case ***
TC13: Validar os produtos listados na tela Summer Dresses
    [Tags]  TC13  req01  t-shirts

    Dado      que estou na tela Home
    Quando    seleciono a opção T-Shirts - T-Shirts
    E         estou na tela T-shirts - My Store
    Então     verifico se os itens da tela TShirts - My Store são femininos

*** Keywords ***
Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK
    
Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador