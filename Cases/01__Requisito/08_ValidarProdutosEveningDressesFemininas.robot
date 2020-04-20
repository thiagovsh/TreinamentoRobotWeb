*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar navegador   

*** Test Case ***
TC08: Validar produtos Evening Dresses na tela 
    [Tags]  TC08

    Dado      que estou na tela Home
    E         passo o cursor sobre a opção Women
    Quando    seleciono a opção Evening Dresses
    E         estou na tela Evening Dresses - My Store
    Então     verifico se os itens da tela Casual Dresses - My Store são femininos