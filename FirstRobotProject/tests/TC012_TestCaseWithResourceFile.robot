*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/resources.robot

#*** Variables ***
#${url}  http://demo.guru99.com/test/newtours
#${browser}  chrome

*** Test Cases ***
UserDefinedKeywordWithoutArguements
    launchTheBrowser
    input text      name=userName       mercury
    input password  name=password       mercury
    closeTheBrowser

