*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/user_keywords.robot

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
    GET Limited Users
    Print Return Status Code
    Print Return Message

Test Case 4: GET Users In Descending Order
    [Tags]    4
    GET Users In Descending Order
    Print Return Status Code
    Print Return Message

Test Case 5: GET Users In Ascending Order
    [Tags]    5
    GET Users In Ascending Order
    Print Return Status Code
    Print Return Message

Test Case 6: POST Add New User
    [Tags]    6
    Register New User
    Print Return Status Code
    Print Return Message