*** Settings ***
Documentation   Check all MyJio downloand redirection from Apps page
Resource        ../Resources/Common.robot
Resource        ../Resources/MyJioApp.robot
Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Verify MyJio PopUp
    [Documentation]   To verify the redirection of MyJio Download pages from main page
    [Tags]      First
    Visit Apps Page
    Get AppName
    Open MyJio PopUp
    Redirection To Download Pages

My Jio AppPage
    [Documentation]  To verify all download redirection pages from MyJio App page
    [Tags]      Second
    Visit Apps Page
    Get AppName
    Click Knowmore
    Check Get MyJio
    Check MyJio Get Now Buttons