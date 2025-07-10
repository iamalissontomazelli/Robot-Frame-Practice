*** Settings ***
Documentation        Pegar Token

Library         RequestsLibrary
Library         String
Library         Collections

*** Variables ***
${baseUrl}        https://api-suits.qacoders.dev.br/api
${id_user}        686d45e4ec5a45c2760959a7   


*** Test Cases ***
Listar usuarios
    Pegar Token
    Listagem Users

Contar usuarios
    Count users

Pegar usuario
    Get user


*** Keywords ***
Criar Sessao
    ${headers}    Create Dictionary    accept=application/json    Content-Type=application/json 
    Create Session    alias=develop    url=${baseUrl}    headers=${headers}


Pegar Token
    ${body}    Create Dictionary    
    ...    mail=sysadmin@qacoders.com    
    ...    password=1234@Test
        Log    ${body}
        Criar Sessao
        ${resposta}    POST On Session    alias=develop    url=/login    json=${body}
        #Log To Console   ${resposta.json()}
        #Log To Console    ${resposta.json()["token"]}
        Status Should Be    200    ${resposta}
        RETURN    ${resposta.json()["token"]}


Listagem Users
    ${token}    Pegar Token
    GET On Session    alias=develop    url=/user/?token=${token}


Count users
    ${token}    Pegar Token
    GET On Session    alias=develop    url=/user/count/?token=${token}


Get user
    ${token}    Pegar Token
    GET On Session    alias=develop    url=/user/${id_user}?token=${token}
        