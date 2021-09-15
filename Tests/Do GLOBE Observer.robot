*** Settings ***
Library         SeleniumLibrary
Resource        ../Resources/Observer.robot
Variables       ../Resources/WebElements.py

Test Setup     Open to Site  https://observer.globe.gov/
Test Teardown  Close All Browsers

*** Test Cases ***

Do GLOBE Observer Page
    Click Link in Navbar    Do GLOBE Observer
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer
    Click Link in Navbar    Do GLOBE Observer       Getting Started
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer
    Each link in main page content should be valid

# Clouds -------------------------------------------------------------------------------------------------------
Do GLOBE Observer Clouds Page
    Click Link in Navbar    Do GLOBE Observer       Clouds
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/clouds
    Click Link in Navbar    Do GLOBE Observer       Clouds      Overview
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/clouds
    Each link in main page content should be valid

Do GLOBE Observer Clouds Taking Observations
    Click Link in Navbar    Do GLOBE Observer       Clouds      Taking Observations
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/clouds/taking-observations
    Each link in main page content should be valid

Do GLOBE Observer Clouds Science
    Click Link in Navbar    Do GLOBE Observer       Clouds      Science
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/clouds/science
    Each link in main page content should be valid

Do GLOBE Observer Clouds Resource Library
    Click Link in Navbar    Do GLOBE Observer       Clouds      Resource Library
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/clouds/resource-library
    Each link in main page content should be valid

Do GLOBE Observer Clouds Family Guide
    Click Link in Navbar    Do GLOBE Observer       Clouds      Family Guide
    Wait Until Location Is  https://www.globe.gov/web/s-cool/home/family-cloud-resources
    Each link in main page content should be valid

# Mosquito Habitats -------------------------------------------------------------------------------------------------------
Do GLOBE Observer Mosquito Habitats Page
    Click Link in Navbar    Do GLOBE Observer       Mosquito Habitats
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/mosquito-habitats
    Click Link in Navbar    Do GLOBE Observer       Mosquito Habitats       Overview
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/mosquito-habitats
    Each link in main page content should be valid

Do GLOBE Observer Mosquito Habitats Taking Observations
    Click Link in Navbar    Do GLOBE Observer       Mosquito Habitats       Taking Observations
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/mosquito-habitats/taking-observations
    Each link in main page content should be valid

Do GLOBE Observer Mosquito Habitats Science
    Click Link in Navbar    Do GLOBE Observer       Mosquito Habitats       Science
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/mosquito-habitats/science
    Each link in main page content should be valid

Do GLOBE Observer Mosquito Habitats Resource Library
    Click Link in Navbar    Do GLOBE Observer       Mosquito Habitats       Resource Library
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/mosquito-habitats/resource-library
    Each link in main page content should be valid

# Land Cover -------------------------------------------------------------------------------------------------------
Do GLOBE Observer Land Cover Page
    Click Link in Navbar    Do GLOBE Observer       Land Cover
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover
    Click Link in Navbar    Do GLOBE Observer       Land Cover      Overview
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover
    Each link in main page content should be valid

Do GLOBE Observer Land Cover Taking Observations
    Click Link in Navbar    Do GLOBE Observer       Land Cover      Taking Observations
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover/taking-observations
    Each link in main page content should be valid

Do GLOBE Observer Land Cover Science
    Click Link in Navbar    Do GLOBE Observer       Land Cover      Science
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover/science
    Each link in main page content should be valid

Do GLOBE Observer Land Cover Resource Library
    Click Link in Navbar    Do GLOBE Observer       Land Cover      Resource Library
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover/resource-library
    Each link in main page content should be valid

# Trees -------------------------------------------------------------------------------------------------------
Do GLOBE Observer Trees Page
    Click Link in Navbar    Do GLOBE Observer       Trees
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/trees
    Click Link in Navbar    Do GLOBE Observer       Trees       Overview
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/trees
    Each link in main page content should be valid

Do GLOBE Observer Trees Taking Observations
    Click Link in Navbar    Do GLOBE Observer       Trees       Taking Observations
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/trees/taking-observations
    Each link in main page content should be valid

Do GLOBE Observer Trees Science
    Click Link in Navbar    Do GLOBE Observer       Trees       Science
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/trees/science
    Each link in main page content should be valid

Do GLOBE Observer Trees Resource Library
    Click Link in Navbar    Do GLOBE Observer       Trees       Resource Library
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/trees/resource-library
    Each link in main page content should be valid

Do GLOBE Observer Trees Family Guide
    Click Link in Navbar    Do GLOBE Observer       Trees       Family Guide
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/trees/family-guide
    Each link in main page content should be valid

# Eclipse -------------------------------------------------------------------------------------------------------
Do GLOBE Observer Eclipse Page
    Click Link in Navbar    Do GLOBE Observer       Eclipse
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/eclipse
    Click Link in Navbar    Do GLOBE Observer       Eclipse      Overview
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/eclipse
    Each link in main page content should be valid

Do GLOBE Observer Eclipse Taking Observations
    Click Link in Navbar    Do GLOBE Observer       Eclipse      Taking Observations
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/eclipse/taking-observations
    Each link in main page content should be valid

Do GLOBE Observer Eclipse Data Analysis
    Click Link in Navbar    Do GLOBE Observer       Eclipse      Data Analysis
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/eclipse/data-analysis
    Each link in main page content should be valid

Do GLOBE Observer Eclipse Resource Library
    Click Link in Navbar    Do GLOBE Observer       Eclipse      Resource Library
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/eclipse/resource-library
    Each link in main page content should be valid

# Challenges -------------------------------------------------------------------------------------------------------
Do GLOBE Observer Challenges Page
    Click Link in Navbar    Do GLOBE Observer       Challenges
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/challenges
    Click Link in Navbar    Do GLOBE Observer       Challenges      Past Challenges
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/challenges
    Each link in main page content should be valid

Do GLOBE Observer Challenges Mosquito Habitat Photo Challenge
    Click Link in Navbar    Do GLOBE Observer       Challenges      Mosquito Habitat Photo Challenge
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/challenges/mosquito-habitat-photo-challenge
    Each link in main page content should be valid

Do GLOBE Observer Challenges Community Trees Challenge 2021
    Click Link in Navbar    Do GLOBE Observer       Challenges      Community Trees Challenge 2021
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/challenges/community-trees-challenge-2021
    Each link in main page content should be valid

# Do More -------------------------------------------------------------------------------------------------------
Do GLOBE Observer Do More Page
    Click Link in Navbar    Do GLOBE Observer       Do More
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/do-more
    Each link in main page content should be valid

Do GLOBE Observer Do More Stations
    Click Link in Navbar    Do GLOBE Observer       Do More      Stations
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/do-more/stations
    Each link in main page content should be valid

Do GLOBE Observer Do More Teams
    Click Link in Navbar    Do GLOBE Observer       Do More      Teams
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/do-more/teams
    Each link in main page content should be valid

Do GLOBE Observer Do More At Home
    Click Link in Navbar    Do GLOBE Observer       Do More      At Home
    Wait Until Location Is  https://observer.globe.gov/do-globe-observer/do-more/at-home
    Each link in main page content should be valid