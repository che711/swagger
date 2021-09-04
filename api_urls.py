BASE_URL = "https://petstore.swagger.io/v2"

class User():
    """Urls in user`s group"""
    USER = BASE_URL + "/user/createWithList"
    USERNAME = BASE_URL + "/user/string"
    USERLOGIN = BASE_URL + "/user/login"
    USERLOGOUT = BASE_URL + "/user/logout"
    USERS_LIST = BASE_URL + "/user/createWithArray"
    CREATE_USER = BASE_URL + "/user"

class Store():
    """Urls in group in store"""
    pass

class Pet():
    """Urls in group in pet"""
    pass

