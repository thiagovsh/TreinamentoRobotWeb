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
    wait until page contains element         css=#uniform-id_contact  5s 
    page should contain                      Customer service - Contact us
    Title Should be                          Contact us - My Store

valido os elementos do formulário Customer Service - Contact US                                             
    page should contain                      send a message
    page should contain                      Subject Heading
    page should contain element              css=#uniform-id_contact    
    page should contain element              css=#center_column > form > fieldset > div.clearfix > div.col-xs-12.col-md-9 > div > label
    page should contain element              css=#message
    page should contain                      Email address
    page should contain element              css=#email
    page should contain                      Order reference
    page should contain element              css=#id_order
    page should contain                      Attach File
    page should contain element              css=#fileUpload
    page should contain                      Send
    page should contain element              css=#center_column > form > fieldset > div.submit

