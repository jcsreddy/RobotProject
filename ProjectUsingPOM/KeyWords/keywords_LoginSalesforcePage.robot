*** Settings ***
Library    SeleniumLibrary    
Resource    ../PageObjects/pageobject_LoginSalesforce.robot

*** Keywords ***
Open The Browser
    [Arguments]    ${url}    ${browser}
    Open Browser   ${url}    ${browser}
    Maximize Browser Window

Enter The UserName
     [Arguments]    ${username}
     Input Text     ${text_UserName}    ${username}
     
Enter The Password
     [Arguments]        ${password}
     Input Password     ${text_Password}    ${password}
     
Click The Login Button
    Click Button       ${clickbutton_Login}
    
Capture My Screenshot
    Capture Page Screenshot    

Close The Browser
    Close All Browsers