*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Observer.robot
Variables       ../Resources/WebElements.py

Test Setup     Open to Site  https://observer.globe.gov/
Test Teardown  Close All Browsers

*** Test Cases ***

About Page
    Click Link in Navbar    About
    Wait Until Location Is  https://observer.globe.gov/about
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