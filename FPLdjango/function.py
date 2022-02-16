from django.db import connection
def executeInSQL(sql):
    cursor=connection.cursor()
    cursor.execute(sql)
    result=cursor.fetchall()
    cursor.close()
    return result

def insertInSQL(sql):
    cursor=connection.cursor()
    cursor.execute(sql)
    cursor.close()


def loadGameWeek():
    result=executeInSQL('select * from Gameweek;')[0][0]
    print(result)
    return result