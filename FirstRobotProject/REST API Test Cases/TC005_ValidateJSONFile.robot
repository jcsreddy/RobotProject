*** Settings ***
Library    JSONLibrary
Library    OperatingSystem    
Library    Collections        

*** Variables ***

*** Test Cases ***
JOSN File Validation
    ${json_obj}=    Load JSON From File    ./JSONFiles/example.json
    ${options.value}=    Get Value From Json    ${json_obj}    $.quiz.maths.q2.options[3]
    Log To Console    ${options.value}
    Should Be Equal    ${options.value}[0]    4
    ${question.value}=    Get Value From Json    ${json_obj}    $.quiz.maths.q2.options
    Log To Console    ${question.value}
    # Should Be Equal    ${question.value}[0]    5 + 7 = ?      
    ${answer.value}=    Get Value From Json    ${json_obj}    $.quiz.maths.q1.answer
    Log To Console    ${answer.value}
    Should Be Equal    ${answer.value}[0]    12 
    
    