import pandas
import requests
import json

user_df = pandas.read_excel("users.xlsx")


for index, rows in user_df.iterrows():
    json = {
        "name": rows.user_name,
        "phone": rows.phone,
        "email": rows.email,
        "password": rows.passwd,
        "conf_password": rows.passwd,
        "id_type": "111",
        "id_number": "222"
    }

    url = 'http://127.0.0.1:8000/users/'

    r = requests.post(url, json=json)

    print(r.status_code)
