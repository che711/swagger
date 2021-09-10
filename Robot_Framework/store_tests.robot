*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library           RequestsLibrary
Library           Collections

*** Variables ***
${Base_URL}       https://petstore.swagger.io/v2
${data}           {"sold": randint(1, 10), "string": randint(1, 100), "pending": randint(1, 100), "available": randint(1, 1000)}
${data_oder}      {"id": 0, "petId": 0, "quantity": 0, "shipDate": "2021-09-04T10:14:03.177Z", "status": "placed", "complete": True}

*** Test Cases ***
Swagger store inventory Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    GET      https://petstore.swagger.io/v2/store/inventory  data= ${data}       headers=${headers}

Swagger ustore_oder Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    POST     https://petstore.swagger.io/v2/store/order     data= ${data_oder}   headers=${headers}