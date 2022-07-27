*** Settings ***
Documentation   PO resource file for MyJioApp
Library         SeleniumLibrary
Variables       ..Resources/Variables.yaml


*** Variables ***
#${URL-Apps}         https://www.jio.com/en-in/apps    


*** Keywords ***
Site
    Go To               ${URL-Apps}
    Sleep               3s
    Log To Console      \n