*** Settings ***
Documentation   PO resource file for MyJioApp
Library         SeleniumLibrary


*** Variables ***
${app_name}
${Data-id}          
${Knowmore}          (//div[@class="j-button-group flex-nowrap"]//child::button[2])[1]


*** Keywords ***
Knowmore
    Scroll Element Into View    ${Knowmore}
    Click Element           ${Knowmore}
    Page Should Contain     ${app_name}
    Sleep                   3s