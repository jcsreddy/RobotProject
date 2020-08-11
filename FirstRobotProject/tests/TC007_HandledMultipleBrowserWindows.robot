*** Settings ***
Library     SeleniumLibrary
Library     SeleniumLibrary

*** Test Cases ***
Handle Multiple Browser Windows
    open browser    https://google.com       chrome
    maximize browser window
    sleep   2
    open browser    https://gmail.com       chrome
    maximize browser window
    sleep   2
    switch browser      1
    ${title1}=      get title
    log to console      ${title1}
    sleep   2
    switch browser      2
    ${title2}=      get title
    log to console      ${title2}

    close all browsers