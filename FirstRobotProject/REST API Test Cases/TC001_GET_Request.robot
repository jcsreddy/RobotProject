*** Settings ***
Library        RequestsLibrary
Library        JSONLibrary
Library        Collections    

*** Variables ***
${baseurl}        https://reqres.in
${relativeuri}    /api/users
${resourcename}   2

*** Test Cases ***
GET Resource
    Create Session    getsession       ${baseurl}
    ${getresponse}=    Get Request     getsession          ${relativeuri}/${resourcename}
    
    #Capture status code, content and header from response.
    
    Log To Console    ${getresponse.status_code}    
    Log               ${getresponse.status_code} 
    Log To Console    ${getresponse.content}
    Log               ${getresponse.content}
    Log To Console    ${getresponse.headers}
    Log               ${getresponse.headers}
    
    #Validation of status code
    ${status_code}=    Convert To String    ${getresponse.status_code}
    Should Be Equal As Strings     ${getresponse.status_code}    200
    Should Be Equal    ${status_code}    200  
    
    #Validation of content by searching for a specific keyword from respnse
    ${content}=    Convert To String    ${getresponse.content}
    Should Contain    ${content}    janet.weaver@reqres.in          
    Should Contain    ${content}    ${resourcename}
    
    ${content-type}=    Get From Dictionary    ${getresponse.headers}    Content-Type
    Should Contain     ${content-type}    application/json        
    
             