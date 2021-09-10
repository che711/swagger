*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library           RequestsLibrary
Library           Collections
Library           AllureReportLibrary      //var//lib//Allure

*** Variables ***
${Base_URL}       https://petstore.swagger.io/v2
${data}           {"sold": randint(1, 10), "string": randint(1, 100), "pending": randint(1, 100), "available": randint(1, 1000)}
${data_oder}      {"id": 0, "petId": 0, "quantity": 0, "shipDate": "2021-09-10T12:12:18.589Z", "status": "placed", "complete": true}


*** Test Cases ***
Swagger store inventory Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    GET      https://petstore.swagger.io/v2/store/inventory  data= ${data}       headers=${headers}

Swagger ustore oder Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    POST     https://petstore.swagger.io/v2/store/order     data= ${data_oder}   headers=${headers}

Swagger ustore oder id Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    GET     https://petstore.swagger.io/v2/store/order/2     data= ${data_oder}   headers=${headers}

Swagger ustore oder delete Test
    ${headers}      Create Dictionary  Content-Type=application/json; charset=utf-8
    ${response}=    delete     https://petstore.swagger.io/v2/store/order/2     data= ${data_oder}   headers=${headers}