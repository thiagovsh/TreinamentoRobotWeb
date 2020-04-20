*** Settings ***
Resource        ../Resources/Objects/login.resource
Resource        ../Resources/Objects/validacao.resource

Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Case ***
TC02: Validar os objetos do formulario Customer Service - Contact Us
    [Tags]  TC02

    Dado     que estou na tela home
    Quando   aciono o link Contact us
    E        que estou na tela Contact us
    Então    valido os elementos do formulário Customer Service - Contact US
