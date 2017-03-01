*** Settings ***
Documentation   Robot Framework tests for the demo web page.

Resource        ../Resources/DemopageApp.robot
Resource        ../Resources/Common.robot

Suite Setup     Begin test suite
Test Setup      NONE
Test Teardown   NONE
Suite Teardown  End test suite


*** Variables ***
${BROWSER} =                  chrome
${START_URL} =                localhost:3000
${INPUT_TIME} =               10

${ADD TODO TEXT} =            Text for add todo test
${COMPLETE TODO TEXT} =       Text for complete todo test
${COMPLETED TODO TEXT} =      Text for show completed items test
${RE-ACTIVATE TODO TEXT} =    Text for re-activating completed item test
${SEARCH TODO TEXT1} =        1qaz2wsx
${SEARCH TODO TEXT2} =        3edc4rfv

*** Test Cases ***

User can browse all top navigation tabs
    [Documentation]  All top navigation tabs work and open the right page
    [Tags]  Navigation
    DemoPageApp.Browse all top navigation tabs


User can browse all tabs on the "Information" page
    [Documentation]  All "Information" page tabs work and open the right page
    [Tags]  Navigation
    DemoPageApp.Browse all tabs on the "Information" page

User can add new ToDo item
    [Documentation]  New ToDo item is added and can be found from the ToDos list
    [Tags]  ToDo
    DemoPageApp.Add new ToDo item        ${ADD TODO TEXT}

User can complete a ToDo item
    [Documentation]  Item in a ToDo list is marked as completed
    [Tags]  ToDo
    DemoPageApp.Complete ToDo item       ${COMPLETE TODO TEXT}

User can see completed ToDo item
    [Documentation]  Completed item in a ToDo list can be seen if "Show completed todos" box is checked.
    [Tags]  ToDo
    DemoPageApp.Show Completed ToDos     ${COMPLETED TODO TEXT}

User can re-activate completed ToDo item
    [Documentation]  Completed item in the todo list can be re-activated.
    [Tags]  ToDo
    DemoPageApp.Re-activate Completed ToDo      ${RE-ACTIVATE TODO TEXT}

User can search Todo items
    [Documentation]  Items matching the search criteria are seen. Items that do not match search criteria are hidden.
    [Tags]  ToDo
    DemoPageApp.Search ToDos            ${SEARCH TODO TEXT1}    ${SEARCH TODO TEXT2}
