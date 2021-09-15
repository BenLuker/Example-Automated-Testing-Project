*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Observer.robot
Variables       ../Resources/WebElements.py

Test Setup     Open to Site  https://observer.globe.gov/
Test Teardown  Close All Browsers

*** Test Cases ***

Get Data Page
    Click Link in Navbar    Get Data
    Wait Until Location Is  https://observer.globe.gov/get-data
    Click Link in Navbar    Get Data        Overview
    Wait Until Location Is  https://observer.globe.gov/get-data
    Each link in main page content should be valid

Get Data Clouds Data
    Click Link in Navbar    Get Data        Clouds Data
    Wait Until Location Is  https://observer.globe.gov/get-data/clouds-data
    Each link in main page content should be valid

Get Data Dust Data
    Click Link in Navbar    Get Data        Dust Data
    Wait Until Location Is  https://observer.globe.gov/get-data/dust-data
    Each link in main page content should be valid

Get Data Eclipse Data
    Click Link in Navbar    Get Data        Eclipse Data
    Wait Until Location Is  https://observer.globe.gov/get-data/eclipse-data
    Each link in main page content should be valid

Get Data Land Cover Data
    Click Link in Navbar    Get Data        Land Cover Data
    Wait Until Location Is  https://observer.globe.gov/get-data/land-cover-data
    Each link in main page content should be valid

Get Data Mosquito Habitat Data
    Click Link in Navbar    Get Data        Mosquito Habitat Data
    Wait Until Location Is  https://observer.globe.gov/get-data/mosquito-habitat-data
    Each link in main page content should be valid