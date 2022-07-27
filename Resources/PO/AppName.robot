*** Settings ***
Documentation   PO resource file for MyJioApp
Library         SeleniumLibrary
Variables       ..Resources/Variables.yaml


*** Variables ***
#${AppName_Main}     (//h5[@class="j-contentBlock__title j-heading j-text-heading-xxs j-listBlock__prefix"])[1]
#${app_name}
#${Get_Now}          (//div[@class="j-button-group flex-nowrap"]//child::button[1])[1]
#${ID}

*** Keywords ***
Get
    ${app_name}     Get Text    ${AppName_Main}
    Log To Console      ${app_name}
    Set Global Variable     ${app_name}     ${app_name}
    ${ID}      Get Element Attribute   (${Get_Now})[1]  data-id
    Set Global Variable     ${ID}   ${ID}
    #Log To Console      ${ID} GetName block

