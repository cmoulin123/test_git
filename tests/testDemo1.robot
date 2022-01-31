*** Settings ***

Documentation   To validate the login form
Library     SeleniumLibrary
Test Teardown       Close Browser

*** Variables ***

${Error_message_Login}      css:.alert-danger


*** Test Cases ***

Validate UnSucessful login

    open the browser with the Mortgage payment URL
    Fill the login form
    wait until it checks and display error message
    verify error message is correct


*** Keywords ***
open the browser with the Mortgage payment URL
#    Create Webdriver    chrome  executable_path=C://Users//cmoulin//Documents//Drivers//chromedriver
    Open Browser   https://www.rahulshettyacademy.com/loginpagePractise/    chrome

Fill the login form
    Input Text      id:username     rahulshettyacademy
    Input Password  id:password     rahulshettyacademy
    Click Button    signInBtn

wait until it checks and display error message
    Wait Until Element Is Visible   ${Error_message_Login}

verify error message is correct
    ${result}=  Get Text    ${Error_message_Login}
    Should Be Equal As Strings      ${result}       Incorrect username/password.
    Element Text Should Be  ${Error_message_Login}  Incorrect username/password.

  
