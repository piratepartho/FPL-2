from urllib import response
from wsgiref.util import request_uri
from django.http import HttpResponse
from django.shortcuts import render,redirect
from django.contrib import messages
from django.db import connection
from FPLdjango.function import loadGameWeek
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
    global currentGameweek
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
            captainID=executeInSQL(f'select CAPTAIN from USER_TEAM where USER_ID={user.id} and GAMEWEEK={currentGameweek};')[0][0]
            for p in result:
                if(p[0]!=captainID):
                    user.team.addPlayer(p[0],p[1]+' '+p[2],p[3],p[6]/10,False)
                elif(p[0]==captainID):
                    user.team.addPlayer(p[0],p[1]+' '+p[2],p[3],p[6]/10,True)
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
        teamEditStatus=executeInSQL('select TEAM_EDIT_STATUS from GAMEWEEK;')[0][0]
        history=executeInSQL(f'select GAMEWEEK,POINTS from USER_TEAM where USER_ID={user_id} and GAMEWEEK<>{currentGameweek};')
        history=homepage.classes.userHistory(history)
        context={'user_id':user_id,'user':user,'teamEditStatus':teamEditStatus,'history':history}
        return render(request,'myTeam/myTeam.html',context)
    else:
        return redirect('/')

def addPlayerView(request,user_id):
    if not user.is_authenticated:
        return redirect('/')
    result=executeInSQL('select TEAM_ID,team_name from TEAM;')
    teams=[]
    for t in result:
        teams.append({'id':t[0],'team_name':t[1]})
    
    remaining=70-user.team.total_cost
    remaining="{:.2f}".format(remaining)
    
    context={'user_id':user_id,'user':user,'teams':teams,'remainingMoney':str(remaining)}
    return render(request,'myTeam/addPlayer.html',context)

def getPlayerData(request,user_id):
    requestedPosition=request.POST['position']
    requestedTeam=request.POST['teamID']
    # sql=f'select * from Player where team_id={requestedTeam} and position=\'{requestedPosition}\''
    sql=functions.makeSearchSQL(requestedTeam,requestedPosition)
    result=executeInSQL(sql)
    playersDict=[]
    for p in result:
        playersDict.append({
            'player_id':p[0],'first_name':p[1],'second_name':p[2],'position':p[3],'value':p[6]/10,'points':p[5]
            })
    remaining=70-user.team.total_cost
    remaining="{:.2f}".format(remaining)
    return render (request,'partials/selectedPlayers.html',{'players':playersDict,'user_id':user.id,'remainingMoney':str(remaining)})

def addToUserTeam(requset,user_id,player_id):
    result=executeInSQL(f'select * from player where player_id={player_id}')
    #only added to the current user in server
    response=user.team.addPlayer(result[0][0],result[0][1]+' '+result[0][2],result[0][3],result[0][6]/10,False)
    
    if response=='Player Added':
        #added to the database for the current Gameweek
        insertInSQL(f'insert into FIELD_PLAYER values({user_id},{currentGameweek},{player_id});')
        response=HttpResponse(response)
        response.headers['HX-Trigger']="updateCost"
        return response
    else:
        return HttpResponse(response)


def deletePlayerView(request,user_id,player_id):
    if(user.team.deletePlayer(player_id)):
        insertInSQL(f'delete from FIELD_PLAYER where PLAYER_ID={player_id} and USER_ID={user_id};')
        teamEditStatus=executeInSQL('select TEAM_EDIT_STATUS from GAMEWEEK;')[0][0]
        context={'user_id':user_id,'user':user,'teamEditStatus':teamEditStatus}
        return render(request,'partials/myPlayers.html',context)
    else:
        return HttpResponse("Delete Failed")


#League Views
def leagueView(request,user_id):
    #TODO: show league points also
    result=executeInSQL(f'select league_code,LEAGUE_NAME from LEAGUE where league_code in (select LEAGUE_CODE from LEAGUE_TEAMS where USER_ID={user_id});')
    leagueList=[]
    for league in result:
        leagueList.append({'code':league[0],'name':league[1]})
    joinableLeague=[]
    result=executeInSQL(f'select * from LEAGUE where LEAGUE_CODE not in (select league_code from LEAGUE_TEAMS where user_id={user_id});')
    for league in result:
        joinableLeague.append({'code':league[0],'name':league[1]})
    context={'user_id':user_id,'user':user,'userLeague':leagueList,'joinableLeague':joinableLeague}
    return render(request,'userLeague.html',context)

def createLeagueView(request):
    user_id=request.POST['user_id']
    leagueName=request.POST['leagueName']
    request=executeInSQL(f'select count(*) from LEAGUE where LEAGUE_NAME=\'{leagueName}\';')[0][0]
    if request==0:
        insertInSQL(f'insert into LEAGUE (LEAGUE_NAME,ADMIN) values(\'{leagueName}\',{user_id});')
        response= HttpResponse(f'<div class="text text-success">{leagueName} created</div>')
        response.headers['HX-Trigger']="newLeague"
        return response
    else:
        return HttpResponse(f'<div class="text text-danger">A league already exists with {leagueName}</div>')

