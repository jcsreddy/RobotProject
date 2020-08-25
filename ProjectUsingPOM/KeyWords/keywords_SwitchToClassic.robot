*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/pageobject_LoginSalesforce.robot

*** Keywords ***
Switch To Classic
    Log To Console    We are into Switch To Classic
    Wait Until Element Is Visible    ${click_ViewProfile}
    Wait Until Page Contains    Home    
    Click Element                    ${click_ViewProfile}
    Wait Until Page Contains    Log Out
    Wait Until Element Is Visible    ${click_SwitchToClassic}    
    Click Element                    ${click_SwitchToClassic}
    Page Should Contain    Switch to Lightning Experience
    Capture Page Screenshot