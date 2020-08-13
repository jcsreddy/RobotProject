*** Settings ***
Library          SeleniumLibrary
Variables        ../PageElements/Locators.py
# Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet1

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
    
Close My Browser
    Close All Browsers                 