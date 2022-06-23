*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.aquabottesting.com/index.html
${browser}  chrome

*** Test Cases ***
AquabotTesting_PopUpWindow

    open browser    ${url}   ${browser}
    maximize browser window

    click button    id:pop-up-btn

    select checkbox    checkbox
    element should contain    id:pop-up     Experiment with pop-ups

    select checkbox    id:checkbox
    checkbox should be selected    id:checkbox

    input text    id:etext  Popup window test
    element should be visible    id:etext

    select from list by label    id:colors  Green

    click button    id:validate


*** Keywords ***
