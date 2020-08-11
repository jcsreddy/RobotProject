*** Settings ***
Library     SeleniumLibrary
Library     SeleniumLibrary

*** Test Cases ***
Handle Frames
    open browser        https://seleniumhq.github.io/selenium/docs/api/java/index          chrome
    maximize browser window
#    Frames can be located using id, name, and xpath

#    selecting 1st frame by name
    select frame    packageListFrame        #name
    click link      org.openqa.selenium
    unselect frame

    sleep  2

#    selcting 2nd frame by name
    select frame    packageFrame        #name
    click link      WebDriver
    unselect frame

    sleep  2

#    selecting 3rd frame by name / xpath / id
    select frame    classFrame          #name
    click link      Help
#    assert page contains    org.openqa.selenium
    wait until page contains         Overview
    unselect frame

    close browser