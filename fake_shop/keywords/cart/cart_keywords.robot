*** Settings ***
Documentation    Keywords for the endpoint /carts
Resource         ../../support/base/base.robot

*** Keywords ***
GET All Carts
    ${response}        GET On Session        fakeshop        /carts
    Set Global Variable         ${response}