*** Settings ***
Resource  ../Resources/PO/Demo.robot
Resource  ../Resources/PO/Info.robot
Resource  ../Resources/PO/RobotTests.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/UnitTests.robot

*** Keywords ***

Browse all tabs

    Info.Load Landing Page

    TopNav.Click Information Tab
    Info.Verify Page Loaded
    sleep  3s

    TopNav.Click Demo Application Tab
    Demo.Verify Page Loaded
    sleep  3s

    TopNav.Click Unit Tests Tab
    UnitTests.Verify Page Loaded
    sleep  3s

    TopNav.Click Robot Framework Tab
    RobotTests.Verify Page Loaded
    sleep  3s

