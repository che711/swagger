*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library           RequestsLibrary
Library           Collections
Library           OperatingSystem
Library           ExtendedRequestsLibrary




*** Variables ***
${Base_URL}       https://petstore.swagger.io/v2
${data}           [{"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}]
${data_2}         {"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}
${uri}            https://petstore.swagger.io/v2/user/string

*** Test Cases ***
Swagger user get username Test
    ${response}=    GET  https://petstore.swagger.io/v2/user/string

Swagger user post createWithList Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    POST  https://petstore.swagger.io/v2/user/createWithList  data= ${data}   headers=${headers}

Swagger user put username Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    PUT  https://petstore.swagger.io/v2/user/string   data=${data_2}     headers=${headers}

