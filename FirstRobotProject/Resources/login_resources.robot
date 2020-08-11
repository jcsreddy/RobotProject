*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://admin-demo.nopcommerce.com/
${browser}      chrome

*** Keywords ***
Open My Browser
    open browser  ${url}    ${browser}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to   ${url}

Enter UserName
    [Arguments]  ${username}
    input text  id=Email            ${username}

Enter Password
    [Arguments]  ${password}
    input password  id=Password     ${password}

Click Login Button
    click element  xpath=//input[@class='button-1 login-button']

Click Logout
    click link  Logout

Success message for valid login
    page should contain     Dashboard

Error message for invalid login
    page should contain     Login was unsuccessful

