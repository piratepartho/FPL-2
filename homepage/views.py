from unittest import result
from django.http import HttpResponse
from django.shortcuts import render,redirect
from django.contrib import messages
from django.db import connection
from FPLdjango.function import loadGameWeek
from homepage.classes import User

user=User()
gameweek=1
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

# Create your views here.
def showLoginPage(request):
    # at first check if the admin is logged in the session
    if(user.is_authenticated):
        return redirect('/admin/home/')
    #if not then do the following to log him in
    if(request.method=='GET'):
        return render(request,'index.html')
    elif request.method=='POST':
        global gameweek
        gameweek=loadGameWeek()
        username=request.POST['username']
        password=request.POST['password']
        if(username=='admin' and password=='1234'):
            user.is_authenticated=True
            return redirect('/admin/home/')
        else:
            messages.error(request,'Login Credentials Invalid')
            return redirect('/admin/')

def doLogout(request):
    user.is_authenticated=False
    return redirect('/admin/')

def showAdminHomePage(request):
    return render(request,'adminPage.html',{'user':user,'gw':gameweek})

def showTeamEdit(request,team_id):
    cursor=connection.cursor()
    sql='select * from TEAM where team_id='+str(team_id)
    cursor.execute(sql)
    team=cursor.fetchall()

    sql='select * from player where team_id='+str(team_id)
    cursor.execute(sql)
    playersInTeam=cursor.fetchall()

    cursor.close()

    playersDict=[]
    for p in playersInTeam:
        playersDict.append({
            'player_id':p[0],'first_name':p[1],'second_name':p[2],'position':p[3],'value':p[6]/10,'points':p[5]
            })
    
    if(request.method=='POST'):
        team_name=request.POST['team_name']
        team_abbvr=request.POST['team_abbvr']
        
        if(team_name!=team[0][2]): #team_name changed
            executeInSQL('update Team set team_name=\'' +str(team_name)+ '\' where team_id='+str(team_id)+';')
        if(team_abbvr!=team[0][1]):
            executeInSQL('update Team set team_abrv=\'' +str(team_abbvr)+ '\' where team_id='+str(team_id)+';')
        for player in playersDict:
            if player['first_name']!=request.POST[str(player['player_id'])+'_first_name']:
                sql='update player set first_name=\''+request.POST[str(player['player_id'])+'_first_name']+'\' where player_id='+str(player['player_id'])
                executeInSQL(sql)
                player['first_name']=request.POST[str(player['player_id'])+'_first_name']
            if player['second_name']!=request.POST[str(player['player_id'])+'_second_name']:   
                sql='update player set last_name=\''+request.POST[str(player['player_id'])+'_second_name']+'\' where player_id='+str(player['player_id'])
                executeInSQL(sql)
                player['second_name']=request.POST[str(player['player_id'])+'_second_name']
            if str(player['player_id'])+'_position' in request.POST.keys() and player['position']!=request.POST[str(player['player_id'])+'_position']:
                print(player['player_id'])
                player['position']=request.POST[str(player['player_id'])+'_position']
                sql='update player set position=\''+player['position']+'\' where player_id='+str(player['player_id'])
                executeInSQL(sql)

        context={'team_name':team_name,'team_abvr':team_abbvr,'players':playersDict,'user':user}
        return render(request,'editTeam.html',context)

    else:
        context={'team_name':team[0][2],'team_abvr':team[0][1],'players':playersDict,'user':user}
        return render(request,'editTeam.html',context)


def show_teams(request):
    cursor=connection.cursor()
    sql='select * from team'
    cursor.execute(sql)
    result=cursor.fetchall()
    cursor.close()
    
    dict=[]
    
    for a in result:
        team_id=a[0]
        team_abbvr=a[2]
        team_name=a[1]
        dict.append({'id':team_id,'abbvr':team_abbvr,'name':team_name})
    
    return render(request,'show_teams.html',{'all_teams':dict,'user':user})

