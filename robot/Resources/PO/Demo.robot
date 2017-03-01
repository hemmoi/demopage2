*** Settings ***
Library  Selenium2Library

*** Keywords ***

Verify Page Loaded
    Wait Until Page Contains  Todo

Add Text to "Search todos" field
    [Arguments]                             ${todo}
    Input Text                              //*[@id="app"]/div/div[2]/div/div/div/div/div[1]/div[1]/input                 ${todo}

Add Todo
    [Arguments]                             ${todo}
    Input Text                              xpath=//*[@id="app"]/div/div[2]/div/div/div/div/div[3]/form/input             ${todo}
    Click Button                            xpath=//*[@id="app"]/div/div[2]/div/div/div/div/div[3]/form/button

Click Existing Todo item
    [Arguments]                             ${todo}
    Click Element                           xpath=//*[contains(text(), '${todo}')]

Select "Show completed todos" check box
    Select Checkbox                         xpath=//*[@id="app"]/div/div[2]/div/div/div/div/div[1]/div[2]/label/input

Unselect "Show completed todos" check box
    Unselect Checkbox                       xpath=//*[@id="app"]/div/div[2]/div/div/div/div/div[1]/div[2]/label/input

Verify ToDo Item Can Be Seen
    [Arguments]                             ${todo}
    Wait Until Page Contains                ${todo}

Verify ToDo Item Can Not Be Seen
    [Arguments]                             ${todo}
    Wait Until Page Does Not Contain        ${todo}
