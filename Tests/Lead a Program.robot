*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Observer.robot
Variables       ../Resources/WebElements.py

Test Setup     Open to Site  https://observer.globe.gov/
Test Teardown  Close All Browsers

*** Test Cases ***

Lead a Program Page
    Click Link in Navbar    Lead a Program
    Wait Until Location Is  https://observer.globe.gov/toolkit
    Click Link in Navbar    Lead a Program       Getting Started
    Wait Until Location Is  https://observer.globe.gov/toolkit
    Each link in main page content should be valid

# Clouds -------------------------------------------------------------------------------------------------------
Lead a Program Clouds Page
    Click Link in Navbar    Lead a Program          Clouds
    Wait Until Location Is  https://observer.globe.gov/toolkit/clouds-toolkit
    Click Link in Navbar    Lead a Program          Clouds      Overview
    Wait Until Location Is  https://observer.globe.gov/toolkit/clouds-toolkit
    Each link in main page content should be valid

Lead a Program Clouds Activities
    Click Link in Navbar    Lead a Program          Clouds      Activities
    Wait Until Location Is  https://observer.globe.gov/toolkit/clouds-toolkit/activities
    Each link in main page content should be valid

Lead a Program Clouds Books, Videos and Presentations 
    Click Link in Navbar    Lead a Program          Clouds      Books, Videos and Presentations
    Wait Until Location Is  https://observer.globe.gov/toolkit/clouds-toolkit/books-videos-and-presentations
    Each link in main page content should be valid

Lead a Program Clouds Printables and Promotional Materials 
    Click Link in Navbar    Lead a Program          Clouds      Printables and Promotional Materials
    Wait Until Location Is  https://observer.globe.gov/toolkit/clouds-toolkit/printables-and-promotional-materials
    Each link in main page content should be valid

# Mosquito Habitats -------------------------------------------------------------------------------------------------------
Lead a Program Mosquito Habitats Page
    Click Link in Navbar    Lead a Program          Mosquito Habitats
    Wait Until Location Is  https://observer.globe.gov/toolkit/mosquito-habitat-mapper-toolkit
    Click Link in Navbar    Lead a Program          Mosquito Habitats      Overview
    Wait Until Location Is  https://observer.globe.gov/toolkit/mosquito-habitat-mapper-toolkit
    Each link in main page content should be valid

Lead a Program Mosquito Habitats Activities
    Click Link in Navbar    Lead a Program          Mosquito Habitats      Activities
    Wait Until Location Is  https://observer.globe.gov/toolkit/mosquito-habitat-mapper-toolkit/activities
    Each link in main page content should be valid

Lead a Program Mosquito Habitats Books, Videos and Presentations 
    Click Link in Navbar    Lead a Program          Mosquito Habitats      Books, Videos and Presentations
    Wait Until Location Is  https://observer.globe.gov/toolkit/mosquito-habitat-mapper-toolkit/books-videos-and-presentations
    Each link in main page content should be valid

Lead a Program Mosquito Habitats Printables and Promotional Materials 
    Click Link in Navbar    Lead a Program          Mosquito Habitats      Printables and Promotional Materials
    Wait Until Location Is  https://observer.globe.gov/toolkit/mosquito-habitat-mapper-toolkit/printables-and-promotional-materials
    Each link in main page content should be valid

# Land Cover -------------------------------------------------------------------------------------------------------
Lead a Program Land Cover Page
    Click Link in Navbar    Lead a Program          Land Cover
    Wait Until Location Is  https://observer.globe.gov/toolkit/land-cover-toolkit
    Click Link in Navbar    Lead a Program          Land Cover      Overview
    Wait Until Location Is  https://observer.globe.gov/toolkit/land-cover-toolkit
    Each link in main page content should be valid

Lead a Program Land Cover Activities
    Click Link in Navbar    Lead a Program          Land Cover      Activities
    Wait Until Location Is  https://observer.globe.gov/toolkit/land-cover-toolkit/activities
    Each link in main page content should be valid

Lead a Program Land Cover Books, Videos and Presentations 
    Click Link in Navbar    Lead a Program          Land Cover      Books, Videos and Presentations
    Wait Until Location Is  https://observer.globe.gov/toolkit/land-cover-toolkit/books-videos-and-presentations
    Each link in main page content should be valid

Lead a Program Land Cover Printables and Promotional Materials 
    Click Link in Navbar    Lead a Program          Land Cover      Printables and Promotional Materials
    Wait Until Location Is  https://observer.globe.gov/toolkit/land-cover-toolkit/printables-and-promotional-materials
    Each link in main page content should be valid

# Trees -------------------------------------------------------------------------------------------------------
Lead a Program Trees Page
    Click Link in Navbar    Lead a Program          Trees
    Wait Until Location Is  https://observer.globe.gov/toolkit/trees-toolkit
    Click Link in Navbar    Lead a Program          Trees      Overview
    Wait Until Location Is  https://observer.globe.gov/toolkit/trees-toolkit
    Each link in main page content should be valid

Lead a Program Trees Activities
    Click Link in Navbar    Lead a Program          Trees      Activities
    Wait Until Location Is  https://observer.globe.gov/toolkit/trees-toolkit/activities
    Each link in main page content should be valid

Lead a Program Trees Books, Videos and Presentations 
    Click Link in Navbar    Lead a Program          Trees      Books, Videos and Presentations
    Wait Until Location Is  https://observer.globe.gov/toolkit/trees-toolkit/books-videos-and-presentations
    Each link in main page content should be valid

Lead a Program Trees Printables and Promotional Materials 
    Click Link in Navbar    Lead a Program          Trees      Printables and Promotional Materials
    Wait Until Location Is  https://observer.globe.gov/toolkit/trees-toolkit/printables-and-promotional-materials
    Each link in main page content should be valid

# Eclipse -------------------------------------------------------------------------------------------------------
Lead a Program Eclipse Page
    Click Link in Navbar    Lead a Program          Eclipse
    Wait Until Location Is  https://observer.globe.gov/toolkit/eclipse-toolkit
    Each link in main page content should be valid