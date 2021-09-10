*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${Base_URL}   https://petstore.swagger.io/v2/user/createWithList

*** Test Case ***
MyFirstTest
    Create Session    Update_Subscription    ${Base_URL}
    ${headers}= Content-Type=application/json
    ${data}= [{"id": 0,
            "username": "string",
            "firstName": "string",
            "lastName": "string",
            "email": "string",
            "password": "string",
            "phone": "string",
            "userStatus": 0}]
    ${response}=  c Request    Update_Subscription      ocpi/api/v1/user-enrollment/update-subscription    headers=${headers}   data=${data}

    ${json_response}=  Convert To String    ${response.status_code}

    Log To Console    ${response.content}
    Should Be Equal    ${json_response}    200



