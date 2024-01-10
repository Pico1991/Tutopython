*** Settings ***
Documentation    Exercise 02 - Using variables
Library          SeleniumLibrary

### Exercise 1
# Add a *** Variables *** section and define two variables in there:
# - One that stores the home page URL - OK
# - One that stores the browser to be used - OK
*** Variables ***
${URL}    http://parabank.parasoft.com
${BROWSER}   Chrome

*** Test Cases ***
Log in to ParaBank as John and check number of log out links
    ### Exercise 2
    # Replace the actual values for the homepage URL and the browser - OK
    # with the variable values you defined in Exercise 1
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text  name:username  john
    Input Text  name:password  demo
    Log in



    ### Exercise 3
    # Add two keywords here:
    # - One that get the number of 'Log Out' links on the current page
    #   (hint: use the link: locator with the visible text of the link as a value)
    #   Store the return value of this keyword in a variable, we need that in the next step
    # - Another that checks that the variable value stored in the previous step is equal to 1
    Close Browser

*** Keywords ***
Log in
    Sleep    3
    ${number_of_log_out_links}=  Page Should Contain Element    //*[@id="loginPanel"]/p[1]/a
    Should Be Equal As Integers  ${number_of_log_out_links}  

Log Out
    Sleep    3
    ${number_of_log_out_links}=  Get Element Count  //*[@id="loginPanel"]/form/div[3]/input
    Should Be Equal As Integers  ${number_of_log_out_links}  1
    Sleep    3
    Click Element    xpath://*[@id="leftPanel"]/ul/li[8]/a
    Sleep    3

