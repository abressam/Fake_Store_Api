*** Settings ***
Documentation       Keywords and variables for general uses
Library             RequestsLibrary
Library             Collections
Resource            ../common/common.robot

*** Keywords ***
Open Session
    Create Session    fakeshop    https://fakestoreapi.com