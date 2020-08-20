*** Settings ***
Library    RequestsLibrary    
Library    Collections    

*** Variables ***
${baseurl}    https://postman-echo.com     #http://restapi.demoqa.com
${uri}        /basic-auth                  #/authentication/CheckForAuthentication

*** Test Cases ***
BasicAuthTest
    ${auth}=    Create List    postman    password    #ToolsQA    TestPassword
    Create Session    mysession    ${baseurl}    auth=${auth}
    ${response}=    Get Request    mysession    ${uri}    
    Log To Console    ${response.content}
    Should Be Equal As Strings    ${response.status_code}    200        