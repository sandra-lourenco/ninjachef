***Settings***
Documentation    Aqui teremos palavras chaves de apoio


***Keywords***
Login Session
    [Arguments]                              ${email}
    base.Open Session
    Go To                                    ${base_url)} 
    Quando submeto o meu email "${email}"
    Input Text                               ${CAMPO_EMAIL}     ${email}    
    Click Element                            ${BOTAO_ENTRAR}
    Wait Until Page Contains Element         ${DIV_DASH}

Get Api Token
    [Arguments]    ${email}

    &{headers}=    Create Dictionary    Content-type=application/json
    &{payload}=    Create Dictionary    email=${email_cozinheiro}


    Create Session      api             ${api_api)} 
    ${resp}=            Post Request    api             /session    data=${payload}    headers=${headers}
    Status Should Be    200             ${resp}

    ${token}    Convert to String    ${resp.json()['_id']}
    [return]    ${token} 