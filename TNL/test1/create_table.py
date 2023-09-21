import pandas as pd
from mysqlinfo import username, password, host

import pymysql

table_list = ['Survey_22Oct', 'Survey_22Dec', 'Survey_23Jan']

create_query = []

for i in table_list:
    df = pd.read_csv(f"./TNL/test1/{i}.csv", header=0, index_col=False,)
    df.date_created = pd.to_datetime(
        df.date_created, format="%m/%d/%Y %I:%M:%S %p")
    df.date_modified = pd.to_datetime(
        df.date_modified, format="%m/%d/%Y %I:%M:%S %p")
    columns = df.columns
    table_name = i
    query = f"CREATE TABLE IF NOT EXISTS {table_name} ("
    for col in columns:
        if col == "respondent_id" or col == "collector_id":
            query += f"{col} float,"
        else:
            query += f"{col} varchar(100),"
    query = query.rstrip(",") + ")"
    create_query.append(query)
for index, text in enumerate(create_query):
    print(f'{table_list[index]}的表單')
    try:
        connection = pymysql.connect(
            host=host,
            user=username,
            password=password,
            db="tnl",
            charset="utf8mb4",
            cursorclass=pymysql.cursors.DictCursor,
        )
        cursor = connection.cursor()
        cursor.execute(text)
        print("創建成功")

    except Exception as e:
        connection.rollback()
        print("創建失敗")
        print(e)
    connection.commit()
    cursor.close()
    connection.close()
