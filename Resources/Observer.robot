*** Settings ***
Library         SeleniumLibrary
Library         RequestsLibrary
Library         String
Library         Collections
Variables       WebElements.py

*** Keywords ***

Open to Site
    [Arguments]     ${link}
    ${chrome_options}=                  Evaluate        sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Run Keyword If	'${headless}' == 'True'	            Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome          chrome_options=${chrome_options}
    Set Window Size     ${1920}   ${1080}
    Go to          ${link}

Wait Until Page Finishes Loading
    Wait for condition  return window.document.readyState == 'complete'
    Sleep  5

Click Link in Navbar
    Wait Until Page Finishes Loading
    [Arguments]             ${section}      ${subsection}=${EMPTY}      ${subsubsection}=${EMPTY}
    ${sectionLink}=         Set Variable    ${Navbar}//span[contains(text(),"${section}")]/..
    IF  "${subsection}"=="${EMPTY}" 
        Wait Until Element is Visible   ${sectionLink} 
        Click Element                   ${sectionLink}   
    ELSE
        ${subsectionLink}=  Set Variable    ${sectionLink}/following-sibling::ul//a[contains(text(),"${subsection}")]
        IF  "${subsubsection}"=="${EMPTY}"
            Wait Until Element is Visible   ${sectionLink} 
            Mouse Over          ${sectionLink}
            Wait Until Element is Visible   ${subsectionLink} 
            Click Element       ${subsectionLink}
        ELSE
            ${subsubsectionLink}=  Set Variable     ${subsectionLink}/following-sibling::ul//a[contains(text(),"${subsubsection}")]
            Wait Until Element is Visible   ${sectionLink} 
            Mouse Over          ${sectionLink}
            Wait Until Element is Visible   ${subsectionLink} 
            Click Element       ${subsectionLink}
            Wait Until Element is Visible   ${subsubsectionLink}
            Click Element       ${subsubsectionLink}
        END
    END

Each link in main page content should be valid
    Wait Until Page Finishes Loading
    ${element_list}=    get webelements     ${BodyContent_Column1}//a[starts-with(@href, "http")]
    ${href_list}=       Evaluate            [item.get_attribute('href') for item in $element_list]
    ${broken_links}=    Create List
    ${index}=           Set Variable        0
    FOR    ${link}    IN    @{href_list}
        ${link}=            Strip String    ${link}         mode=right      characters=.
        Create Session      testLink        ${link}         disable_warnings=1
        ${canConnect}=      Run Keyword And Return Status   GET On Session  testLink    ${link}
        IF  ${canConnect}
            ${response}=    GET On Session  testLink    ${link}
            IF  ${response.status_code}!=200
                Append To List                  ${broken_links}             ${link}
                ${broken_length}=               Get length                  ${broken_links}
                Run Keyword And Ignore Error    Capture Element Screenshot  ${element_list}[${index}]   ${SUITE NAME}-${TEST NAME}-broken link-${broken_length}.png
            END
        ELSE
            Append To List                  ${broken_links}             ${link}
            ${broken_length}=               Get length                  ${broken_links}
            Run Keyword And Ignore Error    Capture Element Screenshot  ${element_list}[${index}]   ${SUITE NAME}-${TEST NAME}-broken link-${broken_length}.png
        END
        ${index}=    Evaluate    ${index} + 1
    END
    Delete All Sessions
    ${broken_length}=   Get length                  ${broken_links}
    Run Keyword If	    ${broken_length} > 0        Fail                One or more broken links discovered: ${broken_links}