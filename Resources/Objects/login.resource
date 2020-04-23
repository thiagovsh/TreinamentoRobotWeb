*** Settings ***
library               SeleniumLibrary

*** Variable ***
${URL}                http://automationpractice.com
${BROWSER}            chrome
${LINK_WOMAN_HOME}    css=#block_top_menu > ul > li:nth-child(1) > a

*** Keywords ***
Dado
    [Documentation]  Keyword para ser utilizada no BDD
    [Arguments]                         ${KEYWORD}
    Run Keyword                         ${KEYWORD}

Quando
    [Documentation]  Keyword para ser utilizada no BDD
    [Arguments]                         ${KEYWORD}
    Run Keyword                         ${KEYWORD}

Então
    [Documentation]  Keyword para ser utilizada no BDD
    [Arguments]                         ${KEYWORD}
    Run Keyword                         ${KEYWORD}

E
    [Documentation]  Keyword para ser utilizada no BDD
    [Arguments]                         ${KEYWORD}
    Run Keyword                         ${KEYWORD}

Abrir navegador
    [Documentation]  Abri o browser com a página em branco
    Open Browser                        about:blank                                                                                           ${BROWSER}
    maximize browser window

Fechar navegador
    [Documentation]  Fecha o navegador
    Close Browser

que estou na tela Home
    [Documentation]  Direciona para a tela Home e confirma o nome da página
    Go To                               http://automationpractice.com
    Title Should Be                     My Store

que estou na tela Login - My Store
    [Documentation]  Aguarda a tela apresentar o elemento, e a página deve conter o elemento e título mencionado abaixo
    wait until page contains element    css=#center_column > h1                                                                               5s
    Title Should be                     Login - My Store

que estou na tela Contact us
    wait until page contains element    css=#uniform-id_contact                                                                               5s
    page should contain                 Customer service - Contact us
    Title Should be                     Contact us - My Store

estou na tela Blouses - My Store
    wait until page contains element    css=#center_column > div.content_scene_cat                                                            5s
    page should contain                 Catalog
    Title Should be                     Blouses - My Store

estou na tela T-shirts - My Store
    wait until page contains element    css=#center_column > h1 > span.cat-name                                                               5s
    page should contain                 Catalog
    Title Should be                     T-shirts - My Store

estou na tela Casual Dresses - My Store
    wait until page contains element    css=#center_column > h1 > span.cat-name
    page should contain                 Catalog
    Title Should be                     Casual Dresses - My Store

estou na tela Evening Dresses - My Store
    [Documentation]       valida se estou na tela Evening Dresses
    wait until page contains element    css=#center_column > h1 > span.cat-name
    page should contain                 Catalog
    Title Should be                     Evening Dresses - My Store

estou na tela Summer Dresses - My Store
    [Documentation]       valida se estou na tela Summer Dresses
    wait until page contains element    css=#center_column > div.content_scene_cat > div
    page should contain                 Catalog
    Title Should be                     Summer Dresses - My Store
    page should contain element         css=#center_column > h1 > span.cat-name

estou na tela Dresses Casual Dresses - Catalog
    [Documentation]       valida se estou na tela Casual Dresses, espero a tela ser apresentada  ...
    ...                   verifico se está sendo apresentado o Catalog, verifico o título
    wait until page contains element    css=#center_column > h1 > span.cat-name
    page should contain                 Catalog
    Title Should be                     Casual Dresses - My Store

estou na tela Dresses Evening Dresses - Catalog
    [Documentation]       valida se estou na tela Evening Dresses, espero a tela ser apresentada  ...
    ...                   verifico se está sendo apresentado o Catalog, verifico o título
    wait until page contains element    css=#center_column > h1 > span.cat-name
    page should contain                 Catalog
    Title Should be                     Evening Dresses - My Store

estou na tela Dresses Summer Dresses - Catalog
    [Documentation]       valida se estou na tela Summer Dresses, espero a tela ser apresentada  ...
    ...                   verifico se está sendo apresentado o Catalog, verifico o título
    wait until page contains element    css=#center_column > h1 > span.cat-name
    page should contain                 Catalog
    Title Should be                     Summer Dresses - My Store
  
aciono o link Get Savings Now
    wait until Element is visible       xpath=//*[@id="header"]/div[1]
    click Element                       xpath=//*[@id="header"]/div[1]

aciono o link Sign in
    [Documentation]  clico na opção Sign in
    click element                       css=#header div.header_user_info

aciono o link Contact us
    [Documentation]  clico na opção Contact us
    click element                      css=#contact-link > a
    
clico na imagem Your Logo
    wait until page contains element    xpath=//*[@id="header"]/div[1]
    wait until page contains element    css=#header div.header_user_info
    Title Should be                     My Store
    click element                       css=#header_logo > a > img

passo o cursor sobre a opção Women
    [Documentation]  move o mouse até a opção Women sem clicar apresentando as opções que posso clicar
    mouse over                          css=#block_top_menu > ul > li:nth-child(1) > a

passo o cursor sobre a opção Dresses
    [Documentation]  move o mouse até a opção Dresses sem clicar apresentando as opções que posso clicar
    mouse over                          css=#block_top_menu > ul > li:nth-child(2) > a

seleciono a opção T-shirts
    [Documentation]  clico na opção T-shirts
    click element                       xpath=//*[@id="block_top_menu"]/ul/li[1]/ul/li[1]/ul/li[1]/a

seleciono a opção Blouses
    [Documentation]  clico na opção Blouses
    click element                       css=#block_top_menu > ul > li:nth-child(1) > ul > li:nth-child(1) > ul > li:nth-child(2) > a

seleciono a opção Casual Dresses
    [Documentation]  clico na opção Casual Dresses
    click element                       css=#block_top_menu > ul > li:nth-child(1) > ul > li:nth-child(2) > ul > li:nth-child(1) > a

seleciono a opção Evening Dresses
    [Documentation]  clico na opção Evening Dresses
    click element                       css=#block_top_menu > ul > li:nth-child(1) > ul > li:nth-child(2) > ul > li:nth-child(2) > a

seleciono a opção Summer Dresses
    [Documentation]  clico na opção Summer Dresses
    click element                       css=#block_top_menu > ul > li:nth-child(1) > ul > li:nth-child(2) > ul > li:nth-child(3) > a

seleciono a opção Dresses - Casual Dresses
    [Documentation]  move o mouse até a opção Dresses sem clicar apresentando as opções que posso clicar, ...
    ...  e clico na opção Casual Dresses

    passo o cursor sobre a opção Dresses
    click element                       css=#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(1) > a

seleciono a opção Dresses - Evening Dresses
    [Documentation]  move o mouse até a opção Dresses sem clicar apresentando as opções que posso clicar, ...
    ...  e clico na opção Evening Dresses

    passo o cursor sobre a opção Dresses
    click element                       css=#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(2) > a

seleciono a opção Dresses - Summer Dresses
    [Documentation]  move o mouse até a opção Dresses sem clicar apresentando as opções que posso clicar, ...
    ...  e clico na opção Summer Dresses

    passo o cursor sobre a opção Dresses
    click element                       css=#block_top_menu > ul > li:nth-child(2) > ul > li:nth-child(3) > a

seleciono a opção T-Shirts - T-Shirts
    [Documentation]  clico na opção T-shirts
    click element                       xpath=//*[@id="block_top_menu"]/ul/li[3]/a



