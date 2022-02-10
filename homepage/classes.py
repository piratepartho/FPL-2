from django.db import connection


class User:
    is_authenticated=False
    username=None
    id=None
    def __init__(self,username=None,id=None,auth=False):
        self.username=username
        self.id=id
        self.is_authenticated=auth
    def authenticate(self):
        if self.username is None or self.password is None:
            pass
        cursor=connection.cursor()
        sql=('SELECT * from users where user_name=%s and password=%s' %(self.username,self.password))
        cursor.execute(sql)
        result=cursor.fetchall()
        cursor.close()
        if result:
            self.is_authenticated=True


    