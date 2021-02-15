*** Settings ***
Documentation    Código base para abriri uma sessão com o Appium Server

Library    AppiumLibrary

Resource    kws.robot


*** Keywords ***
#hooks
Open Session
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2"
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/ninjachef.apk
    ...                 udid=emulator-5554
    ...                 adbExecTimeout=12000
Close Session
    Capture Page Screenshot
    Close Application