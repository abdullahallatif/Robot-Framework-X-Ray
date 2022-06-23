*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.aquabottesting.com/index.html
${browser}  chrome


*** Test Cases ***
AquabotTesting_Form

    OPEN BROWSER    ${url}  ${browser}
    maximize browser window

    #click link    class:nav-link page-scroll
    set selenium speed    2seconds
    input text    id:cname      Abdullah
    element should be visible  id:cname

    input text    id:cemail     abdullah.test01@robotframework.com
    element should be visible    id:cemail

    input text    id:cphone     111-123-4567
    element should be visible    id:cphone

    select radio button     cphone-type     cphone-mobile

    input text    id:cmessage   This is a robot framework test project
    select from list by label    cselect    Testing
    select checkbox    csuccess

    element should be visible   id:submit
    click button    id:submit

*** Keywords ***

