*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseActions
#    Right Click
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html       chrome
    maximize browser window
    open context menu       xpath=//span[text()='right click me']

#    Double Click
    go to  http://testautomationpractice.blogspot.com/
    double click element    xpath=//button[text()='Copy Text']

#    Drag and Drop
    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop  id=box2  id=box104

    sleep   3
    capture page screenshot

    close all browsers