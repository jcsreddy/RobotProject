*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollUsingJavaScriptExecutor
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html       chrome
    maximize browser window
    #scroll page using java script executor with horizontal and vertical values
#    execute javascript  window.scrollTo(0, 2500)        #0 - horizontal, 2500 - vertical

    scroll element into view    xpath=//*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    sleep   2

    #scroll goes to bottom of the page
    execute javascript  window.scrollTo(0, document.body.scrollHeight)

    sleep   2

    #scroll goes to top of the page
    execute javascript  window.scrollTo(0, -document.body.scrollHeight)

    sleep   2
    close browser