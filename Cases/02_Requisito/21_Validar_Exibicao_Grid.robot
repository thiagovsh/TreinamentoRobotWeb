*** Settings ***
Resource         ../Resources/Objects/login.resource
Resource         ../Resources/Objects/validacao.resource

Test Setup       Catalog Summer Dresses
Test Teardown    Fechar Browser

*** Test Case ***
TC21: Validar filtro de exibição por Grid
    [Tags]  TC21  req02

    Dado    estou na tela Summer Dresses - My Store
    E       a opção List foi selecionada
    Quando  seleciono a opção Grid
    Então   será apresentado os produtos no formato de Grid


*** Keywords ***
Catalog Summer Dresses
    Abrir navegador
    que estou na tela Home
    seleciono a opção Dresses - Summer Dresses

Fechar Browser
    Run Keyword if Test Failed  Test NOK
    Run Keyword if Test Passed  Test OK

Test NOK
    Capture page Screenshot
    Fechar navegador

Test OK
    Fechar navegador