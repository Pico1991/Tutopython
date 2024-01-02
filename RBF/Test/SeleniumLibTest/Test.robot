*** Settings ***
Library        BuiltIn

*** Test Cases ***
Cas1
    ${result}=        Mon Keyword        2

*** Keywords ***
Mon Keyword
    [Arguments]        ${arg1}
    Log        ${arg1}
    ${tmp}=        Evaluate    int('${arg1}') * 2
    [return]    ${tmp}