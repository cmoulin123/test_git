*** Settings ***

# Ici on inclut les librairies requises

Documentation   Example test
Library   Selenium2Library

*** Variables ***

# Ici on définit les variables au besoin

*** Test Cases ***

# Ici on va écrire le script de tests

Search Domain
    [Documentation]     Simple domain name search
# Open chrome browser at GoDaddy website
    Open Browser    https://ca.godaddy.com/      chrome
# Wait for the domain input box to appear on page


# Close the browser
    Close Browser