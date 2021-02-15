*** Settings ***
Documentation    Palavras chave do projecto

*** Keywords ***
Dado que desejo comer "${prato}"
    Set Test Variable    ${prato}

Quando submeto o meu email "${email}"
    Wait Until Page Contains    Buscar Prato 10
    Input Test                  acessibiliti_id=emailInput    ${email}
    Input Test                  acessibiliti_id=plateInput    ${prato}
    Click Text                  Buscar Prato
Então devo ver a lista de pratos por tipo
    Wait Until Page Contains    Fome de ${prato}