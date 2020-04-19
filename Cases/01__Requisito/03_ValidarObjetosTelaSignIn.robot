*** Settings ***
Resource          ../Resources/Objects/login.resource
Test Setup        Abrir navegador
Test Teardown    Fechar navegador

*** Test Case ***
TC03: Validar os objetos do formulario do link Sign in
    [Tags]    TC03

    Dado      que estou na tela home
    Quando    aciono o link Sign in
    E         que estou na tela Login - My Store
    Então     valido os elementos do formulário Authentication