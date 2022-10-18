*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
PATCH Update User By ID
    ${response}        PATCH On Session        fakeshop        /users/1    json=&{payload}
    Set Global Variable         ${response}

PATCH Update User All Fields
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["valid_user"]}
    Set Global Variable         ${payload}
    PATCH Update User By ID