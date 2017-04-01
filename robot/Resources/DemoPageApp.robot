*** Settings ***
Resource  ../Resources/PO/Demo.robot
Resource  ../Resources/PO/Info.robot
Resource  ../Resources/PO/InfoPageNav.robot
Resource  ../Resources/PO/RobotTests.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/UnitTests.robot


*** Keywords ***

Browse all top navigation tabs

    Info.Load Landing Page

    TopNav.Click "Todo App" Tab
    Demo.Verify Page Loaded

    TopNav.Click "Unit Tests" Tab
    UnitTests.Verify Page Loaded

    TopNav.Click "Robot Framework" Tab
    RobotTests.Verify Page Loaded

    TopNav.Click "Information" Tab
    Info.Verify "About these pages" Page Loaded

Browse all tabs on the "Information" page

    Info.Load Landing Page

    InfoPageNav.Click "Demo info" Tab
    Info.Verify "Demo info" Page Loaded

    InfoPageNav.Click "About Me" Tab
    Info.Verify "About Me" Page Loaded

    InfoPageNav.Click "Contact info" Tab
    Info.Verify "Contact info" Page Loaded

    InfoPageNav.Click "About these pages" Tab
    Info.Verify "About these pages" Page Loaded

Add new ToDo item
    [Arguments]                                     ${todo}
    TopNav.Click "Todo App" Tab
    Demo.Verify Page Loaded

    Add Todo                                        ${todo}
    Verify ToDo Item Can Be Seen                    ${todo}

Complete ToDo item
    [Arguments]                                     ${todo}
    DemoPageApp.Add new ToDo item                   ${todo}

    Click Existing Todo item                        ${todo}
    Verify ToDo Item Can Not Be Seen                ${todo}

Re-activate Completed ToDo
    [Arguments]                                     ${todo}
    DemoPageApp.Complete ToDo item                  ${todo}
    Demo.Select "Show completed todos" check box
    Click Existing Todo item                        ${todo}
    Verify ToDo Item Can Be Seen                    ${todo}
    Demo.Unselect "Show completed todos" check box

Show Completed ToDos
    [Arguments]                                     ${todo}
    DemoPageApp.Complete ToDo item                  ${todo}

    Demo.Select "Show completed todos" check box
    Verify ToDo Item Can Be Seen                    ${todo}
    Demo.Unselect "Show completed todos" check box

Search ToDos
    [Arguments]                                     ${todo1}                    ${todo2}
    Add Todo                                        ${todo1}
    Add Todo                                        ${todo2}
    Demo.Add Text to "Search todos" field           ${todo1}
    Verify ToDo Item Can Be Seen                    ${todo1}
    Verify ToDo Item Can Not Be Seen                ${todo2}
