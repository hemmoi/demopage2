*** Settings ***
Library  Selenium2Library

*** Keywords ***

Insert Testing Data
    Log  Setting up test suite...
Begin web test
    Open Browser  about:blank  ${BROWSER}
    maximize browser window

End web test
    Close Browser

Cleanup Testing Data
    Log  Cleaning up test data...