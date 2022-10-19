*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
POST Create New Product
    ${response}        POST On Session        fakeshop        /products    json=&{payload}     expected_status=anything
    Set Global Variable         ${response}