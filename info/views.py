from django.shortcuts import render
from django.db import connection

from FPLdjango.function import executeInSQL
from homepage.classes import Stat

# Create your views here.
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
    
    return render(request,'show_teams.html',{'all_teams':dict})


def show_team_info(request,team_id):
    cursor=connection.cursor()
    sql='select * from PLAYER where TEAM_ID= '+str(team_id)
    cursor.execute(sql)
    players=cursor.fetchall()
    cursor.close()
    
    dict=[]
    for p in players:
        dict.append({
            'player_id':p[0],'first_name':p[1],'second_name':p[2],'position':p[3],'value':p[6]/10,'points':p[5]
            })
    
    
    return render(request,'team_info.html',{'all_players':dict})

def showPlayer(request,p_id):
    player=executeInSQL(f'select FIRST_NAME,LAST_NAME,POSITION,TOTAL_POINTS,COST from PLAYER where PLAYER_ID={p_id};')[0]
    stat=executeInSQL(f'select GAMEWEEK,POINTS,MIN_PLAYED,GOALS_SCORED,GOALS_CONCEDED,ASSIST,OWN_GOAL,YELLOW_CARDS,RED_CARDS,SAVES,PENALTIES_SAVED,PENALTIES_MISSED from PLAYER_STAT where PLAYER_ID={p_id};')
    statList=[]
    for row in stat:
        newStat=Stat(row[0],row[1],row[2],row[3],row[4],row[5],row[6],row[7],row[8],row[9],row[10],row[11])
        statList.append(newStat)
    context={'name':f'{player[0]} {player[1]}','position':player[2],'totalPoint':player[3],'value':player[4]/10,'statList':statList}
    return render(request,'showPlayerInfo.html',context)