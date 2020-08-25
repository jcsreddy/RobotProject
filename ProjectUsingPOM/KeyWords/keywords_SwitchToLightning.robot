*** Settings ***
Library    SeleniumLibrary    
Resource    keywords_LoginSalesforcePage.robot

*** Keywords ***
Switch To Lightning
    Click Element    ${click_SwitchToLightning}
    Wait Until Element Is Visible    ${click_ViewProfile}
    Wait Until Page Contains    Home    
    Capture Page Screenshot 