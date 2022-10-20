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

