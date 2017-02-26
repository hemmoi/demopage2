*** Settings ***
Documentation   Robot Framework tests for the demo web page.

Resource        ../Resources/DemopageApp.robot
Resource        ../Resources/Common.robot

Suite Setup     Begin web test
Test Setup      NONE
Test Teardown   NONE
Suite Teardown  End web test


*** Variables ***
${BROWSER} =  chrome
${START_URL} =  localhost:3000
${INPUT_TIME} =  10


*** Test Cases ***

User can browse all top navigation tabs
    [Documentation]  All top navigation tabs work and open the right page
    [Tags]  Navigation
    DemoPageApp.Browse all top navigation tabs


User can browse all tabs on the "Information" page
    [Documentation]  All "Information" page tabs work and open the right page
    [Tags]  Navigation
    DemoPageApp.Browse all tabs on the "Information" page
