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
    
# Switch To Classic
    # Log To Console    We are into Switch To Classic
    # Wait Until Element Is Visible    ${click_ViewProfile}
    # Wait Until Page Contains    Home    
    # Click Element                    ${click_ViewProfile}
    # Wait Until Page Contains    Log Out
    # Wait Until Element Is Visible    ${click_SwitchToClassic}    
    # Click Element                    ${click_SwitchToClassic}
    # Page Should Contain    Switch to Lightning Experience
    # Capture Page Screenshot    

# Switch To Lightning
    # Click Element    ${click_SwitchToLightning}
    # Wait Until Element Is Visible    ${click_ViewProfile}
    # Wait Until Page Contains    Home    
    # Capture Page Screenshot    
        