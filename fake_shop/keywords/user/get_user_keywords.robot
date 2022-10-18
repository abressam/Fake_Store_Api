*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
GET All Users Endpoint /users
    ${response}        GET On Session        fakeshop        /users
    Set Global Variable         ${response}

# ID is in hardcode, change later
GET User By ID /users/id
    ${response}        GET On Session        fakeshop        /users/1
    Set Global Variable         ${response}

GET User With Invalid ID
    ${response}        GET On Session        fakeshop        /users/${INVALID_VALUE}
    Set Global Variable         ${response}