*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Observer.robot
Variables       ../Resources/WebElements.py

Test Setup     Open to Site  https://observer.globe.gov/
Test Teardown  Close All Browsers

*** Test Cases ***

Publications
    Click Link in Navbar    Publications
    Wait Until Location Is  https://observer.globe.gov/publications
    Each link in main page content should be valid