*** Settings ***
Documentation   PO resource file for MyJioApp
Library         SeleniumLibrary
Variables       ..Resources/Variables.yaml


*** Variables ***
#${AppName_Main}     (//h5[@class="j-contentBlock__title j-heading j-text-heading-xxs j-listBlock__prefix"])[1]
#${app_name}
#${Get_Now}          (//div[@class="j-button-group flex-nowrap"]//child::button[1])[1]
#${Data-id}     
#${Get MyJio}         //div[@class="j-contentBlock__description j-text-body-l j-color-primary-grey-80"]



*** Keywords ***
GetNow
       
    Click Element       (${Get_Now})[1]
    Wait Until Page Contains     ${app_name}
    Sleep       2s
    #Log To Console      ${app_name} Pop-up

Get MyJio
    Click Element                   ${Get MyJio}        #Through banner 
    Wait Until Page Contains        ${app_name}
    Sleep           3s

#GetNow ID                      #Not used - not to be considered
    #Scroll Element Into View        xpath= //button[@data-id='${ID}']    
    #Click Element                   xpath= //button[@data-id='${ID}']
    #Wait Until Page Contains        ${app_name}
