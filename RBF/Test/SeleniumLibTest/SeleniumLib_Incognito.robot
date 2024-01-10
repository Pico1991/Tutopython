*** Settings ***
Library  SeleniumLibrary
Documentation  Test basic sur Selenium

*** Variables ***
${URL}         https://www.google.fr/
${Browser1}    Chrome
${WaitVariable}    Google
${InputText1}    ivt


*** Keywords ***
Initialisation Chrome Incognito
     ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()
    Call Method    ${chrome_options}    add_argument   --incognito
    Call Method    ${chrome_options}    add_argument   --start-maximized
    Create Webdriver    Chrome    options=${chrome_options}
   #Open Browser    ${URL}    chrome    options=${chrome_options}
    Go To    ${URL}
    Maximize Browser Window

*** Test Cases ***
TestCas01
    Initialisation Chrome Incognito
    #Sleep    100
    Click Element    //*[@id="L2AGLb"]/div
    Wait Until Page Contains    ${WaitVariable}    timeout=10
    Reload Page
    Wait Until Page Contains    ${WaitVariable}    timeout=10


TestCas02
    Press Keys    None    ${InputText1}
    Press Keys    None    ENTER
    #Sleep    100
    Click Element    //*[@id="rso"]/div[2]/div/div/div/div[1]/div/div/span/a/div/div/div/cite
    Sleep    20

