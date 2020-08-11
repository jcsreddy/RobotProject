*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handle Tabbed Windows
    open browser    http://demo.automationtesting.in/Windows.html       chrome
    maximize browser window
    click element       xpath=//a[@class='analystic' and text()='Open New Tabbed Windows ']
    click button       xpath=//*[@id="Tabbed"]/a/button         #//a/button[text()='    click   ']

    select window       url=http://www.sakinalium.in/       #url, title
    sleep   2
#    wait until page contains        Live Stream Platforms
#    click element          xpath=//span[text()='Live Stream Platforms']
#    click link          //a[@href='http://www.sakinalium.in/?query=Live%20Stream%20Platforms&afdToken=3B1g6BG7U5HihA33wvTMKAKQ5PI032kUYTaUrX9yODt7-_js2p1QedHRr8Fs4ge6Y3LS0V5LXnPfh8Na7ZwcDQqCz3JBauWSb4lH7BDFEQ&pcsa=false']
    select window       title=Frames & windows
    wait until page contains        If you set the target attribute to
    sleep   2
    close all browsers