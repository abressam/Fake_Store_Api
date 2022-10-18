import requests as req
import json

url_category = "https://fakestoreapi.com/products/category/"
url_limit_sort = "https://fakestoreapi.com/products?"

def Get_Request(category):
    request = req.get(url_category + category)
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def Get_Limit_Sort(params):
    request = req.get(url_limit_sort, params=params)
    response = request.json()
    status_code = f"\nStatus Code: {request.status_code}\n"

    return response, status_code

def Get_Eletronic_Category():
    category = "electronics"
    response = Get_Request(category)

    return response

def Get_Jewelery_Category():
    category = "jewelery"
    response = Get_Request(category)

    return response

def Get_Men_Clothes_Category():
    category = "men's clothing"
    response = Get_Request(category)

    return response

def Get_Women_Clothes_Category():
    category = "women's clothing"
    response = Get_Request(category)

    return response

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
