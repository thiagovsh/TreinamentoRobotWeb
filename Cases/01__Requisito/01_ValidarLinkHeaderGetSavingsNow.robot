*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Case ***
Validar o direcionamento do link Get Savings Now
    [Tags]  TC01

    Dado    que estou na tela Home
    Quando  aciono o link Get Savings Now
    Então   será apresentada a tela Home
    