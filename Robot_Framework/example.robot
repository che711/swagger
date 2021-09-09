*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library    RequestsLibrary
Library    OperatingSystem

*** Variables ***
${MESSAGE}        Hello, world!
${Base_URL}       https://petstore.swagger.io/v2/user/string

*** Test Cases ***
My Test
    [Documentation]    Example test.
    Log    ${MESSAGE}
    My Keyword          ${CURDIR}

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!

The second Test
    ${response}=    GET  https://petstore.swagger.io/v2/user/string

#Swagger Test create new resourse
#    TC001_PostRequest create session petstore   https://petstore.swagger.io/v2/user/string
#    ${body}=  create directory  id=0  username=string   firstName=string   lastName=string
#    ...       email=string   password=string  phone=string  userStatus=0
#    ${header}=  create dictonary  Content-Type=application/json
#    ${response}=  post  request    petstore   data=${body}  headers= &{header}
#    &{code}= converse to string  ${responce.status_code}
#    should be equal  ${code}  200

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}