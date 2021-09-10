*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library           RequestsLibrary
Library           Collections

*** Variables ***
${Base_URL}       https://petstore.swagger.io/v2
${data_pet}       {"id": 0, "category": {"id": 0, "name": "string"}, "name": "doggie", "photoUrls": ["string"], "tags": [{"id": 0, "name": "string" }], "status": "available"}

*** Test Cases ***
Swagger add new pet Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    POST      https://petstore.swagger.io/v2/pet     data= ${data_pet}       headers=${headers}

Swagger update pet Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    PUT      https://petstore.swagger.io/v2/pet     data= ${data_pet}       headers=${headers}

Swagger find pet Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    GET      https://petstore.swagger.io/v2/pet/findByStatus

Swagger find pet by id Test
#    Pass execution
#    ...  This test may fail due to a small number of requests to the server
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    GET      https://petstore.swagger.io/v2/pet/1