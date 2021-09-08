*** Settings ***
Library    Collections
Library    RequestsLibrary

*** Test Case ***
Quick Get Request Test
    ${response}= GET https://petstore.swagger.io/v2/user/string
Quick Get Request With Parameters Test
    ${response}=    GET  https://www.google.com/search  params=query=ciao  expected_status=200
