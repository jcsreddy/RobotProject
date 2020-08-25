*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/pageobject_LoginSalesforce.robot
Resource    ../KeyWords/keywords_LoginSalesforcePage.robot
Resource    ../KeyWords/keywords_SwitchToClassic.robot
Resource    ../KeyWords/keywords_SwitchToLightning.robot
Library     DataDriver    ../TestData/LoginData_Salesforce.xlsx    sheet_name=Sheet1
Suite Setup       Open The Browser      ${url}        ${browser}
Suite Teardown    Close The Browser
Test Template     Login Template
    
*** Test Cases ***
Login Salesforce Test     ${url}        ${browser}        ${username}        ${password}            
    
*** Keywords ***
Login Template
    [Arguments]           ${url}        ${browser}        ${username}        ${password}    
    Enter The UserName    ${username}
    Enter The Password    ${password}
    Click The Login Button       
    ${currenturl}    Get Location
    Log    ${currenturl}            
    Run Keyword If    'lightning.force.com' in '${currenturl}'    Switch To Classic
    ${currenturl}    Get Location    
    Run Keyword If    'salesforce.com' in '${currenturl}'     Switch To Lightning