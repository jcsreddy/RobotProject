*** Settings ***
Library    SeleniumLibrary   
Library    DateTime    

*** Test Cases ***
Calculations
    # Open Browser    https://google.com    chrome
    # Close Browser
    ${result1}=    Convert To Integer    2244    
    Log To Console    ${result1}  
    ${result2}=    Convert To Number    1234.567   
    Log To Console    ${result2}  
    
    ${addition}=     Evaluate  ${result1}+${result2}
    Log To Console    ${addition}
    
    ${subtraction}=     Evaluate  ${result1}-${result2}
    Log To Console    ${subtraction}
    
    ${multiplication}=     Evaluate  ${result1}*${result2}
    Log To Console    ${multiplication}
    
    ${useint}=    Evaluate    float(${result1})+int(${result2})
    Log To Console    ${useint}  
    
    ${division}=    Evaluate     30 / 4  
    Log To Console    ${division}
    
    ${reminder}=    Evaluate     30 % 4  
    Log To Console    ${reminder}
    