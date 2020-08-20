*** Settings ***
Library    RequestsLibrary    
Library    Collections    
Library    OperatingSystem    

*** Variables ***
${baseurl}         https://certtransaction.elementexpress.com/
${bearer-token}    "Bearer E4F284BFADA11D01A52508ED7B92FFD7EE0905659F5DED06A4B73FC7739B48A287648801"

*** Test Cases ***
BearerTokenTest
    Create Session    mysession    ${baseurl}
    
    ${headers}=    Create Dictionary    Authorization=${bearer-token}    Content-Type=text/xml
    ${response}=    Get Request    mysession    ${bearer-token}  
    Log To Console    ${response}      