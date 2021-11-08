*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/PO/Bottom.robot
Resource    ../Resources/PO/LandingPageTop.robot
Resource    ../Resources/PO/Navbar.robot


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser

Open and check Website
    LandingPageTop.Load
    LandingPageTop.Verify Page Loaded

Go to the Team
    Navbar.Visit Team
    Bottom.Verify Team Opened

Check the Team page
    Bottom.Verify Team Has Needed Text