def showUserLeague(request,user_id):
    result=executeInSQL(f'select league_code,LEAGUE_NAME from LEAGUE where league_code in (select LEAGUE_CODE from LEAGUE_TEAMS where USER_ID={user_id});')
    leagueList=[]
    for league in result:
        leagueList.append({'code':league[0],'name':league[1]})
    joinableLeague=[]
    result=executeInSQL(f'select * from LEAGUE where LEAGUE_CODE not in (select league_code from LEAGUE_TEAMS where user_id={user_id});')
    for league in result:
        joinableLeague.append({'code':league[0],'name':league[1]})
    
    return render(request,'partials/leagueList.html',{'userLeague':leagueList,'user':user,'user_id':user_id,'joinableLeague':joinableLeague})


def joinLeague(request,user_id,leagueCode):
    insertInSQL(f'insert into league_teams (league_code, user_id) values ({leagueCode},{user_id});')
    response=HttpResponse(None)
    response.headers['HX-Trigger']="newLeague"
    return response

#particular league info view
def showLeague(request,user_id,leagueCode):
    leagueName=executeInSQL(f'select league_name from LEAGUE where LEAGUE_CODE={leagueCode};')[0][0]
    result=executeInSQL(f'select USER_ID from LEAGUE_TEAMS where LEAGUE_CODE={leagueCode};')
    users=[]
    for i in result:
        id=i[0]
        teamName=executeInSQL(f'select team_name from users where USER_ID={id};')[0][0]
        teamPoint=executeInSQL(f'select GET_LEAGUE_TEAMS_POINTS({leagueCode},{id}) from dual;')[0][0]
        users.append({'userID':id,'teamName':teamName,'teamPoint':teamPoint})

    users.sort(key=functions.sortOnPoint)

    rank=1
    for user in users:
        user['rank']=rank
        rank+=1

    adminID=executeInSQL(f'select admin from LEAGUE where LEAGUE_CODE={leagueCode};')[0][0]
    context={'usersList':users,'leagueName':leagueName,'user_id':user_id,'leagueCode':leagueCode,'adminID':adminID}

    return render(request,'showLeague.html',context)

#leaving a league
def leaveLeague(request,user_id,leagueCode):
    #first check user_id=admin
    adminID=executeInSQL(f'select admin from LEAGUE where LEAGUE_CODE={leagueCode};')[0][0]
    #if true destroy the whole League
    if(user_id==adminID):
        insertInSQL(f'delete from league where LEAGUE_CODE={leagueCode};')
    #else leave the hell out
    else:
        insertInSQL(f'delete from LEAGUE_TEAMS where LEAGUE_CODE={leagueCode} and user_id={user_id};')

    return redirect('userLeague',user_id)

def captainView(request,user_id):
    playerID=request.POST['captainID']
    insertInSQL(f'update USER_TEAM set CAPTAIN={playerID} where GAMEWEEK={currentGameweek} and USER_ID={user_id};')
    for p in user.team.player:
        if p.id==int(playerID):
            print('hello')
            p.is_captain=True
        else:
            p.is_captain=False
    teamEditStatus=executeInSQL('select TEAM_EDIT_STATUS from GAMEWEEK;')[0][0]
    context={'user':user,'user_id':user_id,'teamEditStatus':teamEditStatus}
    return render(request,'partials/myPlayers.html',context)
    
def getCost(request,user_id):
    remaining=70-user.team.total_cost
    remaining="{:.2f}".format(remaining)
    return HttpResponse('Cost Remaining: '+str(remaining))

#show User's Past GW info with player and point data
def getGWData(request,user_id,gw):
    point=executeInSQL(f'select POINTS from USER_TEAM where USER_ID={user_id} and GAMEWEEK={gw};')[0][0]
    captain=executeInSQL(f'select FIRST_NAME||\' \'||LAST_NAME from PLAYER where PLAYER_ID=(select CAPTAIN from USER_TEAM where USER_ID={user_id} and GAMEWEEK={gw});')[0][0]
    result=executeInSQL(f'select PLAYER_ID,FIRST_NAME||\' \'||LAST_NAME,POSITION,(select POINTS from PLAYER_STAT where GAMEWEEK={gw} and PLAYER_STAT.PLAYER_ID=PLAYER.PLAYER_ID) from PLAYER where PLAYER_ID IN (select PLAYER_ID from FIELD_PLAYER where GAMEWEEK={gw} and USER_ID={user_id});')
    result=homepage.classes.GWHistory(result)

    context={'gw':gw,'point':point,'captain':captain,'history':result}
    return render(request,'myTeam/gwHistory.html',context)