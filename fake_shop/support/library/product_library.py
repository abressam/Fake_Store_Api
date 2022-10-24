import requests as req
import json

url_products = "https://fakestoreapi.com/products"

def Get_Category(category):
    request = req.get(url=f'{url_products}/category/{category}')
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def Get_Limit_Sort(params):
    request = req.get(url=f'{url_products}?', params=params)
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

def Read_Product_Json():
    with open('./fake_shop/support/fixtures/static/json_product.json', 'r') as product_data_file:
        json_product_data_file = json.load(product_data_file)

    return json_product_data_file

def POST_Static_Data(json_object):
    json_data = Read_Product_Json()
    request = req.post(url=url_products, data=json_data[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def PUT_Static_Data(product_id, json_object):
    json_data = Read_Product_Json()
    request = req.put(url=f'{url_products}/{product_id}', data=json_data[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def PATCH_Static_Data(product_id, json_object):
    json_data = Read_Product_Json()
    request = req.patch(url=f'{url_products}/{product_id}', data=json_data[json_object])
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def DELETE_Product(product_id):
    request = req.delete(url=f'{url_products}/{product_id}')
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code
