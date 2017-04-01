*** Settings ***
Documentation  Demo page top navigation
Library  Selenium2Library

*** Variables ***
${INFO_TAB} =   xpath=//*[@id="info-tab"]
${TODO_TAB} =   xpath=//*[@id="todo-tab"]
${TWEETER_TAB} =   //*[@id="tweeter-tab"]
${UNIT_TAB} =   xpath=//*[@id="unit-tab"]
${ROBOT_TAB} =  xpath=//*[@id="robot-tab"]

*** Keywords ***

Click "Information" Tab
    Click Element  ${INFO_TAB}

Click "Todo App" Tab
    Click Element  ${TODO_TAB}

Click "Tweeter" Tab
    Click Element  ${TWEETER_TAB}

Click "Unit Tests" Tab
    Click Element  ${UNIT_TAB}

Click "Robot Framework" Tab
    Click Element  ${ROBOT_TAB}
