*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar navegador   

*** Test Case ***
TC05: Validar produtos T-Shirts na tela
    [Tags]  TC05

    Dado      que estou na tela Home
    E         passo o cursor sobre a opção Women
    E         seleciono a opção T-shirts
    Quando    estou na tela T-shirts - My Store
    Então     verifico se os itens da tela T-shirts - My Store são femininos
