from re import A
from django.shortcuts import render,redirect
from django.contrib import messages
from django.db import connection
from homepage.classes import User

user=User()
gameweek=1
def executeInSQL(sql):
    cursor=connection.cursor()
    cursor.execute(sql)
    result=cursor.fetchall()
    cursor.close()
    return result

# Create your views here.
def showLoginPage(request):
    # at first check if the admin is logged in the session
    if(user.is_authenticated):
        return redirect('/admin/home/')
    #if not then do the following to log him in
    if(request.method=='GET'):
        return render(request,'index.html')
    elif request.method=='POST':
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
    return render(request,'adminPage.html',{'user':user})

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
def createfixtureview(request,selectedweek):
        if(user.is_authenticated):
            sql="""select team_name from team"""
            team_list=executeInSQL(sql)
            if(request.method=='GET'):
                sql="""SELECT MATCH_ID,GAMEWEEK,T1.TEAM_ABRV HOME_TEAM,T2.TEAM_ABRV AWAY_TEAM,HOME_TEAM_SCORE,AWAY_TEAM_SCORE
                    FROM FIXTURE LEFT JOIN TEAM T1
                    ON (FIXTURE.HOME_TEAM=T1.TEAM_ID)
                    LEFT JOIN TEAM T2
                    ON (FIXTURE.AWAY_TEAM=T2.TEAM_ID)
                    WHERE GAMEWEEK="""+str(selectedweek)
                result=executeInSQL(sql)
                fixtureDict=[]
                for p in result:
                    fixtureDict.append({
                    'match_id':p[0],'gameweek':p[1],'home':p[2],'away':p[3],'home_score':p[4],'away_score':p[5]
                    })
                context={'week':selectedweek,'fixtures':fixtureDict,'teams':team_list}
                return render(request,'weekBasedFixture.html',context)
            elif (request.method=='POST'):
                home_team=request.POST['home_name']
                away_team=request.POST['away_name']
                home_score=request.POST['home_score1']
                away_score=request.POST['away_score1']
                home_id=executeInSQL('select team_id from teams where team_name=\''+str(home_team)+'\'')
                away_id=executeInSQL('select team_id from teams where team_name=\''+str(away_team)+'\'')
                if(selectedweek>=gameweek):
                    sql="""insert into FIXTURE
                            (HOME_TEAM_SCORE, AWAY_TEAM_SCORE,GAMEWEEK, HOME_TEAM, AWAY_TEAM)
                            values("""+str(home_score)+','+str(away_score)+','+str(selectedweek)+','+str(home_id)+','+str(away_id)+');'
                    executeInSQL(sql)
                sql="""SELECT MATCH_ID,GAMEWEEK,T1.TEAM_ABRV HOME_TEAM,T2.TEAM_ABRV AWAY_TEAM,HOME_TEAM_SCORE,AWAY_TEAM_SCORE
                    FROM FIXTURE LEFT JOIN TEAM T1
                    ON (FIXTURE.HOME_TEAM=T1.TEAM_ID)
                    LEFT JOIN TEAM T2
                    ON (FIXTURE.AWAY_TEAM=T2.TEAM_ID)
                    WHERE GAMEWEEK="""+str(selectedweek)
                result=executeInSQL(sql)
                fixtureDict=[]
                for p in result:
                    fixtureDict.append({
                    'match_id':p[0],'gameweek':p[1],'home':p[2],'away':p[3],'home_score':p[4],'away_score':p[5]
                    })
                context={'week':selectedweek,'fixtures':fixtureDict,'teams':team_list}
                return render(request,'weekBasedFixture.html',context)
                        
        else:
            return redirect('/admin/')

def fixtureview(request):  
    list_gw=[]
    for i in range(1,20):
        list_gw.append(i) 
    if(user.is_authenticated):
        if(request.method=='POST'):
            selectedweek=request.POST['fixture']
            return createfixtureview(request,selectedweek)
        else :
            context={'cur_gameweek':gameweek,'weeklist':list_gw,'user':user}
            return render(request,'showfixtures.html',context)
    else:
        return redirect('/admin/')
