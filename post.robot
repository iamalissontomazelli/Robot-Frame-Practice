*** Settings *** 
Documentation        Teste Projeto


*** Variables ***
${nome}        Alisson Tomazelli



*** Test Cases ***
Imprimir Nome no Terminal
    Imprimir Nome


*** Keywords ***
Imprimir Nome
    Log To Console        Olá ${nome}, Isso é um teste sobre o aprendizado do Robot Framework