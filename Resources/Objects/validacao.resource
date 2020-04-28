*** Settings ***
library                                      SeleniumLibrary
Resource                                     ../Resources/Objects/login.resource

*** Variable ***
${URL}                                       http://automationpractice.com
${BROWSER}                                   chrome
${T_SHIRTS_WOMEN}                            xpath=//*[@id="center_column"]//img
${PRIMEIRO_ITEM}                             css=#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.first-in-line.first-item-of-tablet-line.first-item-of-mobile-line
${PRODUTO_1}                                 css=#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.first-in-line.last-line.first-item-of-tablet-line.first-item-of-mobile-line.last-mobile-line
${PRODUTO_2}                                 css=#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.last-line.last-item-of-tablet-line.last-mobile-line
${PRODUTO_3}                                 css=#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.last-in-line.last-line.first-item-of-tablet-line.last-item-of-mobile-line.last-mobile-line

*** Keywords ***
será apresentada a tela Home
    [Documentation]  Valida se estou na tela home do site
    wait until Element is visible             xpath=//*[@id="header"]/div[1]
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

verifico se os itens da tela T-shirts - My Store são femininos
    page should contain element              xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5//*[contains(text(), "T-shirts")]
    capture element screenshot               xpath=//*[@id="center_column"]//img

verifico se os itens da tela Blouses - My Store são femininos
    page should contain element              css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix > div.product-count
    page should contain element              css=#center_column > ul > li > div > div.right-block > h5 > a
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

verifico se os itens da tela Casual Dresses - My Store são femininos
    page should contain element              css=#center_column > ul > li > div > div.right-block > h5 > a
    page should contain element              css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix > div.product-count
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

verifico se os itens da tela Evening Dresses - My Store são femininos
    page should contain element              css=#center_column > ul > li > div > div.right-block > h5 > a
    page should contain element              css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix > div.product-count
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

verifico se os itens da tela Summer Dresses - My Store são femininos
    [Documentation]  Valida a quantidade de itens, os nomes dos itens e captura as imagens
    page should contain element              css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix > div.product-count
    page should contain element              css=#center_column > ul > li > div > div.right-block > h5 > a
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    page should contain element              css=#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.first-in-line.last-line.first-item-of-tablet-line.first-item-of-mobile-line.last-mobile-line > div > div.right-block > h5 > a
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li[2]/div/div[1]/div/a[1]/img
    page should contain element              css=#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.last-in-line.last-line.first-item-of-tablet-line.last-item-of-mobile-line.last-mobile-line > div > div.right-block > h5 > a
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li[3]/div/div[1]/div/a[1]/img

verifico se os itens da tela Dresses - Casual Dresses - My Store são femininos
    page should contain element              css=#center_column > ul > li > div > div.right-block > h5 > a
    page should contain element              css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix > div.product-count
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

verifico se os itens da tela Dresses - Evening Dresses - My Store são femininos
    page should contain element              css=#center_column > ul > li > div > div.right-block > h5 > a
    page should contain element              css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix > div.product-count
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

verifico se os itens da tela Dresses - Summer Dresses - My Store são femininos
    [Documentation]  Valida a quantidade de itens, os nomes dos itens e captura as imagens
    page should contain element              css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix > div.product-count
    page should contain element              css=#center_column > ul > li > div > div.right-block > h5 > a
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    page should contain element              css=#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.first-in-line.last-line.first-item-of-tablet-line.first-item-of-mobile-line.last-mobile-line > div > div.right-block > h5 > a
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li[2]/div/div[1]/div/a[1]/img
    page should contain element              css=#center_column > ul > li.ajax_block_product.col-xs-12.col-sm-6.col-md-4.last-in-line.last-line.first-item-of-tablet-line.last-item-of-mobile-line.last-mobile-line > div > div.right-block > h5 > a
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li[3]/div/div[1]/div/a[1]/img

verifico se os itens da tela TShirts - My Store são femininos
    page should contain element              css=#center_column > div.content_sortPagiBar.clearfix > div.top-pagination-content.clearfix > div.product-count
    page should contain element              css=#center_column > ul > li > div > div.right-block > h5 > a
    capture element screenshot               xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

será apresentada a tela com os produtos ordenados de forma crescente
    element should not be visible            css=#center_column > ul > p > img
    page should contain element              ${PRIMEIRO_ITEM}
    run Keywords if                          ${PRIMEIRO_ITEM} = ${PRODUTO_3}

será apresentado os produtos no formato de Grid
    page should contain element             css=#grid > a > i
    page should contain element             css=#center_column > ul

    
