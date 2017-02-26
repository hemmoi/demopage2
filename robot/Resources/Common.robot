*** Settings ***
Library  Selenium2Library

*** Keywords ***

Begin web test
    Log  Setting up test suite...
    Open Browser  about:blank  ${BROWSER}
    maximize browser window

End web test
    Close Browser
    Log  Cleaning up test data...
