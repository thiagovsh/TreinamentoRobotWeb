*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar navegador   

*** Test Case ***
TC07: Validar produtos Casual Dresses na tela 
    [Tags]  TC07

    Dado      que estou na tela Home
    E         passo o cursor sobre a opção Women
    Quando    seleciono a opção Casual Dresses
    E         estou na tela Casual Dresses - My Store
    Então     verifico se os itens da tela Casual Dresses - My Store são femininos