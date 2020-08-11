*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LinkTest
    open browser    http://demo.guru99.com/test/newtours/       chrome
    maximize browser window

    #get link count
    ${linkscount}=    get element count  xpath=//a
    log to console  ${linkscount}

    #get test from each link
    @{linkItems}    create list
    FOR     ${j}    IN  RANGE   1   ${linkscount}+1
        log to console  ${j}
        ${linktext}=  get text  xpath=(//a)[${j}]
        log to console      ${linktext}
    END

