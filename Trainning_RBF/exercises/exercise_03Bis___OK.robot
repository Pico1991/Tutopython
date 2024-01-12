*** Settings ***
Documentation    Exercise 02 - Using variables
Library          SeleniumLibrary
Library          Dialogs
Test Setup       Open Browser  ${HOMEPAGE}  ${BROWSER}
Test Teardown    Close Browser

### Exercise 2
# Remove the Open Browser and Close Browser keywords from the tests below
# Run the tests and see what happens
*** Variables ***
${URL}    https://www.ticketingcine.fr/compte.php
${BROWSER}   Chrome

*** Test Cases ***
Log in to ParaBank as John and check number of log out links

    Wait Until Element Is Visible     xpath:/html/body/div/div/div[3]/button[1]
    Click Element    xpath:/html/body/div/div/div[3]/button[1]
    Maximize Browser Window

    Input Text  id:email_connexion  livijif894@talmetry.com
    Input Text  id:password_connexion  Toto2023@1992


    Pause Execution    Execution paused. Press OK to continue.
    Verification Email Contains
    #Log in



*** Keywords ***
L


Verification Email Contains
    Sleep    3
    Page Should Contain    ivijif894@talmetry.com    limit=1

