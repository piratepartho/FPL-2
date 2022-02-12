from distutils.util import execute
from django.http import HttpResponse
from django.shortcuts import render,redirect
from django.contrib import messages
from django.db import connection
import homepage.classes
from homepage.views import gameweek as currentGameweek, insertInSQL
import userviews.functions as functions

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
            user.team.setTeamName(user_num[0][4])

            #DONE TODO: load user.team data from database
            result=executeInSQL(f'select * from PLAYER where PLAYER_ID in (select PLAYER_ID from FIELD_PLAYER where USER_ID={user.id} and GAMEWEEK={currentGameweek})')
            for p in result:
                user.team.addPlayer(p[0],p[1]+' '+p[2],p[3],p[6]/10)
            return redirect('/home/')
            #DONE

        else:
            messages.error(request,'Login Credentials Invalid')
            return redirect('/')

def logout(request):
    user.is_authenticated=False
    return redirect('/')

def homePageView(request,context=None):
    return render(request,'userHomePage.html',{'user':user})


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
            insertInSQL(sql)
            #fetching user_id
            sql=f'select USER_ID from users where user_name=\'{username}\';'
            user_id=executeInSQL(sql)[0][0]
            sql=f'insert into USER_TEAM (USER_ID,GAMEWEEK,POINTS) values ({user_id},{currentGameweek},0);'
            insertInSQL(sql)
            return redirect('/')


def myTeamView(request,user_id):
    if(user.is_authenticated) :
        context={'user_id':user_id,'user':user}
        return render(request,'myTeam/myTeam.html',context)
    else:
        return redirect('/')

def addPlayerView(request,user_id):
    if not user.is_authenticated:
        return redirect('/')
    
    context={'user_id':user_id,'user':user}
    return render(request,'myTeam/addPlayer.html',context)

def getPlayerData(request,user_id):
    requestedPosition=request.POST['position']
    result=executeInSQL(f'select * from Player where position=\'{requestedPosition}\'')
    playersDict=[]
    for p in result:
        playersDict.append({
            'player_id':p[0],'first_name':p[1],'second_name':p[2],'position':p[3],'value':p[6]/10,'points':p[5]
            })
    return render (request,'partials/selectedPlayers.html',{'players':playersDict,'user_id':user.id})

def addToUserTeam(requset,user_id,player_id):
    result=executeInSQL(f'select * from player where player_id={player_id}')
    #only added to the current user in server
    response=user.team.addPlayer(result[0][0],result[0][1]+' '+result[0][2],result[0][3],result[0][6]/10)
    
    if response=='Player Added':
        #added to the database for the current Gameweek
        insertInSQL(f'insert into FIELD_PLAYER values({user_id},{currentGameweek},{player_id});')
        return HttpResponse(response)
    else:
        return HttpResponse(response)


def deletePlayerView(request,user_id,player_id):
    if(user.team.deletePlayer(player_id)):
        insertInSQL(f'delete from FIELD_PLAYER where PLAYER_ID={player_id} and USER_ID={user_id};')
        context={'user_id':user_id,'user':user}
        return render(request,'partials/myPlayers.html',context)
    else:
        return HttpResponse("Delete Failed")