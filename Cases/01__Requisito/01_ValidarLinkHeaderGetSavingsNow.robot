*** Settings ***
Resource              ../Resources/Objects/login.resource
Test Setup            Abrir navegador
Test Teardown         Fechar navegador

*** Test Case ***
Validar o direcionamento do link Get Savings Now
    [Tags]  TC01

    Given que estou na tela Home
    When aciono o link Get Savings Now
    Then será apresentada a tela Home
    