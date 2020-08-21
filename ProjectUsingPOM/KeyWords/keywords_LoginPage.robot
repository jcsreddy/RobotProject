*** Settings ***
Library         SeleniumLibrary
Resource        ../PageElements/elements_LoginPage.robot
Resource        ../PageElements/browser.robot

*** Keywords ***
Open My Browser
    [Arguments]     ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Enter UserName
    [Arguments]    ${username}
    Input Text     ${text_loginUserName}    ${username}

Enter Password
    [Arguments]        ${password}
    Input Password     ${text_loginPassword}     ${password}

Click Submit Button
    Click Button    ${btn_submitButton}    

Verify successful login
    Page Should Contain    Dashboard
    Title Should Be        OrangeHRM

Capture My Page Screenshot
    Capture Page Screenshot        
       
Close My Browser
    Close All Browsers                 