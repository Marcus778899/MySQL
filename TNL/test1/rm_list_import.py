import pandas as pd
from mysqlinfo import *
import pymysql

df = pd.read_csv("./TNL/test1/RM_list.csv", header=0, index_col=False)
columns = df.columns.str.replace(" ", "_")
table_name = "rm_list"
create_query = f"CREATE TABLE IF NOT EXISTS {table_name} ("
for col in columns:
    if col == "Email":
        create_query += f"{col} VARCHAR(100),"
    else:
        create_query += f"{col} VARCHAR(100),"
create_query = create_query.rstrip(",") + ")"
print(create_query)


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
    cursor.execute(create_query)
    print("建立成功")
except Exception as e:
    print("Failed", e)

finally:
    connection.commit()
    cursor.close()
    connection.close()
