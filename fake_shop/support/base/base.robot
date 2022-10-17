*** Settings ***
Documentation       Keywords and variables for general uses
Library             RequestsLibrary
Library             Collections
Library             OperatingSystem
Resource            ../common/common.robot
Resource            ../variables/variables.robot

*** Keywords ***
Open Session
    Create Session    fakeshop    ${BASE_URL}