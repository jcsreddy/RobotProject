*** Settings ***
# Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup       Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpwd}    ${dbhost}    ${dbport}    
Suite Teardown    Disconnect From Database

*** Variables ***
${dbname}    mydb
${dbuser}    root
${dbpwd}     sekhar1@reddy
${dbhost}    localhost    #127.0.0.1
${dbport}    3306         #default port number where mysql run is 3306

*** Test Cases ***
# Create Person Table
    # ${output}=    Execute Sql String
    # ...    Create table ${dbname}.person(id integer, first_name varchar(20), last_name varchar(20))
    # Log To Console    ${output}
    # Should Be Equal As Strings    ${output}    None

# Insert Single Row Into Person Table
    # #Single record insertion
    # ${output}=    Execute Sql String    Insert into person values(1, 'Sekhar', 'Reddy')
    # Log To Console    ${output}
    # Should Be Equal As Strings    ${output}    None    
    
# Insert Multile Rows Into Person Table
    # #Single record insertion
    # ${output}=    Execute Sql Script    ./TestData/mydb_person_insertData.sql    
    # Log To Console    ${output}
    # Should Be Equal As Strings    ${output}    None   
    
# Selecting data from Person Table
    # ${output}=    Execute Sql String    select * from ${dbname}.person where id=103
    # Log To Console    ${output}        

# Check Person Table exists in mydb
    # Table Must Exist    Person    
    
# Validating data in Person Table
    # Check If Exists In Database    select * from ${dbname}.person where id=103
    
# Validate RowCount is 0
    # Row Count Is 0    select * from ${dbname}.person where id=100         
    # Row Count Is Equal To X    select * from ${dbname}.person where id=101     1
    # Log To Console    Row Count    select * from ${dbname}.person            

# Update data in Person Table
    # ${output}=    Execute Sql String
    # ...    update ${dbname}.person set first_name = "Sekhar" where id=101
    # Log To Console    ${output}
    # Should Be Equal As Strings    ${output}    None 
    
Retrieve records from Person table
    @{list}=    Query    select * from person
    Log Many   @{list}    
    
Delete records from Person table
    ${output}=    Execute Sql String    delete from person
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None                
            
# Drop or Delete Table
    # Execute Sql String    drop table person
    