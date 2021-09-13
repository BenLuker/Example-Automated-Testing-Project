*** Settings ***
Library         SeleniumLibrary
Library         String
Library         Collections
Library         RequestsLibrary
Resource        ../Resources/Observer.robot
Variables       ../Resources/WebElements.py

Test Teardown  Close All Browsers

*** Test Cases ***

Navigate between Globe Observer and Globe Home
    [Setup]     Open to Site    https://www.globe.gov/
    Navigate to Globe Observer from Globe Home
    Navigate from Globe Home to Globe Observer    

# Validate Login Procedure
#     [Setup]     Navigate to https://observer.globe.gov/
#     Click Button    xpath=//*[@class="sign-in"]
#     Sleep  5

# Validate Log Out Procedure
#     Log     Doing Test

# View Observations
#     Log     Doing Test

*** Keywords ***

Navigate to Globe Observer from Globe Home
    Click Link in Navbar    Do GLOBE    GLOBE Observer Website
    Wait Until Location Is  https://observer.globe.gov/

Navigate from Globe Home to Globe Observer
    Wait Until Page Finishes Loading
    Wait Until Element is Visible   ${Header_TheGlobeProgramImageLink}
    Click Element                   ${Header_TheGlobeProgramImageLink}
    Wait Until Location Is          https://www.globe.gov/