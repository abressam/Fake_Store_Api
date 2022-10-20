import requests as req
import json

user_url = 'https://fakestoreapi.com/users'

def GET_With_Params(params):
    request = req.get(url=f'{user_url}?', params=params)
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def GET_Limit_User(limit):
    params = {'limit': limit}
    response = GET_With_Params(params)

    return response

def GET_Order_User(order):
    params = {'sort': order}
    response = GET_With_Params(params)

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

def DELETE_User(user_id):
    request = req.delete(url=f'{user_url}/{user_id}')
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code