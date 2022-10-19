import requests as req
import json

url_category = "https://fakestoreapi.com/products/category/"
url_products = "https://fakestoreapi.com/products"

def Get_Category(category):
    request = req.get(url_category + category)
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def Get_Limit_Sort(params):
    request = req.get(url_products + "?", params=params)
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def Get_Limit_Of_Products(limit):
    params = {"limit": limit}
    response = Get_Limit_Sort(params)

    return response

def Products_In_Descending_Order():
    params = {"sort": "desc"}
    response = Get_Limit_Sort(params)

    return response

def Products_In_Ascending_Order():
    params = {"sort": "asc"}
    response = Get_Limit_Sort(params)

    return response

def Read_Json(json_object):
    with open('./fake_shop/support/fixtures/static/json_product.json', 'r') as product_data_file:
        json_product_data_file = json.load(product_data_file)

    request = req.post(url='https://fakestoreapi.com/products', data=json_product_data_file[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def Read_Json_PUT(json_object):
    with open('./fake_shop/support/fixtures/static/json_product.json', 'r') as product_data_file:
        json_product_data_file = json.load(product_data_file)

    request = req.put(url='https://fakestoreapi.com/products/5', data=json_product_data_file[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code