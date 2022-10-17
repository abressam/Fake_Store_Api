*** Settings ***
Documentation    Keywords for general uses

*** Keywords ***
Print Return Message
    Log To Console    \nResponse: ${response.content}

Print Return Status Code
    Log To Console    \nStatus Code: ${response.status_code}