*** Settings ***
Library         SeleniumLibrary
Library         RequestsLibrary
Library         String
Library         Collections
Resource        ../Resources/Observer.robot
Variables       ../Resources/WebElements.py

Test Setup     Open to Site  https://observer.globe.gov/
Test Teardown  Close All Browsers

*** Test Cases ***

About Page
    Click Link in Navbar    About     About GLOBE Observer
    Wait Until Location Is  https://observer.globe.gov/about
    Each link in main page content should be valid

Citizen Science
    Click Link in Navbar    About     Citizen Science
    Wait Until Location Is  https://observer.globe.gov/about/citizen-science
    Each link in main page content should be valid

FAQ
    Click Link in Navbar    About     FAQ
    Wait Until Location Is  https://observer.globe.gov/about/faq
    Each link in main page content should be valid

App Status
    Click Link in Navbar    About     App Status
    Wait Until Location Is  https://observer.globe.gov/about/app-status
    Each link in main page content should be valid

Our Team
    Click Link in Navbar    About     Our Team
    Wait Until Location Is  https://observer.globe.gov/about/team
    Each link in main page content should be valid

Contact Us
    Click Link in Navbar    About     Contact Us
    Wait Until Location Is  https://observer.globe.gov/about/contact-us
    Each link in main page content should be valid

Get The App
    Click Link in Navbar    Get the App
    Wait Until Location Is  https://observer.globe.gov/about/get-the-app
    Click Link in Navbar    About   Get the App
    Wait Until Location Is  https://observer.globe.gov/about/get-the-app
    Click the "Download on the App Store" button
    Click the "Get it on Google Play" button
    Each link in main page content should be valid

*** Keywords ***

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
                Append To List              ${broken_links}             ${link}
                ${broken_length}=           Get length                  ${broken_links}
                Capture Element Screenshot  ${element_list}[${index}]   ${SUITE NAME}-${TEST NAME}-broken link-${broken_length}.png
            END
        ELSE
            Append To List              ${broken_links}             ${link}
            ${broken_length}=           Get length                  ${broken_links}
            Capture Element Screenshot  ${element_list}[${index}]   ${SUITE NAME}-${TEST NAME}-broken link-${broken_length}.png
        END
        ${index}=    Evaluate    ${index} + 1
    END
    Delete All Sessions
    ${broken_length}=   Get length                  ${broken_links}
    Run Keyword If	    ${broken_length} > 0        Fail                One or more broken links discovered: ${broken_links}

Click the "Download on the App Store" button
    Wait Until Element Is Visible   ${GetTheApp_AppleAppStoreButton}
    Click Element                   ${GetTheApp_AppleAppStoreButton}
    Wait Until Location Is          https://apps.apple.com/us/app/globe-observer/id1090456751
    Go Back

Click the "Get it on Google Play" button
    Wait Until Element Is Visible   ${GetTheApp_GooglePlayStoreButton}
    Click Element                   ${GetTheApp_GooglePlayStoreButton}
    Wait Until Location Is          https://play.google.com/store/apps/details?id=gov.nasa.globe.observer&hl=en&pcampaignid=MKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1
    Go Back