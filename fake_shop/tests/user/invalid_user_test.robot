*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/user/user_keywords.robot

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
    ${get_limit}        ${status_code}        GET Limit User    9999999
    Log To Console      ${get_limit}        
    Log To Console      ${status_code}

# Test return status code 200 and the users in the limit
# API can convert the negative number to a positive number
Test Case 3: GET Negative Limit Of Users
    [Tags]    3
    ${get_limit}        ${status_code}        GET Limit User    -3
    Log To Console      ${get_limit}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
# Return ID equal to 11, but this user already exists
Test Case 4: POST User With Invalid Email
    [Tags]    4
    ${new_user}        ${status_code}        POST User Static Data        user_invalid_email 
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 5: POST User Without Email
    [Tags]    5
    ${new_user}        ${status_code}        POST User Static Data        user_without_email 
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 6: POST User Without Username
    [Tags]    6
    ${new_user}        ${status_code}        POST User Static Data        user_without_username
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 7: POST User Without Password
    [Tags]    7
    ${new_user}        ${status_code}        POST User Static Data        user_without_password
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 8: POST User Without First Name
    [Tags]    8
    ${new_user}        ${status_code}        POST User Static Data        user_without_firstname 
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 9: POST User Without Last Name
    [Tags]    9
    ${new_user}        ${status_code}        POST User Static Data        user_without_lastname
    Log To Console      ${new_user}        
    Log To Console      ${status_code}


# Test return status code 200, but should fail
Test Case 10: POST User Without City
    [Tags]    10
    ${new_user}        ${status_code}        POST User Static Data        user_without_city 
    Log To Console      ${new_user}        
    Log To Console      ${status_code}


# Test return status code 200, but should fail
Test Case 11: POST User Without Street
    [Tags]    11
    ${new_user}        ${status_code}        POST User Static Data        user_without_street
    Log To Console      ${new_user}        
    Log To Console      ${status_code}


# Test return status code 200, but should fail
Test Case 12: POST User Without Number
    [Tags]    12
    ${new_user}        ${status_code}        POST User Static Data        user_without_number
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 13: POST User Without Zipcode
    [Tags]    14
    ${new_user}        ${status_code}        POST User Static Data        user_without_zipcode
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 14: POST User Without Latitude
    [Tags]    14
    ${new_user}        ${status_code}        POST User Static Data        user_without_lat
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 15: POST User Without Longitude
    [Tags]    15
    ${new_user}        ${status_code}        POST User Static Data        user_without_long
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 16: POST User Without Phone
    [Tags]    16
    ${new_user}        ${status_code}        POST User Static Data        user_without_phone
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
Test Case 17: POST Empty User 
    [Tags]    17
    ${new_user}        ${status_code}        POST User Static Data        empty_user
    Log To Console      ${new_user}        
    Log To Console      ${status_code}

# Test return status code 200, but should fail
# Return Null
Test Case 72: DELETE Remove Nonexist User ID
    [Tags]    72
    ${delete_user}      ${status_code}        DELETE User        2
    Log To Console      ${delete_user}        
    Log To Console      ${status_code}