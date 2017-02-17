*** Settings ***
Documentation  Demo page top navigation
Library  Selenium2Library

*** Variables ***
${INFO_TAB} =   xpath=//*[@id="info-tab"]
${DEMO_TAB} =   xpath=//*[@id="demo-tab"]
${UNIT_TAB} =   xpath=//*[@id="unit-tab"]
${ROBOT_TAB} =  xpath=//*[@id="robot-tab"]

*** Keywords ***

Click Information Tab
    Click Element  ${INFO_TAB}

Click Demo Application Tab
    Click Element  ${DEMO_TAB}

Click Unit Tests Tab
    Click Element  ${UNIT_TAB}

Click Robot Framework Tab
    Click Element  ${ROBOT_TAB}