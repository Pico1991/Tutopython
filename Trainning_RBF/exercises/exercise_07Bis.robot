*** Settings ***
Documentation    Exercise 06 - Using resources
#Library          SeleniumLibrary
#Library          Dialogs
Resource    ../Ressource/CommonLibRes.resource

Test Setup       Open and Maximize    ${URL}  ${BROWSER}    ${TIMEOUT}
Test Teardown    Close Browser


*** Variables ***
${ID}    livijif894@talmetry.com
${Password}    Toto2023@1992
${URL}    https://www.ticketingcine.fr/compte.php
${TIMEOUT}    3
${BROWSER}   Chrome

### Exercise 1
# Add a test case that:
# 1. Logs in (using the 'Log In As' keyword) as user 'john' with password 'demo'
# 2. Retrieves the number of accounts for John (using the 'Get Number Of Accounts' keyword)
#    and stores this in a variable
# 3. Writes 'John has multiple accounts' to the log if the number of accounts is higher than 1,
#    or writes 'John has only a single account' to the log, otherwise (use the 'Log' keyword).

### Exercise 2
# Add another test case that does the same as Exercise 1, but now for user 'parasoft' with password 'demo'


*** Test Cases ***
Log in Cinema de l'EST
    LOGIN    ${ID}    ${Password}    ${TIMEOUT}
    Verification Email Contains    ${ID}




