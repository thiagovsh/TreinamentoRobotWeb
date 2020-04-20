*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar navegador   

*** Test Case ***
TC04: Validar o direcionamento do link Your Logo
    [Tags]  TC04

    Dado     que estou na tela Home
    Quando   clico na imagem Your Logo
    Então    será apresentada a tela home