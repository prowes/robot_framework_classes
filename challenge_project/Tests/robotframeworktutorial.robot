*** Settings ***
Resource  ../Resources/Common.robot
Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test
Documentation   Open the website and check its navigation bar.


*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.robotframeworktutorial.com/front-office/


*** Test Cases ***
The website opens
    [tags]    smoke
    log    Accessing to the website...
    Common.Open and check Website

Team button opens
    [tags]    smoke
    Common.Open and check Website
    log    Clicking the Team button...
    Common.Go to the Team

Team button opens and its page has needed text
    [tags]    regression
    Common.Open and check Website
    Common.Go to the Team
    log    Checking the Team page content...
    Common.Check the Team page
