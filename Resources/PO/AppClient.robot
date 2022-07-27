*** Settings ***
Documentation   PO resource file for MyJioApp
Library         SeleniumLibrary


*** Variables ***
${Get_Now}          (//div[@class="j-button-group flex-nowrap"]//child::button[1])[1]
${a}
${len}


*** Keywords ***
#Download
    ${a}        Get WebElements       xpath=//a[@class='j-link GAFieldAppNameDS']
    ${len}      Get Length      ${a}
    Log To Console          ${len} Clients
    
    IF      ${len} == 2
        Go to Playstore
        
        Revisit AppPage

        #Go to Appstore

    END

#Go to Playstore
    Click Element       xpath=(//div[@class="img-inline-flex"]//a)[1]
    Page Should Contain          ${app_name}
    Log To Console               ${app_name} Android
    Sleep   5s
    Capture Page Screenshot     MyJio_Playstore.png

#Go to Appstore
    Click Element       xpath=(//div[@class="img-inline-flex"]//a)[2]
    Page Should Contain          ${app_name}
    Log To Console               ${app_name} iOS
    Sleep   5s
    Capture Page Screenshot     MyJio_Appstore.png

#Revisit AppPage
    Go To               ${URL-Apps}
    Sleep   3s
    Click Element       ${Get_Now}