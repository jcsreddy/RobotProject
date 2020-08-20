*** Settings ***
Library    RequestsLibrary    
Library    Collections 

*** Variables ***
${baseurl}    http://jsonplaceholder.typicode.com
${uri}        /users

*** Test Cases ***
Validate Headers
    Create Session    mysession    ${baseurl}
    # Set Global Variable     ${response}
    ${response}=    Get Request    mysession    ${uri}  
    Log To Console    ${response} 
    Log To Console    ${response.headers}
    Log To Console    ${response.status_code}        
    ${Content-Type-Value}=    Get From Dictionary    ${response.headers}    Content-Type
    Log To Console    ${Content-Type-Value}
    Should Be Equal    ${Content-Type-Value}    application/json; charset=utf-8

    #Displays all the cookies in response
    Log To Console    ${response.cookies}
    
    #Display specific cookie details like Name, Value, Domian, Path, ...
    ${Cookie-Value}=  Get From Dictionary    ${response.cookies}    __cfduid
    Log To Console    ${Cookie-Value}

    
    # ${Cookie-Expiry}=  Get From Dictionary    ${response.cookies}    false
    # Log To Console    ${Cookie-Expiry}