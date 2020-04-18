*** Settings ***
Resource              ../Resources/Objects/login.resource
Test Setup            Abrir navegador
Test Teardown         Fechar navegador   

*** Test Case ***
TC04: Validar o direcionamento do link Get Savings Now
    [Tags]  TC04
    Dado     que estou na tela "Home"
    Quando   clico na imagem "  "
    Então    será apresentada a tela "Home"