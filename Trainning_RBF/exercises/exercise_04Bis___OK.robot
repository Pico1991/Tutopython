*** Settings ***
Documentation    Exercise 04 - Using custom keywords
Library          SeleniumLibrary
Library          Dialogs
Test Setup       Open and Maximize    ${URL}  ${BROWSER}
Test Teardown    Close Browser

### Exercise 2
# Remove the Open Browser and Close Browser keywords from the tests below
# Run the tests and see what happens
*** Variables ***
${URL}    https://www.ticketingcine.fr/compte.php
${BROWSER}   Chrome
${ID}    livijif894@talmetry.com
${Password}    Toto2023@1992


*** Test Cases ***
Log in to ParaBank as John and check number of log out links

    LOGIN    ${ID}    ${Password}    
    #Pause Execution    Execution paused. Press OK to continue.
    Verification Email Contains
    Close All Browsers


*** Keywords ***
Open and Maximize
    [Arguments]    ${A}    ${B}
    Open Browser    ${A}    ${B}
    Maximize Browser Window       
    Wait Until Element Is Visible     xpath:/html/body/div/div/div[3]/button[1]
    Click Element    xpath:/html/body/div/div/div[3]/button[1]
    
LOGIN
    [Arguments]    ${A}    ${B}
    Input Text  id:email_connexion    ${A}   
    Input Text  id:password_connexion    ${B}
    Click Element     id:submit_connexion
    
Verification Email Contains
    Sleep    3
    Page Should Contain    ivijif894@talmetry.com    limit=1

