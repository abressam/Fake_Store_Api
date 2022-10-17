*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/login_keyword.robot

Suite Setup     Open Session

*** Test Cases ***
Test Case 1: POST Login User
    [Tags]    1
    Valid Login
    Do Login And Save Token
    Print Return Status Code
    Print Return Message