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
    ${new_product}    ${status_code}        POST Static Data   product_without_title
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 7: POST Product Title With Blank Spaces
    [Tags]    7
    ${new_product}    ${status_code}        POST Static Data    product_blank_spaces_title
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 8: POST Product Without Price
    [Tags]    8
    ${new_product}    ${status_code}        POST Static Data    product_without_price
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 9: POST Product Price With Blank Spaces
    [Tags]    9
    ${new_product}    ${status_code}        POST Static Data    product_blank_spaces_price
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 10: POST Product Price With Negative Value
    [Tags]    10
    ${new_product}    ${status_code}        POST Static Data    product_negative_price
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 11: POST Product Without Description
    [Tags]    11
    ${new_product}    ${status_code}        POST Static Data    product_without_description
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 12: POST Product Description With Blank Spaces
    [Tags]    12
    ${new_product}    ${status_code}        POST Static Data    product_blank_spaces_description
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 13: POST Product Without Image
    [Tags]    13
    ${new_product}    ${status_code}        POST Static Data    product_without_image
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 14: POST Product Image With Blank Spaces
    [Tags]    14
    ${new_product}    ${status_code}        POST Static Data    product_blank_spaces_image
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 15: POST Product Without Category
    [Tags]    15
    ${new_product}    ${status_code}        POST Static Data    product_without_category
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 16: POST Product Category With Blank Spaces
    [Tags]    16
    ${new_product}    ${status_code}        POST Static Data    product_blank_spaces_category
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 17: PUT Update Product Removing Title      
    [Tags]    17
    ${new_product}    ${status_code}        PUT Static Data   5    product_without_title
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 18: PUT Update Product Title To Blank Spaces 
    [Tags]    18
    ${new_product}    ${status_code}        PUT Static Data   5    product_blank_spaces_title
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 19: PUT Update Product Removing Price
    [Tags]    19
    ${new_product}    ${status_code}        PUT Static Data   5    product_without_price
    Log To Console      ${status_code}

Test Case 20: PUT Update Product Price To Blank Spaces
    [Tags]    20
    ${new_product}    ${status_code}        PUT Static Data   5    product_blank_spaces_price
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 21: PUT Update Product Price To Negative Value
    [Tags]    21
    ${new_product}    ${status_code}        PUT Static Data   5    product_negative_price
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 22: PUT Update Product Removing Description
    [Tags]    22
    ${new_product}    ${status_code}        PUT Static Data   5    product_without_description
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 23: PUT Update Product Description To Blank Spaces
    [Tags]    23
    ${new_product}    ${status_code}        PUT Static Data   5    product_blank_spaces_description
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 24: PUT Update Product Removing Image
    [Tags]    24
    ${new_product}    ${status_code}        PUT Static Data   5    product_without_image
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 25: PUT Update Product Image To Blank Spaces
    [Tags]    25
    ${new_product}    ${status_code}        PUT Static Data   5    product_blank_spaces_image
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 26: PUT Update Product Removing Category
    [Tags]    26
    ${new_product}    ${status_code}        PUT Static Data   5    product_without_category
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 27: PUT Update Product Category To Blank Spaces
    [Tags]    27
    ${new_product}    ${status_code}        PUT Static Data   5    product_blank_spaces_category
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 28: PATCH Update Product Removing Title
    [Tags]    28
    ${new_product}    ${status_code}        PATCH Static Data    6    product_without_title
    Log To Console      ${new_product}
    Log To Console      ${status_code}

Test Case 39: DELETE Nonexist Product ID
    [Tags]    39
    ${new_product}    ${status_code}        DELETE Product   23
    Log To Console      ${new_product}
    Log To Console      ${status_code}