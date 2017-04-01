*** Settings ***
Library  Selenium2Library
Resource  ../Resources/PO/Demo.robot

*** Variables ***
${BROWSER} =   firefox

*** Keywords ***

Begin test suite
    Log  Setting up test suite...
    Open Browser  about:blank  ${BROWSER}
    maximize browser window

End test suite
    Close Browser
    Log  Cleaning up test data...
