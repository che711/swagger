*** Settings ***
Library    Collections
Library    RequestsLibrary

*** Test Case ***
Quick Get Request Test
${response}= GET https://petstore.swagger.io/v2/user/string expected_status=200

