import mysql.connector
dataBase = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="mysql",
)

cursorObject = dataBase.cursor()
cursorObject.execute("CREATE DATABASE codextra")

print("All Done")