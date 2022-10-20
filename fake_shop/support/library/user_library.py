import requests as req
import json

url = "https://fakestoreapi.com/users?"
user_url = 'https://fakestoreapi.com/users'

def Get_Request(params):
    request = req.get(url, params=params)
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code


def Get_Limit_Of_Users(limit):
    params = {"limit": limit}
    response = Get_Request(params)

    return response

def Exceed_Number_Of_Limit_Users():
    params = {"limit": 999999}
    response = Get_Request(params)

    return response

def Negative_Limit_Of_Users():
    params = {"limit": -1}
    response = Get_Request(params)

    return response

def Users_In_Descending_Order():
    params = {"sort": "desc"}
    response = Get_Request(params)

    return response

def Users_In_Ascending_Order():
    params = {"sort": "asc"}
    response = Get_Request(params)

    return response

def Read_Json():
    with open('./fake_shop/support/fixtures/static/json_user.json', 'r') as user_data_file:
        json_user_data_file = json.load(user_data_file)

    return json_user_data_file

def POST_User_Static_Data(json_object):
    json_data = Read_Json()
    request = req.post(url=user_url, data=json_data[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

# def PUT_Cart_Static_Data(cart_id, json_object):
#     json_data = Read_Json()
#     request = req.put(url=f'{url_cart}/{cart_id}', data=json_data[json_object])
#     response = request.json()
#     status_code = f"\nStatus Code: {request.status_code}\n"

#     return response, status_code

# def PATCH_Cart_Static_Data(cart_id, json_object):
#     json_data = Read_Json()
#     request = req.patch(url=f'{url_cart}/{cart_id}', data=json_data[json_object])
#     response = request.json()
#     status_code = f"\nStatus Code: {request.status_code}\n"

#     return response, status_code

# def DELETE_Cart(cart_id):
#     request = req.delete(url=f'{url_cart}/{cart_id}')
#     response = request.json()
#     status_code = f"\nStatus Code: {request.status_code}\n"

#     return response, status_code