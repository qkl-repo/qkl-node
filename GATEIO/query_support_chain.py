# coding: utf-8
import requests

host = "https://api.gateio.ws"
prefix = "/api/v4"
headers = {'Accept': 'application/json', 'Content-Type': 'application/json'}

url = '/wallet/currency_chains'
query_param = 'currency=GT'
r = requests.request('GET', host + prefix + url + "?" + query_param, headers=headers)
print(r.json())

