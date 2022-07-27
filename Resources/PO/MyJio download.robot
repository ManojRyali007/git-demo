*** Settings ***
Documentation   PO resource file for MyJioApp
Library         SeleniumLibrary
Resource        ../PO/Playstore.robot
Resource        ../PO/Appstore.robot
Variables       ../Resources/Variables.yaml

*** Variables ***
#${Get_Now}          (//div[@class="j-button-group flex-nowrap"]//child::button[1])[1]
#${a}
#${len}


*** Keywords ***
Main Page download                      #For Test Case-1    Verify MyJio PopUp
    ${a}        Get WebElements       xpath=//a[@class='j-link GAFieldAppNameDS']
    ${len}      Get Length      ${a}
    Log To Console          ${len} Clients
    
    IF      ${len} == 2
        Go to Playstore
        Revisit AppPage
        Go to Appstore

    END


Get MyJio Download
    ${a}        Get WebElements       xpath=//a[@class='j-link GAFieldAppNameDS']
    ${len}      Get Length      ${a}
    Log To Console          ${len} Clients
    
    IF      ${len} == 2
        Go to Playstore
        Revisit MyJio AppPage
        Get MyJio
        Go to Appstore
    END

MyJio AppPage GetNow
    Revisit MyJio AppPage
    ${a}        Get Element Count       xpath= //button[@data-id='${ID}']
    Log To Console          ${a}
    FOR     ${i}    IN RANGE    1   ${a}+1
        Scroll Element Into View    xpath= (//button[@data-id='${ID}'])[${i}]
        Log To Console      Get now button-${i}
        Click Element       xpath= (//button[@data-id='${ID}'])[${i}]
        Page Should Contain     ${app_name}
        Sleep   2s
        #Click Element           //*[@id="modal-btn"]/div/header/button         #Pop-up close button
        Go to Playstore
        Revisit MyJio AppPage
        Scroll Element Into View    xpath= (//button[@data-id='${ID}'])[${i}]
        Log To Console      Get now button-${i}
        Click Element       xpath= (//button[@data-id='${ID}'])[${i}]
        Page Should Contain     ${app_name}
        Sleep   2s
        Go to Appstore
        Revisit MyJio AppPage
    END
    Sleep       2s





Revisit AppPage
    Go To               ${URL-Apps}
    Sleep   2s
    Click Element       ${Get_Now}
    Sleep   3s


Revisit MyJio AppPage
    Go To                   ${URL-Apps}
    Click Element           ${Knowmore}
    Page Should Contain     ${app_name}
    Sleep                   3s

