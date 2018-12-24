import mysql.connector
import csv

cnx = mysql.connector.connect(user='yuvansh'
                              , password='****'
                              ,host='localhost'
                              ,database='***')
cursor = cnx.cursor()

QUERY = "select * from *** limit 10');"

cursor.execute(QUERY)
result=cursor.fetchall()
c = csv.writer(open('C:/Users/User/Desktop/Second_One.csv', 'w', newline=''))
c.writerow([result[0] for result in cursor.description])
for x in result:
    c.writerow(x)