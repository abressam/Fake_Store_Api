*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/login_keyword.robot

Suite Setup     Open Session

*** Test Cases ***
Test Case 1: POST Login User
    [Tags]    1
    POST Login User /auth/login 200
    Do Login And Save Token