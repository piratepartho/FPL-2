from distutils.util import execute
from django.shortcuts import render,redirect
from django.contrib import messages
from django.db import connection
import homepage.classes

user=homepage.classes.User()
def executeInSQL(sql):
    cursor=connection.cursor()
    cursor.execute(sql)
    result=cursor.fetchall()
    cursor.close()
    return result
# Create your views here.

def loginView(request):
    global user
    if user.is_authenticated:
        return redirect('/home/')
    
    if(request.method=='GET'):
        return render(request,'index1.html')
    elif request.method=='POST':
        username=request.POST['username']
        password=request.POST['password']
        sql='select * from USERS where USER_NAME=\''+str(username)+'\' and PASSWORD=\''+str(password)+'\';'
        user_num=executeInSQL(sql)
        
        if (len(user_num)==1):
            user.is_authenticated=True
        if(user.is_authenticated):
            user=homepage.classes.User(user_num[0][1],user_num[0][0],True)
            return redirect('/home/')
        else:
            messages.error(request,'Login Credentials Invalid')
            return redirect('/')

def logout(request):
    user.is_authenticated=False
    return redirect('/')

def homePageView(request,context=None):
    return render(request,'userHomePage.html',{'user':user})

def userTeamView(request,user_id):
    if(user.is_authenticated) :
        context={'user_id':user_id,'user':user}
        return render(request,'viewUserteam.html',context)
    else:
        return redirect('/')

def createTeamView(request,user_id):
    if(user.is_authenticated) :
        context={'user_id':user_id,'user':user}
        return render(request,'createUserteam.html',context)
    else:
        return redirect('/')

def createUserView(request):
    if(request.method=='GET'):
        return render(request,'signupPage.html')
    elif request.method=='POST':
        username=request.POST['username']
        password=request.POST['password']
        password2=request.POST['password_2']
        email=request.POST['email']
        team_name=request.POST['team_name']
        sql='select * from USERS where USER_NAME=\''+str(username)+'\';'
        cursor=connection.cursor()
        cursor.execute(sql)
        user_num=cursor.fetchall()
        cursor.close()
        if(len(user_num)==1):
            messages.error(request,'USERNAME already exists')
            return redirect('/user/createUser/')
        if(password!=password2):
            messages.error(request,'passwords dont match')
            return redirect('/user/createUser/')
        else:
            sql="""INSERT INTO USERS
                    (USER_NAME, EMAIL, PASSWORD, TEAM_NAME) 
                    values
                    (\'"""+str(username)+'\',\''+str(email)+'\',\''+str(password)+'\',\''+str(team_name)+'\')'
            cursor=connection.cursor()
            cursor.execute(sql)
            cursor.close()
            return redirect('/')