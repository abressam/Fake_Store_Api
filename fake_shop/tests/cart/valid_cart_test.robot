*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/cart/cart_keywords.robot

Suite Setup     Open Session

*** Test Cases ***
Test Case 1: GET List All Carts
    GET All Carts
    Print Return Status Code
    Print Return Message

Test Case 2: GET Cart By ID
    [Tags]    2
    ${get_cart}         ${status_code}        GET Cart ID   3    
    Log To Console      ${get_cart}
    Log To Console      ${status_code}

Test Case 3: GET Limited List Of Carts
    [Tags]    3
    ${get_cart}         ${status_code}        GET Limit   2    
    Log To Console      ${get_cart}
    Log To Console      ${status_code}

Test Case 4: GET Carts In Descending Order
    [Tags]    4
    ${get_order}        ${status_code}        GET Order     desc    
    Log To Console      ${get_order}
    Log To Console      ${status_code}

Test Case 5: GET Carts In Ascending Order
    [Tags]    5
    ${get_order}        ${status_code}        GET Order     asc  
    Log To Console      ${get_order}
    Log To Console      ${status_code}

# Return 400 and error message asking for id cart
Test Case 6: GET Carts In Range Date
    [Tags]    6
    ${get_order}        ${status_code}        GET Range Date    2019    12    10    2020    10    10 
    Log To Console      ${get_order}
    Log To Console      ${status_code}

