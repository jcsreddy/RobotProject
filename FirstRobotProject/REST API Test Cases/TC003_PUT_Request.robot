*** Settings ***
Library        RequestsLibrary
Library        JSONLibrary
Library        Collections

*** Variables ***
${baseurl}        https://reqres.in
${relativeuri}    /api/users
${resourcename}   /2

*** Test Cases ***
PUT Resource
    Create Session    putsession       ${baseurl}
    ${body}=    Create Dictionary    name=sekharreddy    job=automation
    ${header}=    Create Dictionary    content-type=application/json
    ${response}=    PUT Request    putsession    ${relativeuri}${resourcename}    data=${body}     headers=${header}
    
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response}
    
    #Response Validation
    ${status_code}=    Convert To String    ${response.status_code}   
    Should Be Equal As Strings     ${response.status_code}    200
    
    ${reason}=    Convert To String    ${response.reason}
    Should Contain    ${reason}    OK
    
    ${content}=    Convert To String    ${response.content}
    Should Contain    ${content}    sekharreddy    automation
    
