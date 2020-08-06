from selenum import webdriver
*** Settings ***
Library    SeleniumLibrary
Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite TearDown   
Test Setup    Log    I am inside Test Setup    
Test Teardown    Log    I am insite Test TearDown

Default Tags    Smoke         

*** Variables ***
${Browse}    chrome
${URL}    https://opensource-demo.orangehrmlive.com/
@{Credentials}    Admin    admin123
&{LoginData}    username=Admin    password=admin123

*** Test Cases ***
MyFirstTest
    [Tags]    Regression
    Log    Hello World...
    
MyFirstSeleniumTest        
    Open Browser                 https://google.com      ${Browse}
    #Set Browser Implicit Wait                             5
    Input Text                    name=q                  robotframework
    Press Keys                    name=q                  ENTER
    # Click Button    name=btnk        
    Sleep    2    
    Close All Browsers
    # % is used for Environment variables
    Log    This test was run by %{username} on %{os}    

MyLastTest
    [Tags]    Sanity
    Log    I am in the last test
          
SampleLoginTest
    [Documentation]    This is a sample login test
    Open Browser    ${URL}    ${Browse}
    Maximize Browser Window
    LoginKeyWords
    Click Element     id=welcome
    Wait Until Element Is Visible    link=Logout    
    Click Element     link=Logout
    Close Browser
    Log    This test was run by %{username} on %{os}
    Set Tags    Login Test Tag

*** Keywords ***
LoginKeyWords
    Input Text        id=txtUsername        @{Credentials}[0]
    Input Password    id=txtPassword        &{LoginData}[password]
    Click Button      id=btnLogin            