def fixtureview(request):  
    list_gw=[]
    for i in range(1,20):
        list_gw.append(i) 
    
    if(user.is_authenticated):

        if(request.method=='POST'):
            selectedWeek=0
            selectedWeek=request.POST['fixture']
            cursor=connection.cursor()
            sql="""SELECT MATCH_ID,GAMEWEEK,T1.TEAM_ABRV HOME_TEAM,T2.TEAM_ABRV AWAY_TEAM,HOME_TEAM_SCORE,AWAY_TEAM_SCORE
                FROM FIXTURE LEFT JOIN TEAM T1
                ON (FIXTURE.HOME_TEAM=T1.TEAM_ID)
                LEFT JOIN TEAM T2
                ON (FIXTURE.AWAY_TEAM=T2.TEAM_ID)
                WHERE GAMEWEEK="""+str(selectedWeek)
            result=executeInSQL(sql)
            fixtureDict=[]
            for p in result:
                fixtureDict.append({
                'match_id':p[0],'gameweek':p[1],'home':p[2],'away':p[3],'home_score':p[4],'away_score':p[5]
                })
            context={'week':selectedWeek,'fixtures':fixtureDict}
            return render(request,'weekBasedFixture.html',context)


        else :
            context={'cur_gameweek':gameweek,'weeklist':list_gw,'user':user}
            return render(request,'showfixtures.html',context)
    
    
    else:
        return redirect('/admin/')

def getFixtureView(request):
    selectedWeek = request.POST['fixture']
    sql="""SELECT MATCH_ID,GAMEWEEK,T1.TEAM_ABRV HOME_TEAM,T2.TEAM_ABRV AWAY_TEAM,HOME_TEAM_SCORE,AWAY_TEAM_SCORE
                FROM FIXTURE LEFT JOIN TEAM T1
                ON (FIXTURE.HOME_TEAM=T1.TEAM_ID)
                LEFT JOIN TEAM T2
                ON (FIXTURE.AWAY_TEAM=T2.TEAM_ID)
                WHERE GAMEWEEK="""+str(selectedWeek)
    result=executeInSQL(sql)
    dict=[]
    for r in result:
        dict.append({'match_id':r[0],'gameweek':r[1],'home':r[2],'away':r[3],'home_score':r[4],'away_score':r[5]})
    context={'fixtures':dict}
    return render(request,'weekBasedFixture.html',context)


def addFixture(request):
    if request.method=='GET':
        sql='select Team_Name from Team'
        team_list=[]
        for team in executeInSQL(sql):
            team_list.append(team[0])
        context={'weeklist':range(gameweek,20),'teams':team_list}
        return render(request,'addFixture.html',context)
    elif request.method=='POST':
        gw=request.POST['fixture']
        homeTeam=request.POST['homeTeam']
        awayTeam=request.POST['awayTeam']
        homeTeamID=executeInSQL( f"SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME='{homeTeam}' ")[0][0]
        awayTeamID=executeInSQL(f"SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME='{awayTeam}' ") [0][0]
        sql= f"""INSERT INTO FIXTURE
                (GAMEWEEK, HOME_TEAM, AWAY_TEAM)
                VALUES
                ({gw},{homeTeamID},{awayTeamID});"""
        insertInSQL(sql)
        return redirect( '/admin/addFixture/')

def addStatFixtureView(request):
    sql="""SELECT MATCH_ID,GAMEWEEK,T1.TEAM_ABRV HOME_TEAM,T2.TEAM_ABRV AWAY_TEAM,HOME_TEAM_SCORE,AWAY_TEAM_SCORE
                FROM FIXTURE LEFT JOIN TEAM T1
                ON (FIXTURE.HOME_TEAM=T1.TEAM_ID)
                LEFT JOIN TEAM T2
                ON (FIXTURE.AWAY_TEAM=T2.TEAM_ID)
                WHERE GAMEWEEK="""+str(gameweek)
    result=executeInSQL(sql)
    dict=[]
    for r in result:
        dict.append({'match_id':r[0],'gameweek':r[1],'home':r[2],'away':r[3],'home_score':r[4],'away_score':r[5]})
    context={'fixtures':dict}
    return render(request,'statFixtureSelect.html',context)
    
def addStatScoreView(request,match_id):
    homeTeamName=executeInSQL(f'select TEAM_NAME from TEAM where TEAM_ID=(select HOME_TEAM from FIXTURE where MATCH_ID={match_id});')[0][0]
    awayTeamName=executeInSQL(f'select TEAM_NAME from TEAM where TEAM_ID=(select AWAY_TEAM from FIXTURE where MATCH_ID={match_id});')[0][0]

    context={'match_id':match_id,'homeTeamName':homeTeamName,'awayTeamName':awayTeamName}
    return render(request,'addStat/score.html',context)

def addStatSaveScoreView(request,match_id):
    homeScore=request.POST['homeScore']
    awayScore=request.POST['awayScore']
    insertInSQL(f'update FIXTURE set HOME_TEAM_SCORE={homeScore}, AWAY_TEAM_SCORE={awayScore} where MATCH_ID={match_id};')
    return redirect('../../homePlayers/')

