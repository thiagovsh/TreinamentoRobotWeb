*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar Browser  

*** Test Case ***
TC06: Validar produtos Blouses na tela 
    [Tags]  TC06  req01  home_women

    Dado      que estou na tela Home
    E         passo o cursor sobre a opção Women
    Quando    seleciono a opção Blouses
    E         estou na tela Blouses - My Store
    Então     verifico se os itens da tela Blouses - My Store são femininos

*** Keywords ***
Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK
    
Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador