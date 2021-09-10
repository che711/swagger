*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library           RequestsLibrary
Library           Collections

*** Variables ***
${Base_URL}       https://petstore.swagger.io/v2
${data_list}      [{"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}]
${data}           {"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}
${data_to_login}  [{"username": "string", "password": "string"}]

*** Test Cases ***
Swagger user get username Test
    ${response}=    GET      https://petstore.swagger.io/v2/user/string

Swagger user post createWithList Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    POST     https://petstore.swagger.io/v2/user/createWithList  data= ${data_list}   headers=${headers}

Swagger user put username Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    PUT      https://petstore.swagger.io/v2/user/string           data=${data}     headers=${headers}

Swagger user del username Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    DELETE   https://petstore.swagger.io/v2/user/string     headers=${headers}

Swagger user login Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    GET     https://petstore.swagger.io/v2/user/login       headers=${headers}    data=${data_to_login}

Swagger user logout Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    GET     https://petstore.swagger.io/v2/user/logout       headers=${headers}    data=${data_to_login}

Swagger list user Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    POST     https://petstore.swagger.io/v2/user/createWithArray    headers=${headers}    data=${data_list}

Swagger create user Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    POST     https://petstore.swagger.io/v2/user    headers=${headers}    data=${data}
