*** Settings ***

Documentation   To validate the login form
Library     SeleniumLibrary



***Variables***
${user_name}             rahulshettyacademy
${invalid_password}     ighfk
${valid_password}       learning
${url}                  https://www.rahulshettyacademy.com/loginpagePractise/

***Keywords***
open the browser with the Mortgage payment URL
#    Create Webdriver    chrome  executable_path=C://Users//cmoulin//Documents//Drivers//chromedriver
    Open Browser    ${url}   chrome

Close Browser session 
    Close Browser
