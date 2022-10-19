*** Settings ***
Documentation    Creating valid test for the endpoint /products
Resource        ../../keywords/product/product_keywords.robot
Resource        ../../keywords/product/post_product_keywords.robot

Suite Setup     Open Session

*** Test Cases ***
Test Case 1: GET List All Products
    [Tags]    1
    GET List All Products
    Print Return Status Code
    Print Return Message

Test Case 2: GET Product By ID
    [Tags]    2
    GET Product By ID
    Print Return Status Code
    Print Return Message

Test Case 3: GET Limit Of Products
    [Tags]    3
    ${get_category}     ${status_code}        Get Limit Of Products    ${5}
    Log To Console      ${get_category}        
    Log To Console      ${status_code}

Test Case 4: GET Products In Descending Order
    [Tags]    4
    ${get_category}     ${status_code}        Products In Descending Order
    Log To Console      ${get_category}        
    Log To Console      ${status_code}

Test Case 5: GET Products In Ascending Order
    [Tags]    5
    ${get_category}     ${status_code}        Products In Ascending Order
    Log To Console      ${get_category}        
    Log To Console      ${status_code}

Test Case 6: GET List Products Category
    [Tags]    6
    GET All Products Categories
    Print Return Status Code
    Print Return Message

Test Case 7: GET List All Products In Electronics Category
    [Tags]    7
    ${get_category}     ${status_code}        Get Category    electronics
    Log To Console      ${get_category}        
    Log To Console      ${status_code}

Test Case 8: GET List All Products In Jewelery Category
    [Tags]    7
    ${get_category}     ${status_code}        Get Category    jewelery
    Log To Console      ${get_category}        
    Log To Console      ${status_code}

Test Case 9: GET List All Products In Men's Clothing Category
    [Tags]    7
    ${get_category}     ${status_code}        Get Category    men's clothing
    Log To Console      ${get_category}        
    Log To Console      ${status_code}

Test Case 10: GET List All Products In Women's Clothing Category
    [Tags]    7
    ${get_category}     ${status_code}        Get Category    women's clothing
    Log To Console      ${get_category}        
    Log To Console      ${status_code}

Test Case 11: POST Add New Product With Absolute Value
    [Tags]    11
    Register Product With Absolute Price
    Print Return Status Code
    Print Return Message

Test Case 12: POST Add New Product With Decimal Value
    [Tags]    12
    Register Product With Decimal Price
    Print Return Status Code
    Print Return Message

Test Case 13: POST Add New Product With Zero Value
    [Tags]    13
    Register Product With Zero Price
    Print Return Status Code
    Print Return Message

Test Case 24: DELETE Remove Product By ID
    [Tags]    24
    DELETE Remove Product By ID
    Print Return Status Code
