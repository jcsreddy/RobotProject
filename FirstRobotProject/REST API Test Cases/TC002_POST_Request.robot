*** Settings ***
Library        RequestsLibrary
Library        JSONLibrary
Library        Collections

*** Variables ***
${baseurl}        https://reqres.in
${relativeuri}    /api/users
${resourcename}   /2

*** Test Cases ***
POST Resource
    Create Session    postsession       ${baseurl}
    ${body}=      Create Dictionary    name=sekhar    job=automation
    ${header}=    Create Dictionary    content-type=application/json
    ${response}=    Post Request    postsession    ${relativeuri}    data=${body}     headers=${header}
    
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response}
    
    #Response Validation
    ${status_code}=    Convert To String    ${response.status_code}   
    Should Be Equal As Strings     ${response.status_code}    201
    
    ${response_reason}=    Convert To String    ${response.reason}
    Should Contain    ${response_reason}    Created
    
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
    
    ${response_reason}=    Convert To String    ${response.reason}
    Should Contain    ${response_reason}    OK