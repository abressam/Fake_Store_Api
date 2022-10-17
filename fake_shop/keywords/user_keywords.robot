*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../support/base/base.robot

*** Keywords ***
GET All Users Endpoint /users
    ${response}        GET On Session        fakeshop        /users
    Set Global Variable         ${response}

# ID is in hardcode, change later
GET User By ID /users/id
    ${response}        GET On Session        fakeshop        /users/1
    Set Global Variable         ${response}

# Limit number is in hard code, add python library to ask the number to the user
GET Limited Users 
    ${response}        GET On Session        fakeshop        /users?       params=limit=2
    Set Global Variable         ${response}

Save User ID
    ${user_id}        Set Variable        ${response.json()["id"]}
    Set Global Variable    ${user_id}