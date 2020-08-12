*** Settings ***
Library        SeleniumLibrary
Suite Setup    Log To Console    Open Browser    
Suite Teardown    Log To Console    Close Browser 
    
Test Setup    Log To Console    Log into Application    
Test Teardown    Log To Console    Log out of Application    

*** Test Cases ***
First Test Case
    Log To Console    This is First Test Case    
    
Second Test Case
    Log To Console    This is Second Test Case
    
Third Test Case
    Log To Console    This is Third Test Case