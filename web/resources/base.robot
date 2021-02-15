***Settings***
Documentation    Aqui temos a estrutura base do projeto, o selenium é importante aqui
Library          SeleniumLibrary
Library          RequestsLibrary
Library          OperatingSystem

Resource    kws.robot
Resource    helpers.robot
Resource    elements.robot

***Variables***
${base_url)}    http://ninjachef-qaninja-io.umbler.net/       
${api_api)}     http://ninjachef-api-qaninja-io.umbler.net    

***Keywords***

##Hooks
Open Session
    Open Browser    about:blank    chrome
Close Session
    Capture Page Screenshot
    Close Browser
