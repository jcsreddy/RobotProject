*** Settings ***
Library    SeleniumLibrary    
Library    DateTime    

*** Test Cases ***
DateAndTime
    ${date}=    Get Time 
    ${plus14}=      Add Time To Date     ${date}  14 days
    # ${date1}=      Convert Date     ${time}
    Log To Console    ${plus14}
    
    # ${DATE_MESSAGE}  get current date  result_format=%A, %d, %Y
    # Log To Console    ${DATE_MESSAGE}    
    
    ${dateinMM/DD/YY}    Convert Date    ${plus14}    result_format=%m/%d/%Y     # %H:%M:%S
    Log To Console    ${dateinMM/DD/YY}
    
    ${dateinDD-MM-YY}    Convert Date    ${plus14}    result_format=%d-%m-%Y     # %H:%M:%S
    Log To Console    Date is...    ${dateinDD-MM-YY}     
    Log    ${dateinDD-MM-YY}
    
    ${NOW}=    Get Time    
    ${dateinDD-MMM-YY}    Convert Date    ${NOW}    result_format=%d-%b-%Y %I-%M %p
    Log To Console    ${dateinDD-MMM-YY}   