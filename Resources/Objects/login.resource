*** Settings ***
library                                      SeleniumLibrary

*** Variable ***
${URL}                                       http://automationpractice.com
${BROWSER}                                   chrome

*** Keywords ***
Dado
    [Arguments]  ${KEYWORD}
    Run Keyword  ${KEYWORD}

Quando 
    [Arguments]  ${KEYWORD}
    Run Keyword  ${KEYWORD}

Então
    [Arguments]  ${KEYWORD}
    Run Keyword  ${KEYWORD}

E
    [Arguments]  ${KEYWORD}
    Run Keyword  ${KEYWORD}

Abrir navegador
    [Documentation]  Abri o browser com a página em branco
    Open Browser                             about:blank     ${BROWSER}

Fechar navegador
    Close Browser

que estou na tela Home
    [Documentation]  Direciona para a tela Home e confirma o nome da página
    Go To                                    http://automationpractice.com
    Title Should Be                          My Store

que estou na tela Login - My Store 
    [Documentation]  Aguarda a tela apresentar o elemento, e a página deve conter o elemento e título mencionado abaixo 
    wait until page contains element         css=#center_column > h1  5s 
    Title Should be                          Login - My Store

que estou na tela Contact us
    wait until page contains element         css=#uniform-id_contact  5s 
    page should contain                      Customer service - Contact us
    Title Should be                          Contact us - My Store

aciono o link Get Savings Now
    wait until Element is visible            xpath=//*[@id="header"]/div[1]
    click Element                            xpath=//*[@id="header"]/div[1]

aciono o link Sign in
    [Documentation]  Clica no elemento Sign in
    click element                            css=#header div.header_user_info

clico na imagem Your Logo
    wait until page contains element         xpath=//*[@id="header"]/div[1]
    wait until page contains element         css=#header div.header_user_info
    Title Should be                          My Store
    click element                            css=#header_logo > a > img

aciono o link Contact us   
    click element                            xpath=//*[@id="contact-link"]