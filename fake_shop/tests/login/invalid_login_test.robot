*** Settings ***
Documentation    Creating invalid test for the endpoint /login
Resource        ../../keywords/login/login_keywords.robot

Suite Setup     Open Session

*** Test Cases ***
Test Case 1: POST Login With Non-existent User
    [Tags]    1
    Login User Do Not Exists
    Print Return Status Code
    Print Return Message

# Test return status code 524 - Server Timeout 
Test Case 2: POST Login User Without Username
    [Tags]    2
    Login Without Username
    Print Return Status Code
    Print Return Message

# Test return status code 524 - Server Timeout 
Test Case 3: POST Login With Without Password
    [Tags]    3
    Login Without Password
    Print Return Status Code
    Print Return Message

Test Case 4: POST Login User With Blank Spaces Username
    [Tags]    4
    Login With Blank Spaces Username
    Print Return Status Code
    Print Return Message

Test Case 5: POST Login User With Blank Spaces Password
    [Tags]    5
    Login With Blank Spaces Password
    Print Return Status Code
    Print Return Message

Test Case 6: POST Login User Wrong Username
    [Tags]    6
    Login With Wrong Username
    Print Return Status Code
    Print Return Message

Test Case 7: POST Login With Wrong Password
    [Tags]    7
    Login With Wrong Password
    Print Return Status Code
    Print Return Message

