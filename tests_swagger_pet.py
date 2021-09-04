import requests
import api_urls
from headers import HEADERS
from json import dumps

#  pytest -s -vv tests_swagger_pet.py

def test_new_pet(pet_to_store):
    '''Add new pet to the store'''
    pet_to_store = requests.post(url=api_urls.Pet.PET_TO_STORE, headers=HEADERS, data=dumps(pet_to_store))
    assert pet_to_store.status_code == 200, 'Falling'

def test_update_pet(pet_to_store):
    '''Update an existing pet'''
    pet_update = requests.put(url=api_urls.Pet.PET_TO_STORE, headers=HEADERS, data=dumps(pet_to_store))
    assert pet_update.status_code == 200, 'Falling'

def test_find_pet():
    '''Finds pet by status'''
    find_pet = requests.get(url=api_urls.Pet.FIND_PET_BY_STATUS)
    assert find_pet.status_code == 200, 'Falling'

def test_find_pet_id():
    '''Finds pet by ID'''
    find_pet_by_id = requests.get(url=api_urls.Pet.FIND_PET_BY_ID)
    # print("\n\t", find_pet_by_id.url)
    assert find_pet_by_id.status_code == 200, 'Falling'





