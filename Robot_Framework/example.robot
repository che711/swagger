*** Settings ***
Documentation     Example using the space separated format.
...               Checking the information provided in the
...               Robot Framework documentation.
Library           RequestsLibrary

*** Variables ***
${Base_URL}       https://petstore.swagger.io/v2
${headers}        Content-Type=application/json
${data}           [{"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}]
${data_2}         {"id": 0, "username": "string", "firstName": "string", "lastName": "string", "email": "string", "password": "string", "phone": "string", "userStatus": 0}


*** Test Cases ***

Swagger user get username Test
    ${response}=    GET  https://petstore.swagger.io/v2/user/string

Swagger user post createWithList Test
    ${response}=    POST  https://petstore.swagger.io/v2/user/createWithList  headers=  ${headers}  data=  ${data}
    ${code}= converse to string  ${response.status_code}
    should be equal  ${code}  200

#Swagger Test create new resourse
#    TC001_PostRequest create session petstore   https://petstore.swagger.io/v2/user/string
#    ${body}=  create directory  id=0  username=string   firstName=string   lastName=string
#    ...       email=string   password=string  phone=string  userStatus=0
#    ${header}=  create dictonary  Content-Type=application/json
#    ${response}=  post  request    petstore   data=${body}  headers= &{header}
#    &{code}= converse to string  ${responce.status_code}
#    should be equal  ${code}  200
