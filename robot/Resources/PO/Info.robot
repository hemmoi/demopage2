*** Settings ***
Library  Selenium2Library

*** Keywords ***

Load Landing Page
    Go To  ${START_URL}
    sleep  3s

Verify Page Loaded
    Wait Until Page Contains  Info