*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/cart/cart_keywords.robot

Suite Setup     Open Session

*** Test Cases ***
Test Case 1: GET Cart With Invalid ID
    [Tags]    1
    ${get_cart}         ${status_code}        GET Cart ID   40    
    Log To Console      ${get_cart}
    Log To Console      ${status_code}

Test Case 2: GET Exceed Limit Of Carts
    [Tags]    2
    ${get_cart}         ${status_code}        GET Limit   9999   
    Log To Console      ${get_cart}
    Log To Console      ${status_code}

Test Case 3: GET Use Negative Range In Limit Of Carts
    [Tags]    3
    ${get_cart}         ${status_code}        GET Limit   -3    
    Log To Console      ${get_cart}
    Log To Console      ${status_code}

Test Case 4: GET Cart Using Invalid Date Format
    [Tags]    4
    ${get_order}        ${status_code}        GET Range Date    2    10    2019    16    8    2020 
    Log To Console      ${get_order}
    Log To Console      ${status_code}

Test Case 5: GET Cart Using Invalid Start Year
    [Tags]    5
    ${get_order}        ${status_code}        GET Range Date    1800    10    2    2022    10    5 
    Log To Console      ${get_order}
    Log To Console      ${status_code}

Test Case 6: GET Cart Using Invalid End Year
    [Tags]    6
    ${get_order}        ${status_code}        GET Range Date    2019    10    2    2100    10    5 
    Log To Console      ${get_order}
    Log To Console      ${status_code}

Test Case 7: POST Add New Cart Without User ID
    [Tags]    7
    ${new_cart}        ${status_code}        POST Cart Static Data    no_user_ID_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 8: POST Add New Cart With Nonexist User ID
    [Tags]    8
    ${new_cart}        ${status_code}        POST Cart Static Data    invalid_user_ID_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 9: POST Add New Cart With Blank Spaces User ID
    [Tags]    9
    ${new_cart}        ${status_code}        POST Cart Static Data    blank_spaces_user_ID_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 10: POST Add New Cart With Invalid Date
    [Tags]    10
    ${new_cart}        ${status_code}        POST Cart Static Data    invalid_date_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 11: POST Add New Cart Without Date
    [Tags]    11
    ${new_cart}        ${status_code}        POST Cart Static Data    without_date_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 12: POST Add New Cart With Blank Spaces Date
    [Tags]    12
    ${new_cart}        ${status_code}        POST Cart Static Data    blank_spaces_date_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 13: POST Add New Cart With Invalid ID Product
    [Tags]    13
    ${new_cart}        ${status_code}        POST Cart Static Data    invalid_product_ID_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 14: POST Add New Cart Without ID Product
    [Tags]    14
    ${new_cart}        ${status_code}        POST Cart Static Data    without_product_ID_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 15: POST Add New Cart With Blank Spaces ID Product
    [Tags]    15
    ${new_cart}        ${status_code}        POST Cart Static Data    blank_spaces_product_ID_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 16: POST Add New Cart With Zero Quantity Of Product
    [Tags]    16
    ${new_cart}        ${status_code}        POST Cart Static Data    zero_product_quantity_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 17: POST Add New Cart With Negative Quantity Of Product
    [Tags]    17
    ${new_cart}        ${status_code}        POST Cart Static Data    negative_product_quantity_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 18: POST Add New Cart With Decimal Quantity Of Product
    [Tags]    18
    ${new_cart}        ${status_code}        POST Cart Static Data    decimal_product_quantity_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 19: POST Add New Cart With Higher Quantity Of Product
    [Tags]    19
    ${new_cart}        ${status_code}        POST Cart Static Data    higher_product_quantity_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 20: POST Add New Cart With No Product
    [Tags]    20
    ${new_cart}         ${status_code}        POST Cart Static Data    no_product_cart
    Log To Console      ${new_cart}
    Log To Console      ${status_code}

Test Case 21: PUT Update Cart With Invalid User ID
    [Tags]    21
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    invalid_user_ID_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 22: PUT Update Cart With No User ID
    [Tags]    22
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    no_user_ID_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 23: PUT Update Cart With Blank Space User ID
    [Tags]    23
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    blank_spaces_user_ID_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 24: PUT Update Cart With Invalid Date Format
    [Tags]    24
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    invalid_date_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 25: PUT Update Cart With No Date
    [Tags]    25
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    without_date_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 26: PUT Update Cart With Blank Space Date
    [Tags]    26
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    blank_spaces_date_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 27: PUT Update Cart With Future Date
    [Tags]    27
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    future_date_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 28: PUT Update Cart With Invalid Product ID
    [Tags]    28
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    invalid_product_ID_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 29: PUT Update Cart With No Product ID
    [Tags]    29
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    without_product_ID_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}

Test Case 30: PUT Update Cart With Blank Space Product ID
    [Tags]    30
    ${update_cart}      ${status_code}        PUT Cart Static Data    2    blank_spaces_product_ID_cart
    Log To Console      ${update_cart}
    Log To Console      ${status_code}