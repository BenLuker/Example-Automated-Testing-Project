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

Validate Login Procedure
    [Setup]     Open to Site    https://observer.globe.gov/
    Check that User is not Logged In
    Open Login
    Login with Empty Credentials and Expect Field Required Warning
    Login with Invalid Credentials and Expect Alert Error
    Login with Valid Credentials and Expect Home Page
    Check that User is Logged In

Validate Log Out Procedure
    [Setup]     Open to Site    https://observer.globe.gov/
    Login
    Log Out
    Go Back
    Check that User is not Logged In

*** Keywords ***

Navigate to Globe Observer from Globe Home
    Click Link in Navbar    Do GLOBE    GLOBE Observer Website
    Wait Until Location Is  https://observer.globe.gov/

Navigate from Globe Home to Globe Observer
    Wait Until Page Finishes Loading
    Wait Until Element is Visible   ${Header_TheGlobeProgramImageLink}
    Click Element                   ${Header_TheGlobeProgramImageLink}
    Wait Until Location Is          https://www.globe.gov/

Open Login
    Wait Until Page Finishes Loading
    Wait Until Page Contains Element    ${Header_SignIn}
    Click Element                       ${Header_SignIn}

Login with Credentials
    [Arguments]     ${email}    ${password}
    Wait Until Page Contains Element    ${Login_Email}
    Input Text      ${Login_Email}      ${email}
    Wait Until Page Contains Element    ${Login_Password}
    Input Text      ${Login_Password}   ${password}
    Wait Until Page Contains Element    ${Login_Submit}
    Click Element   ${Login_Submit}

Login with Empty Credentials and Expect Field Required Warning
    Login with Credentials      ${EMPTY}                ${EMPTY}
    ${EmailWarning}=            Get Element Attribute	${Login_Email}	    aria-invalid
    Should Be Equal as Strings  ${EmailWarning}         true
    ${PasswordWarning}=	        Get Element Attribute	${Login_Password}	aria-invalid
    Should Be Equal as Strings  ${PasswordWarning}      true
    
    Login with Credentials      ${Observer-User}        ${EMPTY}
    ${EmailWarning}=            Get Element Attribute	${Login_Email}	    aria-invalid
    Should Be True              ${EmailWarning} is ${None}
    ${PasswordWarning}=	        Get Element Attribute	${Login_Password}	aria-invalid
    Should Be Equal as Strings  ${PasswordWarning}      true

    Login with Credentials      ${EMPTY}                ${Observer-Password}
    ${EmailWarning}=            Get Element Attribute	${Login_Email}	    aria-invalid
    Should Be Equal as Strings  ${EmailWarning}         true
    ${PasswordWarning}=	        Get Element Attribute	${Login_Password}	aria-invalid
    Should Be True              ${PasswordWarning} is ${None}

Login with Invalid Credentials and Expect Alert Error
    Login with Credentials          User10348317@gmail.com  FakePassword1037574291038573910783
    Wait Until Element is Visible   ${Login_Alert}
    Login with Credentials          ${Observer-User}        FakePassword1037574291038573910783
    Wait Until Element is Visible   ${Login_Alert}
    Login with Credentials          User10348317@gmail.com  ${Observer-Password}
    Wait Until Element is Visible   ${Login_Alert}

Login with Valid Credentials and Expect Home Page
    Login with Credentials  ${Observer-User}  ${Observer-Password}
    Wait Until Location Is  https://observer.globe.gov/

Check that User is not Logged In
    Wait Until Page Contains Element    ${Header_SignIn}
    Wait Until Page Contains Element    ${Header_ForgotChangePassword}
    Page Should Not Contain Element     ${Header_PersonalMenuDropdown}
    Page Should Not Contain Element     ${Header_ViewMyObservations}

Check that User is Logged In
    Wait Until Page Contains Element    ${Header_PersonalMenuDropdown}
    Wait Until Page Contains Element    ${Header_ViewMyObservations}
    Page Should Not Contain Element     ${Header_SignIn}
    Page Should Not Contain Element     ${Header_ForgotChangePassword}

Login
    Open Login
    Login with Valid Credentials and Expect Home Page
    Check that User is Logged In

Log Out
    Click Element                   ${Header_PersonalMenuDropdown}
    Wait Until Element is Visible   ${Header_SignOut}
    Click Element                   ${Header_SignOut}
    Check that User is not Logged In