*** Settings ***
Library          SeleniumLibrary
Library          Dialogs


*** Keywords ***
Open and Maximize
    [Arguments]    ${A}    ${B}    ${C}
    Open Browser    ${A}    ${B}
    Maximize Browser Window
    Wait Until Element Is Visible     xpath:/html/body/div/div/div[3]/button[1]     ${C}
    Click Element    xpath:/html/body/div/div/div[3]/button[1]

LOGIN
    [Arguments]    ${A}    ${B}    ${C}
    Input Text  id:email_connexion    ${A}
    Input Text  id:password_connexion    ${B}
    Click Element     id:submit_connexion
    Wait Until Element Is Visible  xpath://*[@id="li_user"]/a/span  ${C}

Verification Email Contains
    [Arguments]    ${A}
    Page Should Contain    ${A}    limit=1