def addStatHomePlayersView(request,match_id):

    homeTeamID=executeInSQL(f'select home_team,away_team from fixture where match_id={match_id}')[0][0]
    result=executeInSQL(f'select * from PLAYER where TEAM_ID={homeTeamID}')
    
    playersDict=[]
    for p in result:
        playersDict.append({
            'player_id':p[0],'first_name':p[1],'second_name':p[2],'position':p[3],'value':p[6]/10,'points':p[5]
            })

    context={'players':playersDict}
    return render(request,'addStat/homePlayers.html',context)

def addStatHomePlayersSaveView(request,match_id):
    homeTeamID=executeInSQL(f'select home_team,away_team from fixture where match_id={match_id}')[0][0]
    result=executeInSQL(f'select * from PLAYER where TEAM_ID={homeTeamID}')

    for p in result:
        id=p[0]
        
        minutes=request.POST[f'minutes{id}']
        gs=request.POST[f'goalScored{id}']
        ass=request.POST[f'assist{id}']
        own=request.POST[f'ownGoal{id}']
        penMiss=request.POST[f'penMiss{id}']
        yellow=request.POST[f'yellow{id}']
        red=request.POST[f'red{id}']
        penSave=request.POST[f'penSaves{id}']
        save=request.POST[f'saves{id}']
        result=executeInSQL(f'select * from PLAYER_STAT where PLAYER_ID={id} and MATCH_ID={match_id};')
        if len(result) is not 0:
            insertInSQL(f'delete from PLAYER_STAT where PLAYER_ID={id} and MATCH_ID={match_id};')
        insertInSQL(f"""INSERT INTO PLAYER_STAT
                    (MATCH_ID, GAMEWEEK, MIN_PLAYED, GOALS_SCORED, ASSIST, OWN_GOAL, PENALTIES_SAVED, PENALTIES_MISSED, YELLOW_CARDS, RED_CARDS, SAVES,  PLAYER_ID) 
                    VALUES
                    ({match_id},{gameweek},{minutes},{gs},{ass},{own},{penSave},{penMiss},{yellow},{red},{save},{id})"""
                )

    return redirect('../../awayPlayers/')

def addStatAwayPlayersView(request,match_id):
    awayTeamID=executeInSQL(f'select away_team,home_team from fixture where match_id={match_id}')[0][0]
    result=executeInSQL(f'select * from PLAYER where TEAM_ID={awayTeamID}')
    
    playersDict=[]
    for p in result:
        playersDict.append({
            'player_id':p[0],'first_name':p[1],'second_name':p[2],'position':p[3],'value':p[6]/10,'points':p[5]
            })

    context={'players':playersDict}
    return render(request,'addStat/awayPlayers.html',context)

def addStatAwayPlayersSaveView(request,match_id):
    awayTeamID=executeInSQL(f'select away_team,home_team from fixture where match_id={match_id}')[0][0]
    result=executeInSQL(f'select * from PLAYER where TEAM_ID={awayTeamID}')

    for p in result:
        id=p[0]
        
        minutes=request.POST[f'minutes{id}']
        gs=request.POST[f'goalScored{id}']
        ass=request.POST[f'assist{id}']
        own=request.POST[f'ownGoal{id}']
        penMiss=request.POST[f'penMiss{id}']
        yellow=request.POST[f'yellow{id}']
        red=request.POST[f'red{id}']
        penSave=request.POST[f'penSaves{id}']
        save=request.POST[f'saves{id}']
        result=executeInSQL(f'select * from PLAYER_STAT where PLAYER_ID={id} and MATCH_ID={match_id};')
        if len(result) is not 0:
            insertInSQL(f'delete from PLAYER_STAT where PLAYER_ID={id} and MATCH_ID={match_id};')
        insertInSQL(f"""INSERT INTO PLAYER_STAT
                    (MATCH_ID, GAMEWEEK, MIN_PLAYED, GOALS_SCORED, ASSIST, OWN_GOAL, PENALTIES_SAVED, PENALTIES_MISSED, YELLOW_CARDS, RED_CARDS, SAVES,  PLAYER_ID) 
                    VALUES
                    ({match_id},{gameweek},{minutes},{gs},{ass},{own},{penSave},{penMiss},{yellow},{red},{save},{id})"""
                )

    return redirect('/admin/home/')

def increaseGW(request):
    global gameweek
    insertInSQL(f'call END_GAMEWEEK({gameweek})')
    gameweek=loadGameWeek()
    return redirect('adminHome')