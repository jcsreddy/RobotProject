*** Settings ***
Library    RequestsLibrary    
Library    Collections    
Library    OperatingSystem    

*** Variables ***
${baseurl}         https://maps.googleapis.com
${requesturi}      /maps/api/place/nearbysearch/json?
${APIKey}          AIzaSyBEKpaVIEwswSc2tKVuIX8aexeLUYbWN1E    

*** Test Cases ***
APIKeyTest
    Create Session    mysession    ${baseurl}
    ${params}=    Create Dictionary    location=-33.8670522,151.1957362    radius=500      types=food    name=harbour    key=${APIKey}
    ${response}=    Get Request    mysession    ${requesturi}    params=${params}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}       