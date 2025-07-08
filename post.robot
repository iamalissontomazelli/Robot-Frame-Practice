*** Settings ***
Documentation    Teste Projeto Robot Framework



**** Variables ***
${nome}    Alisson Tomazelli

*** Test Cases ***
Imprimir Nome no Terminal
    Imprimir Nome

*** Keywords ***
Imprimir Nome
    Log To Console    Fazendo teste por  ${nome}