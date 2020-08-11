*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
HandleTables
    open browser    http://testautomationpractice.blogspot.com/     headless chrome
    maximize browser window
    wait until page contains  HTML Table
    scroll element into view  xpath=//table[@name='BookTable']
    ${rows}=    get element count  xpath=//table[@name='BookTable']/tbody/tr
    ${cols}=    get element count  xpath=//table[@name='BookTable']/tbody/tr[1]/th
    ${data}=    get text  xpath=//table[@name='BookTable']/tbody/tr[4]/td[3]
    log to console  There are ${rows} rowns and ${cols} columns
    log to console  The data in table is...${data}

    #verify column names
    table column should contain  xpath=//table[@name='BookTable']  2   Author

    #verify row names
    table row should contain  xpath=//table[@name='BookTable']/tbody/tr[3]/td[1]  3   Learn Java

    table cell should contain  xpath=//table[@name='BookTable']     5   2   Mukesh

    table header should contain  xpath=//table[@name='BookTable']   BookName

    close browser