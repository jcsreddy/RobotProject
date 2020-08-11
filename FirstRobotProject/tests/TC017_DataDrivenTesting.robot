*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup         Open My Browser
Suite Teardown      Close Browsers
Test Template       InvalidLogin

*** Test Cases ***      uname       pwd
Correct username with empty password    admin@yourstore.com     ${EMPTY}
Correct username with wrong password    admin@yourstore.com     123
Empty username with correct password    ${EMPTY}                admin
Wrong username with correct password    123                     admin
Wrong username with wrong password      123                     123

*** Keywords ***
InvalidLogin
    [Arguments]  ${uname}    ${pwd}
    Enter UserName  ${uname}
    Enter Password  ${pwd}
    Click Login Button
    Error message for invalid login
