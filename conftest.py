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
          }
    ]
    return data

@pytest.fixture()
def get_login():
    data = [{
            "username": "string",
            "password": "string"
          }]
    return data

@pytest.fixture()
def create_user():
    random_data = randomaizer.RandomData()
    random_name = random_data.generate_word(6)
    data = {
            "id": 0,
            "username": "string",
            "firstName": "string",
            "lastName": "string",
            "email": "string",
            "password": "string",
            "phone": "string",
            "userStatus": 0
          }
    return data






