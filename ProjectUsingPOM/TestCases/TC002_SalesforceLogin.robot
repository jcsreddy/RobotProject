*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/pageobject_LoginSalesforce.robot
Resource    ../KeyWords/keywords_LoginSalesforcePage.robot
Library     DataDriver    ../TestData/LoginData_Salesforce.xlsx    sheet_name=Sheet1
Test Template    Login Template
    
*** Test Cases ***
Login Salesforce Test     ${url}        ${browser}        ${username}        ${password}        
    
*** Keywords ***
Login Template
    [Arguments]           ${url}        ${browser}        ${username}        ${password}
    Open The Browser      ${url}        ${browser}
    Enter The UserName    ${username}
    Enter The Password    ${password}
    Click The Login Button       
    Capture My Screenshot
    ${currenturl}    Get Location
    Log    ${currenturl}            
    Page Should Contain    Getting Started
    Run Keyword If    'ForceCom' in '${currenturl}'     Switch to Lightning 
    Capture My Screenshot   
    Close The Browser
Switch to Lightning
    Click Element    xpath://a[@class='switch-to-lightning']