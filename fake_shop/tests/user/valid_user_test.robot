*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/user/user_keywords.robot

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
    ${get_limit}        ${status_code}        GET Limit User        5
    Log To Console      ${get_limit}        
    Log To Console      ${status_code}

Test Case 4: GET Users In Descending Order
    [Tags]    4
    ${get_order}        ${status_code}        GET Order User        desc
    Log To Console      ${get_order}        
    Log To Console      ${status_code}

Test Case 5: GET Users In Ascending Order
    [Tags]    5
    ${get_order}        ${status_code}        GET Order User        asc
    Log To Console      ${get_order}        
    Log To Console      ${status_code}

Test Case 6: POST Add New User
    [Tags]    6
    Create and Register Valid Dynamic User
    Print Return Status Code
    Print Return Message

Test Case 7: PUT Update All User Fields
    [Tags]    7
    ${update_user}       ${status_code}        PUT User Static Data        3        valid_user
    Log To Console      ${update_user}        
    Log To Console      ${status_code}

Test Case 8: PATCH Update All User Fields
    [Tags]    8
    ${update_user}       ${status_code}        PATCH User Static Data        5        valid_user
    Log To Console      ${update_user}        
    Log To Console      ${status_code}

Test Case 9: DELETE Remove User By ID
    [Tags]    9
    ${delete_user}       ${status_code}        DELETE User        3
    Log To Console      ${delete_user}        
    Log To Console      ${status_code}
