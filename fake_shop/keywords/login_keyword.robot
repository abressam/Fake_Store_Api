*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../support/base/base.robot

*** Keywords ***
POST Login User /auth/login 200
    &{payload}        Create Dictionary         username=johnd    password=m38rmF$
    ${response}        POST On Session        fakeshop        /auth/login    data=&{payload}
    Log to Console     Response: ${response}
    Log to Console     Responde: ${response.content}
    Set Global Variable         ${response}

Validate Login
    Should Not Be Empty        ${response.json()["token"]}

Do Login And Save Token
    Validate Login
    ${token_auth}        Set Variable        ${response.json()["token"]}
    Set Global Variable    ${token_auth}
