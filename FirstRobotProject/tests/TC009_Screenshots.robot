*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Screenshots Test
    open browser        https://opensource-demo.orangehrmlive.com/          chrome
    maximize browser window

    capture element screenshot      xpath=//div[@id='divLogo']/img      C:/Users/CHANDRASEKHARJANGA/PycharmProjects/TestProject/logo.png
    Input Text        id=txtUsername        Admin
    Input Password    id=txtPassword        admin123

    capture page screenshot  C:/Users/CHANDRASEKHARJANGA/PycharmProjects/TestProject/TC009_Screenshots.png

    capture page screenshot     TC009_Screenshots1.png          #directly saves in the project location

    close browser
