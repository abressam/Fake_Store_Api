*** Settings ***
Documentation       Keywords and variables for general uses
Library             RequestsLibrary
Library             Collections
Library             OperatingSystem
Library             ../library/user_library.py
Library             ../library/product_library.py
Resource            ../common/common.robot
Resource            ../variables/variables.robot
Resource            ../fixtures/dynamic/dynamic.robot

*** Keywords ***
Open Session
    Create Session    fakeshop    ${BASE_URL}