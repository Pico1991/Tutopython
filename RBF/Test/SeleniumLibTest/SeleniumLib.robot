*** Settings ***
Library  SeleniumLibrary
Documentation  Test basic sur Selenium

*** Variables ***
${URL}          https://stackoverflow.com/questions/46196953/robot-framework-with-pycharm-autocomplete-doesnt-work #https://www.google.fr/
${Browser1}     Chrome

*** Keywords ***
Open NavigatorChrome
   #Create Webdriver    ${Browser1}    \\Ressources\\chromedriver.exe
   open browser    ${URL}   ${Browser1}    options=incognito
   Maximize Browser Window


*** Test Cases ***
Recherche Google
    Open NavigatorChrome

