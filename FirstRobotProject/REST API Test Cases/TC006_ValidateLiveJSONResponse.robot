*** Settings ***
Library    JSONLibrary        
Library    RequestsLibrary    
Library    OperatingSystem
Library    Collections        

*** Variables ***
${base_url}        https://restcountries.eu
${endpoint}        /rest/v2/name
${arguement}       /india

*** Test Cases ***
Validate Live Response
    Create Session    mysession    ${base_url}
    ${response}=    Get Request    mysession    ${endpoint}${arguement}
    ${json_object}=    To Json    ${response.content}    
    Log To Console    ${json_object}
    
    #Validations
    ${country}=    Get Value From Json    ${json_object}    $.[0].demonym
    Should Be Equal    ${country}[0]    Indian    
    Log To Console    ${country}
    
    ${regionalbloc_name}=    Get Value From Json    ${json_object}    $.[1].regionalBlocs[0].name
    Should Be Equal    ${regionalbloc_name}[0]    South Asian Association for Regional Cooperation
    Log To Console    ${regionalbloc_name}
    
    #Validation of single data in an Array
    ${borders}=    Get Value From Json    ${json_object}    $.[1].borders[1]
    Should Be Equal    ${borders}[0]    BGD    
    Log To Console    ${borders}
    
    #Validation of multiple data in an Array
    ${borders_multiplevalues}=    Get Value From Json    ${json_object}    $.[1].borders
    Should Contain Any    ${borders_multiplevalues}[0]    BGD    AFG    CHN    PAK
    Should Not Contain Any    ${borders_multiplevalues}[0]    ABC    
    Log To Console    ${borders_multiplevalues}
    
    
                