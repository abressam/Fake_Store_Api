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

POST Create New User
    ${response}        POST On Session        fakeshop        /users    json=&{payload}     expected_status=anything
    Set Global Variable         ${response}

# The ID is not necessary in the tests
Save User ID
    ${user_id}        Set Variable        ${response.json()["id"]}
    Set Global Variable    ${user_id}

Create and Register Valid Dynamic User
    &{payload}        Create Valid User Data
    Set Global Variable        &{payload}
    POST Create New User
