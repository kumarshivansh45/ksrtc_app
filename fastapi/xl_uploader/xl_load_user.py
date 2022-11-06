import pandas
import openpyxl
import requests
import json

# user_df = pandas.read_excel("users.xlsx")


# for index, rows in user_df.iterrows():
#     json = {
#         "name": rows.user_name,

#         "phone": rows.phone,
#         "email": rows.email,
#         "password": rows.passwd,
#         "conf_password": rows.passwd,
#         "id_type": "111",
#         "id_number": "222"
#     }

#     url = 'http://127.0.0.1:8000/users/'

#     r = requests.post(url, json=json)

#     print(r.status_code)


###############  FORMAT CHECKER  #################
allowed_fields = ["apple", "banana", "orange"]
work_book = openpyxl.load_workbook("./tests.xlsx")
active_cell = work_book.active
active_list = list(active_cell)

active_row = []
active_col = []
active_val = []
active_all = []

for x in active_list:
    for y in x:
        active_row.append(y.row)
        active_col.append(y.column)
        active_val.append(y.value)
        active_all.append([y.row, y.column, y.value])


present_fields = []
not_null_cells = []
first_non_empty_row = None
for x in active_all:
    if x[2]!=None:
        not_null_cells.append(x)
        first_non_empty_row = min(not_null_cells[0])
    for x in not_null_cells:
        if x[0]==first_non_empty_row:
            present_fields.append(x[2])
print(present_fields)
