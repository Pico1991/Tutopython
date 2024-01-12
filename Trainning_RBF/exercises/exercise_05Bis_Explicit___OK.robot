*** Settings ***
Documentation    Answer for exercise 05 - Using explicit wait
Library          SeleniumLibrary
Library          Dialogs
Test Setup       Open and Maximize    ${URL}  ${BROWSER}    ${TIMEOUT}
Test Teardown    Close Browser

### Exercise 2
# Remove the Open Browser and Close Browser keywords from the tests below
# Run the tests and see what happens
*** Variables ***
${URL}    https://www.ticketingcine.fr/compte.php
${TIMEOUT}    1
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
    [Arguments]    ${A}    ${B}    ${C}
    Open Browser    ${A}    ${B}
    Maximize Browser Window       
    Wait Until Element Is Visible     xpath:/html/body/div/div/div[3]/button[1]    ${TIMEOUT}
    Click Element    xpath:/html/body/div/div/div[3]/button[1]
    
LOGIN
    [Arguments]    ${A}    ${B}
    Input Text  id:email_connexion    ${A}   
    Input Text  id:password_connexion    ${B}
    Click Element     id:submit_connexion
    
Verification Email Contains
    Page Should Contain    ivijif894@talmetry.com    limit=1

### Exercise 5
# In Exercises 1 and 2, you did the same thing twice.
# This means there is probably a better way to do this...
# Can you create a custom keyword that:
# 1. Waits for an element with a specified locator to become enabled
#    (hint: specify the timeout in the *** Variables *** section
# 2. Types the specified value into the element after it has been successfully located?
# Replace the keywords in 'Log In As And Get Number Of Menu Options' with this custom keyword
# Run the test and see what happens..


### Exercise 6
# Do the same as in Exercise 5, but now for clicking (first wait until the element is enabled, then click)


## Exercise 7
# Do the same as in Exercise 5, but now for getting the number of elements
# (first wait until an occurrence of the element is visible, then return the number of elements found)