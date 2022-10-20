import requests as req
import json

url_cart= "https://fakestoreapi.com/carts"

def GET_Cart_ID(cart_id):
    request = req.get(url=f'{url_cart}/{cart_id}')
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def GET_With_Params(params):
    request = req.get(url=f'{url_cart}?', params=params)
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def GET_Limit(limit):
    params = {'limit': limit}
    response = GET_With_Params(params)

    return response

def GET_Order(order):
    params = {'sort': order}
    response = GET_With_Params(params)

    return response

def GET_Range_Date(start_year, start_month, start_day, end_year, end_month, end_day):
    request = req.get(url=f'{url_cart}/startdate={start_year}-{start_month}-{start_day}&enddate={end_year}-{end_month}-{end_day}')
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def GET_User_Cart(user_id):
    request = req.get(url=f'{url_cart}/user/{user_id}')
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def Read_Json():
    with open('./fake_shop/support/fixtures/static/json_cart.json', 'r') as cart_data_file:
        json_cart_data_file = json.load(cart_data_file)

    return json_cart_data_file

def POST_Cart_Static_Data(json_object):
    json_data = Read_Json()
    request = req.post(url=url_cart, data=json_data[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def PUT_Cart_Static_Data(cart_id, json_object):
    json_data = Read_Json()
    request = req.put(url=f'{url_cart}/{cart_id}', data=json_data[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def PATCH_Cart_Static_Data(cart_id, json_object):
    json_data = Read_Json()
    request = req.patch(url=f'{url_cart}/{cart_id}', data=json_data[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def DELETE_Cart(cart_id):
    request = req.delete(url=f'{url_cart}/{cart_id}')
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code