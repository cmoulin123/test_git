*** Settings ***

Documentation   To validate the login form
...
...             hfskk
...
Library         SeleniumLibrary
Library         Collections
Library         AppiumLibrary

*** Variables ***




*** Test Cases ***


Open Application
    Open Application    http://localhost:4723/wd/hub    platformName=Android    deviceName=emulator-5554    appPackage=chat21.android.demo    appActivity=chat21.android.demo.SplashActivity    automationName=Uiautomator2

*** Keywords ***


