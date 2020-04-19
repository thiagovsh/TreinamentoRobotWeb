*** Settings ***
library                                      SeleniumLibrary

*** Variable ***
${URL}                                       http://automationpractice.com
${BROWSER}                                   chrome

*** Keywords ***
será apresentada a tela Home
   Title Should Be                           My Store

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

valido os elementos do formulário Authentication
    page should contain element              css=#create-account_form
    page should contain element              css=#create-account_form > div > div.form-group > label
    page should contain element              css=#email_create
    page should contain element              css=#create-account_form > div > div.submit
    page should contain element              css=#login_form > h3
    page should contain element              css=#login_form > div > div:nth-child(1) > label
    page should contain element              css=#email
    page should contain element              css=#login_form > div > div:nth-child(2) > label
    page should contain element              css=#login_form > div > p.lost_password
    page should contain element              css=#SubmitLogin