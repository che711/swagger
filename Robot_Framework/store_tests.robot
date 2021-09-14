*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Suite setup       Setup Store Tests
Library           RequestsLibrary
Library           Collections

#  robot  --loglevel TRACE store_tests.robot

*** Variables ***
&{headers}        Content-Type=application/json

*** Keywords ***
Setup Store Tests
    ${order_id} =  evaluate  random.randint(1,10)  random
    set suite variable    ${order_id}  ${order_id}
    ${data_order} =  evaluate  {"id": ${order_id}, "petId": 0, "quantity": 0, "shipDate": "2021-09-10T12:12:18.589Z", "status": "placed", "complete": True}
    set suite variable  ${data_order}  ${data_order}


*** Test Cases ***
Swagger store inventory Test
    ${response}=    GET      https://petstore.swagger.io/v2/store/inventory

Swagger store oder Test
    ${response}=    POST     https://petstore.swagger.io/v2/store/order     json=${data_order}      headers=&{headers}
    sleep  2 sec

Swagger store oder id Test
    ${response}=    GET     https://petstore.swagger.io/v2/store/order/${order_id}     json=${data_order}

Swagger store oder delete Test
    ${response}=    delete     https://petstore.swagger.io/v2/store/order/${order_id}     json=${data_order}