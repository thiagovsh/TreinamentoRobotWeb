*** Settings ***
library                                      SeleniumLibrary

*** Variable ***
${URL}                                       http://automationpractice.com
${BROWSER}                                   chrome

*** Keywords ***
Abrir navegador
    Open Browser                             about:blank     ${BROWSER}

Fechar navegador
    Close Browser

que estou na tela Home
    Go To                                    http://automationpractice.com
    Title Should Be                          My Store

aciono o link Get Savings Now
    wait until Element is visible            xpath=//*[@id="header"]/div[1]
    click Element                            xpath=//*[@id="header"]/div[1]
    
será apresentada a tela Home
   Title Should Be                           My Store

aciono o link Contact us
    click element                            xpath=//*[@id="contact-link"]

que estou na tela Contact us
    page should contain                      Customer service - Contact us
    Title Should be                          Contact us - My Store

valido os elementos do formulário Customer Service - Contact US
    page should contain                      send a message
    page should contain                      Subject Heading
  

    #wait until element is visible            ="logo img-responsive" src="http://automationpractice.com/img/logo.jpg" alt="My Store" width="350" height="99">
    
