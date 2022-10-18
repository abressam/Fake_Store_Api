*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
DELETE User By ID
    ${response}    DELETE On Session    fakeshop    /users/1
    Set Global Variable         ${response}

DELETE Nonexist User ID
    ${response}    DELETE On Session    fakeshop    /users/${INVALID_VALUE}
    Set Global Variable         ${response}