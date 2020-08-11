*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver  ../TestData/LoginData.csv

Suite Setup     Open My Browser
Suite Teardown  Close Browsers
Test Template   InvalidLogin

*** Variables ***
${username}
${password}

*** Test Cases ***
LoginTestWithCSV  ${username}    ${password}            #supports robotframework-datadriver 0.3.1

*** Keywords ***
InvalidLogin
    [Arguments]     ${username}    ${password}          #These attributes should match with excel header names
    Enter UserName  ${username}
    Enter Password    ${password}
    Click Login Button
    Error message for invalid login