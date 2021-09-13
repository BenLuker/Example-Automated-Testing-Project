*** Settings ***
Library         SeleniumLibrary
Library         String
Variables       WebElements.py

*** Keywords ***
Navigate to https://observer.globe.gov/
    Open Browser    https://observer.globe.gov/      chrome

Open to Site
    [Arguments]     ${link}
    ${chrome_options}=                  Evaluate        sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome          chrome_options=${chrome_options}
    Set Window Size     ${1400}   ${600}
    Go to          ${link}

Wait Until Page Finishes Loading
    Wait for condition  return window.document.readyState == 'complete'
    Sleep  5

Click Link in Navbar
    Wait Until Page Finishes Loading
    [Arguments]             ${section}      ${subsection}=${EMPTY}
    ${sectionLink}=         Set Variable    ${Navbar}//span[contains(text(),"${section}")]/..
    IF  "${subsection}"=="${EMPTY}" 
        Wait Until Element is Visible   ${sectionLink} 
        Click Element                   ${sectionLink}   
    ELSE
        ${subsectionLink}=  Set Variable    ${sectionLink}/following-sibling::ul//a[contains(text(),"${subsection}")]
        Wait Until Element is Visible   ${sectionLink} 
        Mouse Over          ${sectionLink}
        Wait Until Element is Visible   ${subsectionLink} 
        Click Element       ${subsectionLink}
    END