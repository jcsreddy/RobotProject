*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  http://demo.guru99.com/test/newtours
${browser}  chrome

*** Keywords ***
launchTheBrowser
    open browser    ${url}      ${browser}
    maximize browser window

closeTheBrowser
    close browser