*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../support/base/base.robot

*** Keywords ***
GET All Users Endpoint /user 200
    ${response}        GET On Session        fakeshop        /users
    Log to Console     Response: ${response}
    Log to Console     Responde: ${response.content}
    Set Global Variable         ${response}