import pytest
from random import randint
import randomaizer

@pytest.fixture()
def user_data():
    random_data = randomaizer.RandomData()
    random_name = random_data.generate_word(6)
    data = [{
            "id": 0,
            "username": "string",
            "firstName": "string",
            "lastName": "string",
            "email": "string",
            "password": "string",
            "phone": "string",
            "userStatus": 0
          }]

    return data

@pytest.fixture()
def create_booking():
    random_data = randomaizer.RandomData()
    random_name = random_data.generate_word(6)
    creare_booking = {
        "firstname": random_name.title(),
        "lastname": random_name.title(),
        "totalprice": 111,
        "depositpaid": True,
        "bookingdates": {
            "checkin": "2018-01-01",
            "checkout": "2019-01-01"
        },
        "additionalneeds": random_name.title()
    }
    return creare_booking

@pytest.fixture()
def partial_update():
    partial_update1 = {"firstname": "James", "lastname": "Brown"}
    return partial_update1
