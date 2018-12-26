import mysql.connector
import csv

cnx = mysql.connector.connect(user='***'
                             , password='***'
                             ,host='***'
                             ,database='***')
cursor = cnx.cursor()

QUERY = """
select * from *** limit 10;
"""
try:
    cursor.execute(QUERY)
    result=cursor.fetchall()
    c = csv.writer(open('C:/Users/User/Desktop/Office Work/26-12-2018/***.csv', 'w', newline=''))
    c.writerow([result[0] for result in cursor.description])
    for x in result:
        c.writerow(x)
    cursor.close()
    cnx.close()
except (mysql.connector.Error, mysql.connector.Warning) as e:
    print(e)
