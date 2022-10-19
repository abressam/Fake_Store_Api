*** Settings ***
Documentation    Creating valid test for the endpoint /products
Resource        ../../keywords/product/product_keywords.robot
Resource        ../../keywords/product/post_product_keywords.robot

Suite Setup     Open Session

*** Test Cases ***

# Return nothing and status code 200
Test Case 1: GET Nonexist Product ID
    [Tags]    1
    GET Nonexist Product ID
    Print Return Status Code
    Print Return Message

Test Case 2: GET Negative Limit In Product ID
    [Tags]    2
    ${get_limit}        ${status_code}        Get Limit Of Products    ${-18}
    Log To Console      ${get_limit}        
    Log To Console      ${status_code}

Test Case 3: GET Highest Limit In Product ID
    [Tags]    3
    ${get_limit}        ${status_code}        Get Limit Of Products    ${120}
    Log To Console      ${get_limit}        
    Log To Console      ${status_code}

Test Case 4: GET Zero Limit In Product ID
    [Tags]    4
    ${get_limit}        ${status_code}        Get Limit Of Products    ${0}
    Log To Console      ${get_limit}        
    Log To Console      ${status_code}

Test Case 5: GET Nonexist Product Category
    [Tags]    5
    ${get_category}     ${status_code}        Get Category    shoes
    Log To Console      ${get_category}        
    Log To Console      ${status_code}

Test Case 6: POST Product Without Title
    [Tags]    6
    Register Product Without Title
    Print Return Status Code
    Print Return Message
