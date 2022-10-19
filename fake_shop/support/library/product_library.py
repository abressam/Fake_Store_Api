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

def Exceed_Number_Of_Limit_Products():
    params = {"limit": 999999}
    response = Get_Limit_Sort(params)

    return response

def Negative_Limit_Of_Products():
    params = {"limit": -1}
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

def Get_Product_By_ID(id):
    request = req.get(url_products + "/", params=id)
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

