*** Settings ***
Documentation  Demo page top navigation
Library  Selenium2Library

*** Variables ***
${ABOUT_PAGES_TAB} =    css=#react-tabs-0
${DEMO_INFO_TAB} =      css=#react-tabs-2
${ABOUT_ME_TAB} =       css=#react-tabs-4
${CONTACT_INFO_TAB} =   css=#react-tabs-6

*** Keywords ***

Click "About these pages" Tab
    Click Element       ${ABOUT_PAGES_TAB}

Click "Demo info" Tab
    Click Element       ${DEMO_INFO_TAB}

Click "About Me" Tab
    Click Element       ${ABOUT_ME_TAB}

Click "Contact info" Tab
    Click Element       ${CONTACT_INFO_TAB}
