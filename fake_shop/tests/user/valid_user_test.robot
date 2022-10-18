*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/user/get_user_keywords.robot
Resource        ../../keywords/user/post_user_keywords.robot

Suite Setup     Open Session

*** Test Cases ***
Test Case 1: GET List All Users
    [Tags]    1
    GET All Users Endpoint /users
    Print Return Status Code
    Print Return Message

Test Case 2: GET User By ID
    [Tags]    2
    GET User By ID /users/id
    Print Return Status Code
    Print Return Message

Test Case 3: GET Limited List Of User
    [Tags]    3
    ${get_limit}        ${status_code}        Get Limit Of Users        ${5}
    Log To Console      ${get_limit}        
    Log To Console      ${status_code}

Test Case 4: GET Users In Descending Order
    [Tags]    4
    ${get_order}        ${status_code}        Users In Descending Order
    Log To Console      ${get_order}        
    Log To Console      ${status_code}

Test Case 5: GET Users In Ascending Order
    [Tags]    5
    ${get_order}        ${status_code}        Users In Ascending Order
    Log To Console      ${get_order}        
    Log To Console      ${status_code}

Test Case 6: POST Add New User
    [Tags]    6
    Register New User
    Print Return Status Code
    Print Return Message