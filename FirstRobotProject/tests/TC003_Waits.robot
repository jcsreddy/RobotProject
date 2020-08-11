*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
#Wait Test Case
#    ${default_speed}        get selenium speed
#    log to console          ${default_speed}
#    set selenium speed      1
#    open browser        http://demowebshop.tricentis.com/register          chrome
#    select radio button      Gender      M
#    input text              FirstName       sekhar
#    input text              LastName        reddy
#    input text              Email           abcd@gmail.com
#    input password          Password        123india
#    input password          ConfirmPassword     123india
#    ${new_speed}        get selenium speed
#    log to console          ${new_speed}
#    close browser

#Selenium Timeout Test
#    open browser        http://demowebshop.tricentis.com/register          chrome
#    ${default_selenium_timeout}     get selenium timeout
#    log to console                  ${default_selenium_timeout}
#    wait until page contains    Register
#    select radio button      Gender      M
#    input text              FirstName       sekhar
#    input text              LastName        reddy
#    input text              Email           abcd@gmail.com
#    input password          Password        123india
#    input password          ConfirmPassword     123india
#    close browser

Implicit Wait Test
    open browser        http://demowebshop.tricentis.com/register          chrome
    ${implicit_selenium_wait}     get selenium implicit wait
    log to console                  ${implicit_selenium_wait}
    set selenium implicit wait      5 seconds
    wait until page contains    Register
    select radio button      Gender      M
    input text              FirstName       sekhar
    input text              LastName        reddy
    input text              Email           abcd@gmail.com
    input password          Password        123india
    input password          ConfirmPassword     123india
    close browser

*** Keywords ***
