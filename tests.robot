*** Settings ***
Library Collection
Library RequestsLibrary

*** Test Cases ***
Quick Get Request Test
    ${response}=    GET    https://petstore.swagger.io/v2/user/string    expected_status=200
