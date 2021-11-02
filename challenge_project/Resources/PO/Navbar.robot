*** Settings ***
Documentation  Top bar navigation
Library  SeleniumLibrary

*** Variables ***
${SERVICES} =  xpath=//a[@href='#services']
${PORTFOLIO} =  xpath=//a[@href='#portfolio']
${ABOUT} =  xpath=//a[@href='#about']
${TEAM} =  xpath=//a[@href='#team']
${CONTACT} =  xpath=//a[@href='#contact']

*** Keywords ***
Visit Team
    click element    ${TEAM}
  #  sleep    5s

