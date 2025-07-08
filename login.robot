*** Settings ***
Documentation        Pegar Token


Library    RequestsLibrary
Library    String
Library    Collections

*** Variables ***
${baseUrl}    https://api-suits.qacoders.dev.br/api/


*** Test Cases ***

Validar Login
    Realizar Login


*** Keywords ***
Criar Sessao
    ${headers}    Create Dictionary    accept=application/json    Content-Type=application/json
    Create Session    alias=develop    url=${baseUrl}    headers=${headers}

Realizar Login
    ${body}    Create Dictionary    mail=sysadmin@qacoders.com    password=1234@Test

Log    ${body}