*** Settings ***
Library    SeleniumLibrary    
Resource    keywords_LoginSalesforcePage.robot

*** Keywords ***
# Switch To Lightning Page
    # ${currenturl}    Get Location
    # Log    ${currenturl}            
    # Run Keyword If    'salesforce.com' in '${currenturl}'
    # ...     Click Element    ${click_SwitchToLightning}
            # Wait Until Element Is Visible    ${click_ViewProfile}
            # Wait Until Page Contains    Home    
            # Capture Page Screenshot
    
# Login Into Application
    # # [Arguments]           ${url}        ${browser}        ${username}        ${password}    
    # Enter The UserName    ${username}
    # Enter The Password    ${password}
    # Click The Login Button
               
Switch To Opportunies Page
    # Sleep    5
    Wait Until Element Is Visible    ${click_AppLauncher}        
    Click Element    ${click_AppLauncher}
    Wait Until Page Contains    Apps
    Wait Until Page Contains    Service
    Wait Until Page Contains    Marketing    
    # Sleep    5
    Wait Until Element Is Visible    ${text_SearchAppsAndItems}
    # Capture Page Screenshot
    Input Text    ${text_SearchAppsAndItems}    Opportunities
    Wait Until Page Contains    Items
    Wait Until Page Contains    Opportunities
    Wait Until Page Contains    View All
    Capture Page Screenshot    
    Click Element    //b[contains(text(),'Opportunities')]
    # Sleep    5
    Wait Until Page Contains    Opportunities
    Wait Until Page Contains    New
    Capture Page Screenshot  