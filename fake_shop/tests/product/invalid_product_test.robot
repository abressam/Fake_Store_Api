*** Settings ***
Documentation    Creating valid test for the endpoint /products
Resource        ../../keywords/product/product_keywords.robot

Suite Setup     Open Session

*** Test Cases ***

# API just return all the products in data base
Test Case 1: GET Nonexist Product ID
    [Tags]    1
    ${get_id}     ${status_code}        Get Product ID    ${21}
    Log To Console      ${get_id}        
    Log To Console      ${status_code}

# API just return all the products in data base
Test Case 2: GET Negative Limit In Product ID
    [Tags]    2
    ${get_id}     ${status_code}        Get Product ID    ${-1}
    Log To Console      ${get_id}        
    Log To Console      ${status_code}

# API just return all the products in data base
Test Case 3: GET Highest Limit In Product ID
    [Tags]    3
    ${get_id}     ${status_code}        Get Product ID    ${120}
    Log To Console      ${get_id}        
    Log To Console      ${status_code}

# API just return all the products in data base
Test Case 4: GET Zero Limit In Product ID
    [Tags]    4
    ${get_id}     ${status_code}        Get Product ID    ${0}
    Log To Console      ${get_id}        
    Log To Console      ${status_code}

Test Case 5: GET Nonexist Product Category
    [Tags]    5
    ${get_category}     ${status_code}        Get Category    shoes
    Log To Console      ${get_category}        
    Log To Console      ${status_code}