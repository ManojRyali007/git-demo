*** Settings ***
Documentation   Resource file for MyJio
Resource        ../Resources/PO/AppsPage.robot
Resource        ../Resources/PO/AppName.robot
#Resource        ../Resources/PO/AppClient.robot
Resource        ../Resources/PO/GetNow.robot
Resource        ../Resources/PO/MyJio_AppPage.robot
Resource        ../Resources/PO/MyJio download.robot





*** Keywords ***
Visit Apps Page
    Site

Get AppName
    Get

Open MyJio PopUp
    GetNow
    
Redirection To Download Pages
    #Download
    Main Page download

Click Knowmore
    Knowmore

Check Get MyJio
    Get MyJio

    Get MyJio download

Check MyJio Get Now Buttons
    MyJio AppPage GetNow

