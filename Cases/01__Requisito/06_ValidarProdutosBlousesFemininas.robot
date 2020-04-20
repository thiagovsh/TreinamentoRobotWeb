*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar navegador   

*** Test Case ***
TC05: Validar produtos Blouses na tela 
    [Tags]  TC06

    Dado      que estou na tela Home
    E         passo o cursor sobre a opção Women
    Quando    seleciono a opção Blouses
    E         estou na tela Blouses - My Store
    Então     verifico se os itens da tela Blouses - My Store são femininos
 