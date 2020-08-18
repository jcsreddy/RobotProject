*** Settings ***
Library    XML        
Library    RequestsLibrary    
Library    OperatingSystem
Library    Collections        

*** Variables ***
${base_url}        https://restcountries.eu
${endpoint}        /rest/v2/name
${arguement}       /india

*** Test Cases ***
XML Validations
    ${response}=    Parse Xml    ./XMLFiles/response.xml
    Log To Console    ${response}
    ${author}=    Get Element Text    ${response}    .//book[1]/author
    Log To Console    ${author}
    Should Be Equal    ${author}    Gambardella, Matthew
    
    Element Text Should Be    ${response}    Computer    .//book[1]/genre
    # Log To Console    ${genre}        
    
    ${element_count}=    Get Element Count    ${response}    .//book
    Log To Console    ${element_count}
    Should Be Equal As Integers    ${element_count}    12
    
    ${child_elements}=    Get Child Elements    ${response}    .//book[1]
    Log To Console    ${child_elements}
    Should Not Be Empty    ${child_elements}      
    
    ${element_attribute}=     Get Element Attribute    ${response}    id    .//book[1]
    Should Be Equal    ${element_attribute}    bk101    
    Log To Console     ${element_attribute}
    
    Element Attribute Should Be    ${response}    id    bk101    .//book[1]        
    
                            