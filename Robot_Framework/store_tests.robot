*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library           RequestsLibrary
Library           Collections

#  robot  --loglevel TRACE store_tests.robot

*** Variables ***
&{headers}        Content-Type=application/json
${data}           {"sold": randint(1, 10), "string": randint(1, 100), "pending": randint(1, 100), "available": randint(1, 1000)}
${data_oder}      {"id": 0, "petId": 0, "quantity": 0, "shipDate": "2021-09-10T12:12:18.589Z", "status": "placed", "complete": true}
&{headers}        Content-Type=application/json

*** Test Cases ***
Swagger store inventory Test
    ${response}=    GET      https://petstore.swagger.io/v2/store/inventory  data= ${data}

Swagger store oder Test
    ${response}=    POST     https://petstore.swagger.io/v2/store/order     data= ${data_oder}    headers=${headers}


Swagger store oder id Test
#    Pass execution  This test may fail due to a small number of requests to the server
    ${response}=    GET     https://petstore.swagger.io/v2/store/order/2     data= ${data_oder}

Swagger store oder delete Test
#    Pass execution  This test may fail due to a small number of requests to the server
    ${response}=    delete     https://petstore.swagger.io/v2/store/order/2     data= ${data_oder}