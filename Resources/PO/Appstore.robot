*** Settings ***
Documentation   PO resource file for MyJioApp
Library         SeleniumLibrary

*** Variables ***
#${iOS_download_button}          (//div[@class="img-inline-flex"]//a)[2]
${iOS_download_button}           (//a[@data-appname="MyJio"])[2]


*** Keywords ***
Go to Appstore
    Click Element               ${iOS_download_button}
    Page Should Contain         ${app_name}
    Log To Console              ${app_name} iOS
    Sleep   5s
    Capture Page Screenshot     #MyJio_Appstore.png