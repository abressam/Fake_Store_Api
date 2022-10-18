*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
PUT Update User By ID
    ${response}        PUT On Session        fakeshop        /users/1    json=&{payload}
    Set Global Variable         ${response}

PUT Update User All Fields
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["valid_user"]}
    Set Global Variable         ${payload}
    PUT Update User By ID
