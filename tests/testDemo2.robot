*** Settings ***

Documentation   To validate the login form
...
...             hfskk
...
Library         SeleniumLibrary
Library         Collections
Test Setup      open the browser with the Mortgage payment URL
#Test Teardown   Close Browser session
Resource        resource.robot

*** Variables ***

${Error_message_Login}      css:.alert-danger
${Shop_page_load}      css:.nav-link


*** Test Cases ***

# Validate UnSucessful login

#     Fill the login form     ${user_name}    ${invalid_password}
#     Wait until element located in the Page       ${Error_message_Login}
#     verify error message is correct

Validate cart display in the shopping Page
    Fill the login form     ${user_name}    ${valid_password}
    Wait until element located in the Page       ${Shop_page_load}
    verify card titles in the Shop Page
    Select the card     Blackberry

*** Keywords ***


Fill the login form
    [arguments]     ${username}     ${password}
    Input Text      id:username     ${username}
    Input Password  id:password     ${password}
    Click Button    signInBtn

Wait until element located in the Page
    [arguments]     ${element}
    Wait until Element is Visible       ${element}


verify error message is correct
    ${result}=  Get Text    ${Error_message_Login}
    Should Be Equal As Strings      ${result}       Incorrect username/password.
    Element Text Should Be  ${Error_message_Login}  Incorrect username/password.

verify card titles in the Shop Page
    @{expectedList}=    Create List     iphone X        Samsung Note 8      Nokia Edge      Blackberry
    ${elements}=    Get WebElements     css:.card-title
    @{actualList}=    Create List
    FOR     ${element}  IN      @{elements}
        #${element_text} =   Get Text  ${element}
        Log     ${element.text}
        Append To List      ${actualList}     ${element.text}  
    END
    Lists Should Be Equal   ${actualList}      ${expectedList}


Select the card
    [arguments]     ${cardname}
    ${elements}=    Get WebElements     css:.card-title
    ${index}=      Set Variable    1
    FOR     ${element}  IN      @{elements}
        Exit For Loop If    '${cardname}' == '${element.text}'
        ${index}=   Evaluate   ${index} +1
    END
    Click Button        xpath:(//*[@class='card-footer']/button)[${index}]     