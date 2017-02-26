*** Settings ***
Library  Selenium2Library

*** Keywords ***

Load Landing Page
    Go To  ${START_URL}

Verify "About these pages" Page Loaded
    Wait Until Page Contains        Welcome

Verify "Demo info" Page Loaded
    Wait Until Page Contains        Used technologies

Verify "About Me" Page Loaded
    Wait Until Page Contains        Who am I

Verify "Contact info" Page Loaded
    Wait Until Page Contains        Contact information
