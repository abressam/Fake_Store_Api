*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
POST Create New Product
    ${response}        POST On Session        fakeshop        /products    json=&{payload}     expected_status=anything
    Set Global Variable         ${response}
Register Product With Absolute Price
    ${json}     Import Static Json        ./json_product.json
    ${payload}          Set Variable                   ${json["product_absolute_price"]}
    Set Global Variable         ${payload}
    POST Create New Product

Register Product With Decimal Price
    ${json}     Import Static Json        ./json_product.json
    ${payload}          Set Variable                   ${json["product_decimal_price"]}
    Set Global Variable         ${payload}
    POST Create New Product

Register Product With Zero Price
    ${json}     Import Static Json        ./json_product.json
    ${payload}          Set Variable                   ${json["product_zero_price"]}
    Set Global Variable         ${payload}
    POST Create New Product