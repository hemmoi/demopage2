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

    TopNav.Click "Demo Application" Tab
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
