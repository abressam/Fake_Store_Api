*** Settings ***
Documentation    Keywords for general uses

*** Keywords ***
Print Return Message
    Log To Console    \nResponse: ${response.content}

Print Return Status Code
    Log To Console    \nStatus Code: ${response.status_code}

Import Static Json
    [Arguments]    ${file_name}
    ${file}    Get File        ${EXECDIR}/fake_shop/support/fixtures/static${file_name}
    ${data}            Evaluate     json.loads('''${file}''')    json
    [Return]        ${data}