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
    Do GLOBE Observer Clouds Taking Observations
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
    Do GLOBE Observer Clouds Taking Observations
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
    Do GLOBE Observer Clouds Taking Observations
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
# Do GLOBE Observer Land Cover Page
#     Click Link in Navbar    Do GLOBE Observer       Land Cover
#     Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover
#     Click Link in Navbar    Do GLOBE Observer       Land Cover      Overview
#     Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover
#     Each link in main page content should be valid

# Do GLOBE Observer Land Cover Taking Observations
#     Do GLOBE Observer Clouds Taking Observations
#     Click Link in Navbar    Do GLOBE Observer       Land Cover      Taking Observations
#     Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover/taking-observations
#     Each link in main page content should be valid

# Do GLOBE Observer Land Cover Science
#     Click Link in Navbar    Do GLOBE Observer       Land Cover      Science
#     Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover/science
#     Each link in main page content should be valid

# Do GLOBE Observer Land Cover Resource Library
#     Click Link in Navbar    Do GLOBE Observer       Land Cover      Resource Library
#     Wait Until Location Is  https://observer.globe.gov/do-globe-observer/land-cover/resource-library
#     Each link in main page content should be valid