*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demo.guru99.com/test/newtours
${browser}  chrome

*** Test Cases ***
#UserDefinedKeywordWithoutArguements
#    launchTheBrowser
#    input text      name=userName       mercury
#    input password  name=password       mercury
#    closeTheBrowser
#    sleep   3
#
#*** Keywords ***
#launchTheBrowser
#    open browser    ${url}      ${browser}
#    maximize browser window

UserDefinedKeywordWithArguements
    ${pageTitle}=   launchTheBrowserArugements    ${url}      ${browser}
    log to console  ${pageTitle}
    log     ${pageTitle}        #will be printed in report.
    input text      name=userName       mercury
    input password  name=password       mercury
    closeTheBrowser

*** Keywords ***
launchTheBrowserArugements
    #Note:- ${url} value will be passed ${appurl} and ${browser} value will be passed to ${appbrowser}
    [Arguments]     ${appurl}   ${appbrowser}
    open browser    ${appurl}      ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]    ${title}

closeTheBrowser
    close browser