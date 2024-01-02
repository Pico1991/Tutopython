*** Settings ***
Library  SeleniumLibrary
Documentation  Test basic sur Selenium

*** Variables ***
${URL}         https://www.google.fr/
${Browser1}    Chrome

*** Keywords ***


*** Test Cases ***
TestCas01
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()
    Call Method    ${chrome_options}    add_argument   --incognito
    Call Method    ${chrome_options}    add_argument   --start-maximized
    Create Webdriver    Chrome    options=${chrome_options}
   #Open Browser    ${URL}    chrome    options=${chrome_options}
    Go To    ${URL}
    #Maximize Browser Window
    Sleep    2
    Close All Browsers
