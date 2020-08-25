*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
SampleTest
    Open Browser    https://google.com    chrome
    Close Browser