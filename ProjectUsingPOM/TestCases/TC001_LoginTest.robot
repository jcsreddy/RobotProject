*** Settings ***
Resource   ../KeyWords/keywords_LoginPage.robot
Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet1
Test Setup    keywords_LoginPage.Open My Browser   ${url}    ${browser}    #headless chrome
Test Teardown    keywords_LoginPage.Close My Browser
Test Template    Login Template 

*** Test Cases ***
Login Into Application    ${url}    ${browser}    ${username}    ${password}
    
*** Keywords ***
Login Template
    [Arguments]    ${url}    ${browser}    ${username}    ${password}
    # Open My Browser   ${url}    ${browser}    #headless chrome
    # keywords_LoginPage.Enter UserName    ${username}
    Enter UserName    ${username}
    Enter Password    ${password}
    Click Submit Button
    Verify successful login
    Capture My Page Screenshot    
    # Close My Browser   
    