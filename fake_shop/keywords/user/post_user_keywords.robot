*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
POST Create New User
    ${response}        POST On Session        fakeshop        /users    json=&{payload}     expected_status=anything
    Set Global Variable         ${response}

# The ID is not necessary in the tests
Save User ID
    ${user_id}        Set Variable        ${response.json()["id"]}
    Set Global Variable    ${user_id}

# Keyword using dynamic mass
Create and Register Valid Dynamic User
    ${payload}    Create Valid User Data
    POST Create New User