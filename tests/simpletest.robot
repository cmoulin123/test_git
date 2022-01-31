*** Settings ***

# Ici on inclut les librairies requises

Documentation   Example test
Library   Selenium2Library

*** Variables ***

# Ici on définit les variables au besoin

*** Test Cases ***

# Ici on va écrire le script de tests

Test Hello World
    [Documentation]  Simple test hello world
    Log   hello world!

Test Goodbye
    [Documentation]  Simple log goodbye
    Log   goodbye!