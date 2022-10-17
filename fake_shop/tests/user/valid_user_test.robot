*** Settings ***
Documentation    Creating valid test for the endpoint /user
Resource        ../../keywords/user_keywords.robot

Suite Setup     Open Session

*** Test Cases ***
Test Case 1: GET List All Users
    [Tags]    1
    GET All Users Endpoint /user