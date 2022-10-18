*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
POST Create New User
    ${response}        POST On Session        fakeshop        /users
    Set Global Variable         ${response}

# The ID is not necessary in the tests
Save User ID
    ${user_id}        Set Variable        ${response.json()["id"]}
    Set Global Variable    ${user_id}

# Keywords that uses static mass
Register New User
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["valid_user"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User With Invalid Email
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_invalid_email"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Email
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_email"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Username
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_username"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Password
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_password"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without First Name
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_firstname"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Last Name
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_lastname"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without City
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_city"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Street
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_street"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Number
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_number"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Zipcode
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_zipcode"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Latitude
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_lat"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Longitude
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_long"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User Without Phone
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["user_without_phone"]}
    Set Global Variable         ${payload}
    POST Create New User

Register New User With Empty Data
    ${json}     Import Static Json        ./json_user.json
    ${payload}          Set Variable                   ${json["empty_user"]}
    Set Global Variable         ${payload}
    POST Create New User