*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library           RequestsLibrary
Library           Collections

#  robot  --loglevel TRACE users_tests.robot

*** Variables ***
&{headers}        Content-Type=application/json
${data_list}      [{"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}]
${data}           {"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}
${data_to_login}  [{"username": "string", "password": "string"}]

*** Test Cases ***
Swagger user get username Test
    ${response}=    GET      https://petstore.swagger.io/v2/user/string

Swagger user post createWithList Test
    ${response}=    POST     https://petstore.swagger.io/v2/user/createWithList     data= ${data_list}

Swagger user put username Test
    ${response}=    PUT      https://petstore.swagger.io/v2/user/string              data=${data}

Swagger user del username Test
    ${response}=    DELETE   https://petstore.swagger.io/v2/user/string

Swagger user login Test
    ${response}=    GET     https://petstore.swagger.io/v2/user/login                data=${data_to_login}

Swagger user logout Test
    ${response}=    GET     https://petstore.swagger.io/v2/user/logout               data=${data_to_login}

Swagger list user Test
    ${response}=    POST     https://petstore.swagger.io/v2/user/createWithArray      data=${data_list}

Swagger create user Test
    ${response}=    POST     https://petstore.swagger.io/v2/user                      data=${data}
