*** Settings ***
Documentation  Robot Framework tests for the demo web page.
Resource  ../Resources/DemopageApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin web test
Test Teardown  End web test
Suite Teardown  Cleanup Testing Data

# Copy/paste the line below into Terminal to execute:
# pybot -d results tests/amazon.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  localhost:3000
${INPUT_TIME} =  10


*** Test Cases ***

User can browse all page tabs
    [Documentation]  All page tabs work and open the right page
    [Tags]  Navigation
    DemoPageApp.Browse all tabs



