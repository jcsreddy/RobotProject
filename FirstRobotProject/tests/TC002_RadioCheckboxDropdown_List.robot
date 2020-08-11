*** settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Validate Checkbox Radiobutton List Dropdown

    open browser  ${url}    ${browser}
    maximize browser window

    #Selecting Radio button by Name and Value
    select radio button  sex    Female
    select radio button  exp    4

    #Selecting Checkbox by Name
    select checkbox        BlackTea
    select checkbox        oolongtea
    unselect checkbox      BlackTea


    #Handling Dropdown by Id and Name
    #    scroll element into view  id=continents
    select from list by label  continents   Australia
    select from list by label  continents   North America
    select from list by index  continents   1

    #Handling Listbox by Id and Name
    select from list by label  selenium_commands    Switch Commands     Navigation Commands     Wait Commands
    capture element screenshot  name=selenium_commands
    unselect from list by label     selenium_commands     Switch Commands

    capture page screenshot

    log  Test Completed

    close browser

*** Keywords ***

