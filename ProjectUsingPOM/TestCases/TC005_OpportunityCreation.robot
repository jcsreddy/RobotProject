*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/pageobject_LoginSalesforce.robot
Resource    ../KeyWords/keywords_LoginSalesforcePage.robot
Resource    ../KeyWords/keywords_LogIntoApplication.robot
Resource    ../KeyWords/keywords_SwitchToLightning.robot
Resource    ../KeyWords/keywords_SwitchToOpportunites.robot
Resource    ../KeyWords/keywords_SwitchToClassic.robot
# Library     DataDriver    ../TestData/LoginData_Salesforce.xlsx    sheet_name=Sheet1
Suite Setup       Open The Browser      ${url}        ${browser}
Suite Teardown    Close The Browser
# Test Template     Login Template

    
*** Test Cases ***
Login Salesforce Test
    Login Into Application 
    Switch To Lightning Page
    Switch To Opportunies Page         