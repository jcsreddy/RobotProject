*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handle Alerts
#    open browser        http://testautomationpractice.blogspot.com          chrome
#    maximize browser window
#    click element   xpath=//button[text()='Click Me']
#    set selenium speed      3
#    handle alert    accept
#    close browser

    open browser        http://testautomationpractice.blogspot.com          chrome
    maximize browser window
    click element   xpath=//button[text()='Click Me']
    set selenium speed      3
#    handle alert    leave
    alert should be present     Press a button!
    click element   xpath=//button[text()='Click Me']
    handle alert    dismiss
    close browser