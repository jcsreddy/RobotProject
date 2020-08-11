*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${EXECDIR}  C:\Users\CHANDRASEKHARJANGA\PycharmProjects\TestProject\Drivers\chromedriver.exe
${browser}    chrome
${url}        https://demo.nopcommerce.com/
${username}     jcsreddy@gmail.com
${password}     123india
#${URL}    https://opensource-demo.orangehrmlive.com/
#@{Credentials}    Admin    admin123
#&{LoginData}    username=Admin    password=admin123

*** Test Cases ***
LoginTest
#    create webdriver  ${browser}    executable_path = 'C:\Users\CHANDRASEKHARJANGA\PycharmProjects\TestProject\Drivers\chromedriver.exe'
    open browser    ${url}      ${browser}
    loginToApplication
    close browser


#LoginTest
#    [Documentation]    This is a sample login test
#     Open Browser    ${URL}    ${Browse}
#     Maximize Browser Window
#     Input Text        id=txtUsername        @{Credentials}[0]
#     Input Password    id=txtPassword        &{LoginData}[password]
#     Click Button      id=btnLogin
#     Click Element     id=welcome
#     Wait Until Element Is Visible    link=Logout
#     Click Element     link=Logout
#     Close Browser
#     #Log    This test was run by %{username} on %{os}
#     Set Tags    Login Test Tag

*** Keywords ***
loginToApplication
    title should be     nopCommerce demo store
    click link      xpath=//a[text()='Log in']
    maximize browser window
    title should be     nopCommerce demo store. Login
    wait until page contains element  id=Email
    wait until page contains element  id=Password

    #validate Email is visible, enabled, clear text and then enter email id
    ${"email_txt"}  set variable    id=Email
    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
    clear element text          ${"email_txt"}
    input text      ${"email_txt"}      ${username}

    #validate Email is visible, enabled, clear text and then enter password
    ${"password_txt"}  set variable    id=Password
    element should be visible  ${"password_txt"}
    element should be enabled  ${"password_txt"}
    clear element text          ${"password_txt"}
    input password  ${"password_txt"}         ${password}

    capture page screenshot

    #validate login button is enabled
    ${"loginbutton_enabled}     set variable    xpath=//input[@class='button-1 login-button']
    element should be enabled  ${"loginbutton_enabled}
    click button    ${"loginbutton_enabled}
    capture page screenshot