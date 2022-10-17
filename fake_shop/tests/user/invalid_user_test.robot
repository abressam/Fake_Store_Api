*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/user_keywords.robot

Suite Setup     Open Session

*** Test Cases ***

# Test return status code 200, but should fail
# Return response equal to null
Test Case 1: GET User ID Does Not Exists
    [Tags]    1
    GET User With Invalid ID
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
# Return All the 10 users
Test Case 2: GET Exceed The Number Of Users
    [Tags]    2
    GET Exceed Number Of Limit Users 
    Print Return Status Code
    Print Return Message

# Test return status code 200 and the users in the limit
# API can convert the negative number to a positive number
Test Case 3: GET Negative Limit Of Users
    [Tags]    3
    GET Negative Limit Of Users 
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
# Return ID equal to 1, but this user already exists
Test Case 4: POST User With Invalid Email
    [Tags]    4
    Register New User With Invalid Email
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 5: POST User Without Email
    [Tags]    5
    Register New User Without Email
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 6: POST User Without Username
    [Tags]    6
    Register New User Without Username
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 7: POST User Without Password
    [Tags]    7
    Register New User Without Password
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 8: POST User Without First Name
    [Tags]    8
    Register New User Without First Name
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 9: POST User Without Last Name
    [Tags]    9
    Register New User Without Last Name
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 10: POST User Without City
    [Tags]    10
    Register New User Without City
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 11: POST User Without Street
    [Tags]    11
    Register New User Without Street
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 12: POST User Without Number
    [Tags]    12
    Register New User Without Number
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 13: POST User Without Zipcode
    [Tags]    14
    Register New User Without Zipcode
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 14: POST User Without Latitude
    [Tags]    14
    Register New User Without Latitude
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 15: POST User Without Longitude
    [Tags]    15
    Register New User Without Longitude
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 16: POST User Without Phone
    [Tags]    16
    Register New User Without Phone
    Print Return Status Code
    Print Return Message

# Test return status code 200, but should fail
Test Case 17: POST Empty User 
    [Tags]    17
    Register New User With Empty Data
    Print Return Status Code
    Print Return Message