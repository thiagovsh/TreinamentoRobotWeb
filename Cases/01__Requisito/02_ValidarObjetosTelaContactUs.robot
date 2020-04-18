*** Settings ***
Resource         ../Resources/Objects/login.resource
Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Case ***
TC02: Validar os objetos do formulario Customer Service - Contact Us
    [Tags]  TC02

    Given que estou na tela home
    When aciono o link Contact us
    And que estou na tela Contact us
    Then valido os elementos do formulário Customer Service - Contact US
