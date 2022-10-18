import requests as req
import json

url = "https://fakestoreapi.com/users?"

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