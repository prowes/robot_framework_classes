*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TEAM_PAGE_ELEMENT} =    css=#team > div > div:nth-child(1) > div > h2
${TEAM_PAGE_CONTENT} =    Our Amazing Team


*** Keywords ***
Verify Team Opened
    Wait Until Page Contains Element    ${TEAM_PAGE_ELEMENT}

Verify Team Has Needed Text
    ${ACTUAL_TEXT} =  Get Text    ${TEAM_PAGE_ELEMENT}
    Should Be Equal As Strings    ${ACTUAL_TEXT}    ${TEAM_PAGE_CONTENT}    ignore_case=true
