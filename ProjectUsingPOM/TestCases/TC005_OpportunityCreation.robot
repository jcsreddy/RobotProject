*** Settings ***
Library     SeleniumLibrary
Library    Dialogs    
Resource    ../PageObjects/pageobject_LoginSalesforce.robot
Resource    ../PageObjects/pageobject_Opportunity.robot
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
    # Dialogs.Pause Execution
    # Sleep  5 
    Wait Until Page Contains    New    
    Wait Until Page Contains    Opportunity Name
    Wait Until Page Contains    Account Name      
    Click Element    ${click_New}
    Wait Until Page Contains    New Opportunity
    # Sleep  5        
    # Select Radio Button        0122w000000gufaAAA
    # Select Radio Button    group_name    value
    Click Element    //div[3]//label[1]//div[1]//span[1]    
    # Dialogs.Pause Execution
    Click Element    //span[contains(text(),'Next')] 
    # sleep     5   
    Wait Until Page Contains    New Opportunity: Service Sales
    Capture Page Screenshot        
             