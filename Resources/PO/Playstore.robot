*** Settings ***
Documentation   PO resource file for MyJioApp
Library         SeleniumLibrary

*** Variables ***
${Android_download_button}          (//div[@class="img-inline-flex"]//a)[1]
#${Android_download_button}          (//a[@data-appname="MyJio"])[1]




*** Keywords ***
Go to Playstore
    Click Element               ${Android_download_button}
    Page Should Contain         ${app_name}
    Log To Console              ${app_name} Android
    Sleep   5s
    Capture Page Screenshot     #MyJio_Playstore.png