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


*** Test Cases ***
Log in Cinema de l'EST
    LOGIN    ${ID}    ${Password}    ${TIMEOUT}
    Verification Email Contains    ${ID}




