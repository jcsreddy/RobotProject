*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Navigation Test
    open browser    https://google.com          chrome
    maximize browser window
    ${location}=    get location
    log to console  ${location}

    sleep   2

    go to    https://gmail.com
    maximize browser window
    ${location}=    get location
    log to console  ${location}

    sleep   2

    go back
    ${location}=    get location
    log to console  ${location}

    sleep   3
    close all browsers