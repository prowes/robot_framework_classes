*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_PAGE_CONTENT} =  Our Amazing Team

*** Keywords ***
Verify Team Opened
    Wait Until Page Contains  ${TEAM_PAGE_CONTENT}