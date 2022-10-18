*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
POST Login User /auth/login
    ${response}        POST On Session        fakeshop        /auth/login    json=&{payload}        expected_status=anything
    Set Global Variable         ${response}

Validate Login
    Should Not Be Empty        ${response.json()["token"]}

Do Login And Save Token
    Validate Login
    ${token_auth}        Set Variable        ${response.json()["token"]}
    Set Global Variable    ${token_auth}

# Keywords that uses static mass
Valid Login
    ${json}     Import Static Json        ./json_login.json
    ${payload}          Set Variable                   ${json["valid_login"]}
    Set Global Variable         ${payload}
    POST Login User /auth/login

Login User Do Not Exists
    ${json}     Import Static Json        ./json_login.json
    ${payload}          Set Variable                   ${json["do_not_exists"]}
    Set Global Variable         ${payload}
    POST Login User /auth/login

Login Without Username
    ${json}     Import Static Json        ./json_login.json
    ${payload}          Set Variable                   ${json["without_username"]}
    Set Global Variable         ${payload}
    POST Login User /auth/login

Login Without Password
    ${json}     Import Static Json        ./json_login.json
    ${payload}          Set Variable                   ${json["without_password"]}
    Set Global Variable         ${payload}
    POST Login User /auth/login

Login With Blank Spaces Username
    ${json}     Import Static Json        ./json_login.json
    ${payload}          Set Variable                   ${json["blank_spaces_username"]}
    Set Global Variable         ${payload}
    POST Login User /auth/login

Login With Blank Spaces Password
    ${json}     Import Static Json        ./json_login.json
    ${payload}          Set Variable                   ${json["blank_spaces_password"]}
    Set Global Variable         ${payload}
    POST Login User /auth/login

Login With Wrong Username
    ${json}     Import Static Json        ./json_login.json
    ${payload}          Set Variable                   ${json["wrong_username"]}
    Set Global Variable         ${payload}
    POST Login User /auth/login

Login With Wrong Password
    ${json}     Import Static Json        ./json_login.json
    ${payload}          Set Variable                   ${json["wrong_password"]}
    Set Global Variable         ${payload}
    POST Login User /auth/login