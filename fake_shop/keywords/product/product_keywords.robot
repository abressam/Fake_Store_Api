*** Settings ***
Documentation    Keywords for the endpoint /user
Resource         ../../support/base/base.robot

*** Keywords ***
GET List All Products
    ${response}        GET On Session        fakeshop        /products
    Set Global Variable         ${response}

GET Product By ID
    ${response}        GET On Session        fakeshop        /products/1
    Set Global Variable         ${response}

GET All Products Categories
    ${response}        GET On Session        fakeshop        /products/categories
    Set Global Variable         ${response}

    