*** Settings ***
library  SeleniumLibrary

*** Variable ***
${URL}  https://google.com
${user} thiago
${pwd}  thiago

*** Keywords ***
Logar no portal xpto
    Open Browser  chrome ${URL}
    input text ${user}  ${Login.user}
    input password 
    click Element 
 
