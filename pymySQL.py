import pymysql
from SQLAlchemy.acount import uesrname, password, host, port

# 資料庫連線
connection = pymysql.connect(
    host=host,
    user=uesrname,
    password=password,
    database="ig_app",
    charset="utf8mb4",
    cursorclass=pymysql.cursors.DictCursor,
)

# 取得cursor物件進行CRUD
cursor = connection.cursor()

try:
    sql = "select * from `photos` limit 10"
    cursor.execute(sql)

    if cursor.rowcount > 0:
        results = cursor.fetchall()
        for i in results:
            print(i)
    else:
        print("no rowdata")

    connection.commit()
except Exception as e:
    connection.rollback()
    print("執行失敗")
    print(e)

cursor.close()

connection.close()
