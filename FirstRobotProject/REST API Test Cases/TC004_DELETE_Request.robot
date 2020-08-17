*** Settings ***
Library        RequestsLibrary
Library        JSONLibrary
Library        Collections
Library        certifi
Library        urllib3    
*** Variables ***
${baseurl}        https://reqres.in
${relativeuri}    /api/users
${resourcename}   /2

*** Test Cases ***
DELETE Resource
    Create Session    deletesession       ${baseurl}
    ${body}=    Create Dictionary    name=sekharreddy    job=automation
    ${header}=    Create Dictionary    content-type=application/json
    ${response}=    Delete Request    deletesession    ${relativeuri}${resourcename}    data=${body}     headers=${header}
    
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response}
    
    #Response Validation
    ${status_code}=    Convert To String    ${response.status_code}   
    Should Be Equal As Strings     ${response.status_code}    204
    
    ${response_reason}=    Convert To String    ${response.reason}
    Should Contain    ${response_reason}    No Content